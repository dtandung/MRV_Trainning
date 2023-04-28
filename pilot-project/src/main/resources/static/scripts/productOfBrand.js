const TEMPLATE_BRAND =
	"<a class='dropdown-item btn-dropdown'  data-id='<%= brandId %>' href='/productofbrand?id=<%= brandId %>'>"
	+ "<img src='<%= logo %>'>"
	+ "</a>"
const TEMPLATE_PRODUCT = "<li class='product-info'>"
	+ "<a class='none-textdecor' href='/detailproduct?id=<%= productId %>'><div class='prod-avatar'>"
	+ "<img id='imageProduct' src='<%= image %>'>"
	+ "</div>"
	+ "<div class='prod-name'> <%= productName %> <span class='new-prod-label'>Mới 2023</span> </div>"
	+ "<span class='prod-price'><%= price %></span> </a>"
	+ "</li>"
const TEMPLATE_FILTER = "<button class='btn' type='button' "
	+ " aria-haspopup='true' aria-expanded='false'>"
	+ " <%= productName %>"
	+ "</button>"

var Brand = (function() {
	return function() {
		var _self = this;
		_self.currentPageNumber = 1;
		_self.$productInfo = $('#productInfo');
		_self.$brandInfo = $('.brandInfo');
		//_self.$paginator = $('ul.pagination');
		_self.$filter = $('.filter-product');


		//$('.dropdown button').attr("disabled", true);


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
			
			var url = new URL(window.location.href);
			let data2 = {
				brandId: url.searchParams.get("id").toString()
			};
			if(data2.brandId === data.brandsListUser){
				console.log(data.brandName)
			}
			
		};


		_self.searchProducts = function() { // Search Brand by keyword
			//let searchData = {
			//	keyword: $("#keyword").val(),
			//	currentPage: Number(_self.currentPageNumber)
			//}
			var url = new URL(window.location.href);
			let data = {
				brandId: url.searchParams.get("id").toString()
			};
			$.ajax({
				url: "/productofbrand/findById",
				type: 'POST',
				dataType: 'json',
				data: JSON.stringify(data),
				contentType: 'application/json',
				success: function(responseData) {
					if (responseData.responseCode == 100) {
						_self.drawProductTableContent(responseData.data);
						$(".prod-price").each(function(key, value) {
							$(value).text(Number($(value).text()).toLocaleString('it-IT', {
								style: 'currency', currency: 'VND'
							}));
						});
					}
				}
			});
		};
		
		_self.drawProductTableContent = function(data) {
			 
			_self.$productInfo.empty();
			//_self.$paginator.empty();

			// Render product content
			$.each(data.productEntity, function(key, value) {
				_self.$productInfo.append(_self.templateList.productInfoRowTemplate(value));

			});

			$.each(data.productEntity, function(key, value) {
				_self.$filter.append(_self.templateList.filterTemplate(value));
			})

			let count = (data.productEntity).length;
			$('.section-title b').text(count)

			// Render paginator
			//let paginationInfo = data.paginationInfo;
			//if (paginationInfo.pageNumberList.length > 0) {
			//	_self.$paginator.append(_self.templateList.paginatorTemplate(paginationInfo));
			//}
		};
		_self.bindEvent = function() {
			// Show products list when clicking pagination button
			//$('.pagination').on('click', '.page-item', function() {
			//	_self.currentPageNumber = $(this).attr("data-index");
			//	_self.searchProducts();
			//});
		};
		_self.templateList = {
			brandInfoRowTemplate: _.template(TEMPLATE_BRAND),
			//paginatorTemplate: _.template(TEMPLATE_PAGINATOR),
			productInfoRowTemplate: _.template(TEMPLATE_PRODUCT),
			filterTemplate: _.template(TEMPLATE_FILTER),
		};
		_self.initialize = function() {
			// Show brands list when opening page
			_self.searchBrands();
			_self.searchProducts();
			_self.bindEvent();
		};
	};
}());
(function(brand) {
	$(document).ready(function() {
		brand.initialize();
	});
})(new Brand());
