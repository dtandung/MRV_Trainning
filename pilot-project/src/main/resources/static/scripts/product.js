const TEMPLATE_PRODUCT_INFO_ROW = "<tr>"
	+ "<td class='text-center'><%= productId %></td>"
	+ "<td class='text-center'><%= productName %></td>"
	+ "<td class='text-center'><%= quantity %></td>"
	+ "<td class='text-center price'><%= price %></td>"
	+ "<td class='text-center'><%= brand.brandName %></td>"
	+ "<td class='text-center'><%= saleDate %></td>"
	+ "<td class='text-center'><a href='<%= image %>' data-toggle='lightbox' data-max-width='1000'><img class='img-fluid' src='<%= image %>'></td>"
	+ "<td class='action-btns text-center'>"
	+ "<a class='edit-btn btn-sm btn-primary' data-id='<%= productId %>'><i class='fas fa-edit text-white'></i></a> | <a class='delete-btn btn-sm btn-danger' data-name='<%= productName %>' data-id='<%= productId %>'><i class='fas fa-trash-alt text-white'></i></a>"
	+ "</td>"
	+ "</tr>";

const TEMPLATE_BRAND_NAME_SELECT = "<option value='<%= brandId%>'><%= brandName%></option>";
var Product = (function() {
	return function() {
		var _self = this;
		_self.currentPageNumber = 1;
		_self.$productInfoForm = $("#productInfoForm");
		_self.$productInfoModal = $("#productInfoModal");
		_self.$productInfoTable = $("#productInfoTable");
		_self.$brandName = $("#brand");
		_self.$productInfoTableBody = _self.$productInfoTable.find("tbody");
		_self.$paginator = $("ul.pagination");

		_self.searchProducts = function() { // Search Brand by keyword
			let searchData = {
				keyword: $("#keyword").val(),
				priceFrom: $("#priceFrom").val(),
				priceTo: $("#priceTo").val(),
				currentPage: Number(_self.currentPageNumber)
			}

			console.log(JSON.stringify(searchData));

			$.ajax({
				url: "/product/api/search",
				type: 'POST',
				dataType: 'json',
				data: JSON.stringify(searchData),
				contentType: 'application/json',
				success: function(responseData) {
					if (responseData.responseCode == 100) {
						_self.drawProductTableContent(responseData.data);
						$(".price").each(function(key, value) {
							$(value).text(Number($(value).text()).toLocaleString('it-IT', {
								style: 'currency', currency: 'VND'
							}));
						});
					}
				}
			});
		};

		_self.drawProductTableContent = function(data) {
			_self.$brandName.empty();
			_self.$productInfoTableBody.empty();
			_self.$paginator.empty();

			// Render table content
			$.each(data.productsList, function(key, value) {
				_self.$productInfoTableBody.append(_self.templateList.productInfoRowTemplate(value));
			});


			//Render list Brand name
			$.each(data.brandList, function(key, value) {
				_self.$brandName.append(_self.templateList.brandNameTemplate(value));
			});

			// Render paginator
			let paginationInfo = data.paginationInfo;
			if (paginationInfo.pageNumberList.length > 0) {
				_self.$paginator.append(_self.templateList.paginatorTemplate(paginationInfo));
			}
		};

		_self.add = function() { // Show add brand modal
			$('#addProductInfoModal').on('click', function(e) {
				resetFormModal(_self.$productInfoForm);
				_self.$brandName.append("<option value='' selected>--Select Brand Name--</option>")
				showModalWithCustomizedTitle(_self.$productInfoModal, "Add Product");
				$('#productId').closest(".form-group").addClass("d-none");
				$('.file-upload-content').hide();
				$('.image-upload-wrap').show();
				$('.file-upload-image').attr('src', e.target.result);
				$("#productLogo .required-mask").removeClass("d-none");

			});
		};

		_self.edit = function() { // Show update brand modal
			_self.$productInfoTable.on('click', '.edit-btn', function() {
				$("#productLogo .required-mask").addClass("d-none");

				// Get brand info by brand ID
				$.ajax({
					url: "/product/api/findById?id=" + $(this).data("id"),
					type: 'GET',
					dataType: 'json',
					contentType: 'application/json',
					success: function(responseData) {
						if (responseData.responseCode == 100) {
							var productInfo = responseData.data;
							resetFormModal(_self.$productInfoForm);
							showModalWithCustomizedTitle(_self.$productInfoModal, "Edit Product");

							$('#productId').val(productInfo.productId);
							$('#productName').val(productInfo.productName);
							$('#quantity').val(productInfo.quantity);
							$('#price').val(productInfo.price);
							$('#brand').val(productInfo.brand.brandId);
							$('#saleDate').val(productInfo.saleDate);
							$('#imageProduct').val(productInfo.image);
							$('#description').val(productInfo.description);
							var productLogo = productInfo.image;
							if (productLogo == null || productLogo == "") {
								productLogo = DEFAULT_IMAGE_PREVIEW;
							}
							$('.file-upload-content').show();
							$('.image-upload-wrap').hide();
							$('.file-upload-image').attr('src', productLogo);
							$("#imageProduct").val(productLogo);
							$('#productId').closest(".form-group").removeClass("d-none");
						}
					}
				});
			});
		};

		_self.save = function() { // Submit add and update product

			$('#saveProductBtn').on('click', function(event) {

				event.preventDefault();
				var formData = new FormData(_self.$productInfoForm[0]);
				var productId = formData.get("productId");
				var isAddAction = productId == undefined || productId == "";

				_self.$productInfoForm.validate({
					ignore: [],
					rules: {
						productName: {
							required: true,
							maxlength: 100
						},
						imageFiles: {
							required: isAddAction,
						},
						quantity: {
							required: true,
							number: true,

						},
						price: {
							required: true,
							number: true,
						},
						brand: {
							required: true
						},
						saleDate: {
							required: true
						}
					},
					messages: {
						productName: {
							required: "Please input Product Name",
							maxlength: "The Product Name must be less than 100 characters",
						},
						imageFiles: {
							required: "Please upload Product Image",
						},
						quantity: {
							required: "Please input Quantity",
						},
						price: {
							required: "Please input Quantity",
						},
						brand: {
							required: "Please input Brand Name",
						},
						saleDate: {
							required: "Please input Opening For Sale",
						}
					},
					errorElement: "div",
					errorClass: "error-message-invalid"
				});

				if (_self.$productInfoForm.valid()) {

					// POST data to server-side by AJAX
					$.ajax({
						url: "/product/api/" + (isAddAction ? "add" : "update"),
						type: 'POST',
						enctype: 'multipart/form-data',
						processData: false,
						contentType: false,
						cache: false,
						timeout: 10000,
						data: formData,
						success: function(responseData) {

							// Hide modal and show success message when save successfully
							// Else show error message in modal
							if (responseData.responseCode == 100) {
								_self.$productInfoModal.modal('hide');
								if (isAddAction) {
									_self.currentPageNumber = 1;
								}
								_self.searchProducts();
								showNotification(true, responseData.responseMsg);
							} else {
								showMsgOnField(_self.$productInfoForm.find("#productName"), responseData.responseMsg);
							}
						}
					});
				}
			});
		};

		_self.remove = function() {

			// Show delete product confirmation modal
			_self.$productInfoTable.on('click', '.delete-btn', function() {
				$("#deletedProductName").text($(this).data("name"));
				$("#deleteSubmitBtn").attr("data-id", $(this).data("id"));
				$('#confirmDeleteModal').modal('show');
			});

			// Submit delete product
			$("#deleteSubmitBtn").on('click', function() {
				$.ajax({
					url: "/product/api/delete/" + $(this).attr("data-id"),
					type: 'DELETE',
					dataType: 'json',
					contentType: 'application/json',
					success: function(responseData) {
						$('#confirmDeleteModal').modal('hide');
						showNotification(responseData.responseCode == 100, responseData.responseMsg);
						_self.searchProducts();
					}
				});
			});
		};
		_self.bindEvent = function() {
			_self.add();
			_self.edit();
			_self.remove();
			_self.save();

			// Show products list when clicking pagination button
			$('.pagination').on('click', '.page-item', function() {
				_self.currentPageNumber = $(this).attr("data-index");
				_self.searchProducts();
				_self.$brandName.append("<option value='' selected>--Select Brand Name--</option>")
				_self.$brandName.empty()
			});

			// Search product with search fields when click search button
			$('#searchProductBtn').on('click', function() {
				_self.currentPageNumber = 1;
				_self.searchProducts();
			});
			$('#keyword').on('keydown', function(e) {
				if (e.key === 'Enter' || e.keyCode === '13') {
					_self.currentPageNumber = 1;
					_self.searchProducts();
				}
			});

			// Search product after search fields when click clear search field button
			$('#clearSearchFieldBtn').on('click', function() {
				$("#keyword").val("");
				$("#priceFrom").val();
				$("#priceTo").val();
				_self.currentPageNumber = 1;
				_self.searchProducts();
			});

			/*$(document).ready(function() {
				$('#productInfoTable').DataTable({
					rowReorder: {
						selector: 'td:nth-child(2)'
					},
					responsive: true
				});
			});*/

		};
		_self.templateList = {
			productInfoRowTemplate: _.template(TEMPLATE_PRODUCT_INFO_ROW),
			paginatorTemplate: _.template(TEMPLATE_PAGINATOR),
			brandNameTemplate: _.template(TEMPLATE_BRAND_NAME_SELECT)
		};
		_self.initialize = function() {

			// Show brands list when opening page
			_self.searchProducts();

			_self.bindEvent();
		};
	};
}());
(function(product) {
	$(document).ready(function() {
		product.initialize();
	});
})(new Product());

function readURL(input) {
	if (input.files && input.files[0]) {

		var reader = new FileReader();

		reader.onload = function(e) {
			$('.image-upload-wrap').hide();

			$('.file-upload-image').attr('src', e.target.result);
			$('.file-upload-content').show();
		};

		reader.readAsDataURL(input.files[0]);

	} else {
		removeUpload();
	}
}

function removeUpload() {
	$('.file-upload-input').replaceWith($('.file-upload-input').clone());
	$('.file-upload-content').hide();
	$('.image-upload-wrap').show();
}
$('.image-upload-wrap').bind('dragover', function() {
	$('.image-upload-wrap').addClass('image-dropping');
});
$('.image-upload-wrap').bind('dragleave', function() {
	$('.image-upload-wrap').removeClass('image-dropping');
});

$(function() {
	$('.datepicker').datepicker({
		language: "es",
		autoclose: true,
		inline: true,
		format: "dd-mm-yyyy",
	});

});