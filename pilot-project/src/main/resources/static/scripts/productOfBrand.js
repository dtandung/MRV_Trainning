const TEMPLATE_BRAND =
	"<a class='dropdown-item btn-dropdown'  data-id='<%= brandId %>' href='/brand/<%= brandName %>'>"
	+ "<img src='<%= logo %>'>"
	+ "</a>"
const TEMPLATE_BRAND_FILTER = "<label class='imagetips'>"
	+ "<input type = 'checkbox' class='btn-check' autocomplete='off' value='<%= brandId %>' />"
	+ "<span class='imagetips_tip' for='btn-check'>"
	+ "<img src='<%= logo %>'/></span>"
	+ "</label > "
const TEMPLATE_PRODUCT = "<li class='product-info'>"
	+ "<a class='none-textdecor url-product' href='/product-detail/<%= productName %>'><div class='prod-avatar'>"
	+ "<img id='imageProduct' src='/<%= image %>'>"
	+ "</div>"
	+ "<div class='prod-name'> <%= productName %> <span class='new-prod-label'>Mới 2023</span> </div>"
	+ "<span class='prod-price'><%= price %></span> </a>"
	+ "</li>"


var ProductOfBrand = (function() {
	return function() {
		var _self = this;
		_self.currentPageNumber = 1;
		_self.$productInfo = $('#productInfo');
		_self.$brandInfo = $('.brandInfo');
		_self.$brandInfoFilter = $('.brandInfoFilter');
		_self.$paginator = $('ul.pagination');
		var brandName;
		var brandList = [];
		var brandId;

		//$('.dropdown button').attr("disabled", true);

		_self.changeTitle = function(brand) {
			document.title = `Điện thoại ${brand}`;
		}

		_self.searchBrands = function() {
			// Search Brand by keyword
			let searchData = {
				keyword: $('#keyword').val(),
				currentPage: Number(_self.currentPageNumber),
			};

			$.ajax({
				url: '/home/api/getallbrand',
				type: 'POST',
				dataType: 'json',
				data: JSON.stringify(searchData),
				contentType: 'application/json',
				success: function(responseData) {
					if (responseData.responseCode == 100) {
						brandList = responseData.data.brandsListUser
						_self.drawBrandTableContent(responseData.data);

					}
				},
			});
		};

		_self.drawBrandTableContent = function(data) {
			// Render brand content
			$.each(data.brandsListUser, function(key, value) {
				_self.$brandInfo.append(_self.templateList.brandInfoRowTemplate(value));
			});
			$.each(data.brandsListUser, function(key, value) {
				_self.$brandInfoFilter.append(_self.templateList.brandInfoFilterRowTemplate(value));
			});



			// Change title 
			//brandList.forEach((item) => {
			//if(item.brandId == brandId)
			//_self.changeTitle(item.brandName)
			//})
			$(".mr-1").on("click", function() {
				console.log(brandList)
				console.log(brandId)
			})
		};


		_self.searchProducts = function() { // Search Brand by keyword
			var url = new URL(window.location.href);
			var test = url.pathname.split('/')
			brandName = test[test.length - 1].replaceAll("-", " ")
			console.log(brandName)

			let searchData = {
				keyword: $("#keyword").val(),
				priceSort: $(".click-sort").val(),
				brandName: brandName,
				currentPage: Number(_self.currentPageNumber),
			}

			$.ajax({
				url: "/product-brand/" + brandName,
				type: 'POST',
				dataType: 'json',
				data: JSON.stringify(searchData),
				contentType: 'application/json',
				success: function(responseData) {
					if (responseData.responseCode == 100) {
						_self.drawProductTableContent(responseData.data);
						$(".url-product").each(function(key, value) {
							$(value).attr("href", $(value).attr("href").toString().replaceAll(" ", "-"))
						})
					}
				}
			});
		};

		_self.drawProductTableContent = function(data) {

			_self.$productInfo.empty();
			_self.$paginator.empty();

			// Render product content
			$.each(data.productsListUser, function(key, value) {
				value.price = value.price.toLocaleString('vi', { style: 'currency', currency: 'VND' })
				_self.$productInfo.append(_self.templateList.productInfoRowTemplate(value));

			});
			let count = (data.productsListUser).length;
			$('.section-title b').text(count)
			$('.sort-total b').text(count)

			// Render paginator
			let paginationInfo = data.paginationInfo;
			if (paginationInfo.pageNumberList.length > 0) {
				_self.$paginator.append(_self.templateList.paginatorTemplate(paginationInfo));
			}
		};
		_self.bindEvent = function() {
			// Show products list when clicking pagination button
			$('.pagination').on('click', '.page-item', function() {
				_self.currentPageNumber = $(this).attr("data-index");
				_self.searchProducts();
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
			$('.click-sort').on('change', function() {
				_self.searchProducts();
			})
		};
		_self.templateList = {
			brandInfoRowTemplate: _.template(TEMPLATE_BRAND),
			paginatorTemplate: _.template(TEMPLATE_PAGINATOR),
			productInfoRowTemplate: _.template(TEMPLATE_PRODUCT),
			brandInfoFilterRowTemplate: _.template(TEMPLATE_BRAND_FILTER)
		};
		_self.initialize = function() {
			// Show brands list when opening page
			_self.searchBrands();
			_self.searchProducts();
			_self.bindEvent();
		};
	};
}());
(function(productOfBrand) {
	$(document).ready(function() {
		productOfBrand.initialize();
	});
})(new ProductOfBrand());

