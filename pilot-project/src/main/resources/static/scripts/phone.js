const TEMPLATE_BRAND = "<label class='imagetips'>"
	+ "<a class='imagetips_tip url-brand'  href='/product-brand/<%= brandName %>'>"
	+ "<img src='<%= logo %>'>"
	+ "</a>"
	+ "</label > "
const TEMPLATE_BRAND_FILTER = "<label class='imagetips'>"
	+ "<input type = 'checkbox' name='brand' class='btn-check' value='<%= brandId %>' />"
	+ "<span class='imagetips_tip' for='btn-check'>"
	+ "<img src='<%= logo %>'/></span>"
	+ "</label > "

const TEMPLATE_PRODUCT = "<li name='product' class='product-info'>"
	+ "<a class='none-textdecor url-product' href='/product-detail/<%= productName %>'><div class='prod-avatar'>"
	+ "<img id='imageProduct' src='<%= image %>'>"
	+ "</div>"
	+ "<div class='prod-name'> <%= productName %> <span class='new-prod-label'>Mới 2023</span> </div>"
	+ "<span class='prod-price'><%= price %></span> </a>"
	+ "</li>"

var Brand = (function() {
	return function() {
		var _self = this;
		_self.currentPageNumber = 1;
		_self.$brandInfo = $('.brandInfo');
		_self.$brandInfoFilter = $('.brandInfoFilter');
		_self.$productInfo = $('#productInfo');
		_self.$paginator = $('ul.pagination');
		var brandIdFilterList = [];
		var priceFilter = [];
		var countActiveFilter = [];
		let min = 300000;
		const MIN = 300000;
		let max = 42000000;
		const MAX = 42000000;
		let minStr = "";
		let maxStr = "";
		const calcLeftPosition = (value) => (100 / (42000000 - 300000)) * (value - 300000);
		var rangeBalance;
		_self.searchBrands = function() {
			// Search Brand by keyword
			let searchData = {
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
						$(".url-brand").each(function(key, value) {
							$(value).attr("href", $(value).attr("href").toString().replaceAll(" ", "-"))

						})
					}
				},
			});
		};
		_self.searchProducts = function() { // Search Brand by keyword
			let searchData = {
				keyword: $("#keyword").val(),
				priceSort: $(".click-sort").val(),
				priceFrom: minStr,
				priceTo: maxStr,
				currentPage: Number(_self.currentPageNumber),
				brandIdFilter: [...brandIdFilterList],
				priceFilter: [...priceFilter]
			}


			$.ajax({
				url: "/home/api/getallproduct",
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

		_self.drawBrandTableContent = function(data) {

			// Render brand content
			$.each(data.brandsListUser, function(key, value) {
				_self.$brandInfo.append(_self.templateList.brandInfoRowTemplate(value));
			});
			// Render brand content for filter
			$.each(data.brandsListUser, function(key, value) {
				_self.$brandInfoFilter.append(_self.templateList.brandInfoFilterRowTemplate(value));
			});

			//Filter List
			function showValues() {
				var fieldsBrand = [];
				var fieldsPrice = [];
				//fieldsBrand = ($(":input[name=brand]").serializeArray());
				fieldsBrand = $(this).parents("form").serializeArray();
				fieldsPrice = $(this).parents("form").serializeArray();
				if ($(this).prop('name') === 'brand') {
					brandIdFilterList = [];
					fieldsBrand.forEach(item => brandIdFilterList.push(item.value))
				}
				if ($(this).prop('name') === 'price') {
					priceFilter = [];
					fieldsPrice.forEach(item => priceFilter.push(item.value))
				}
			}
			$(":checkbox").on("click", showValues);
		};
		_self.drawProductTableContent = function(data) {

			_self.$productInfo.empty();
			_self.$paginator.empty();

			// Render product content
			$.each(data.productsListUser, function(key, value) {
				value.price = value.price.toLocaleString('vi', { style: 'currency', currency: 'VND' })
				_self.$productInfo.append(_self.templateList.productInfoRowTemplate(value));
			});

			let count = (data.count).length;
			$('.sort-total b').text(count)

			// Double active
			var fieldsBrand = $(":input[name=brand]");
			fieldsBrand.each(function(key, value) {
				if (brandIdFilterList.includes($(value).val())) {
					$(value).attr("checked", true)
				} else {
					$(value).attr("checked", false)
				}
			});
			var fieldsPrice = $(":input[name=price]");
			fieldsPrice.each(function(key, value) {
				if (priceFilter.includes($(value).val())) {
					$(value).attr("checked", true)
				} else {
					$(value).attr("checked", false)
				}
			});

			//unchecked filter
			$('.btn-filter-close').click(function() {
				location.reload();
			});

			// Render paginator
			let paginationInfo = data.paginationInfo;
			if (paginationInfo.pageNumberList.length > 0) {
				_self.$paginator.append(_self.templateList.paginatorTemplate(paginationInfo));
			}
		};
		//Range price slider
		_self.sliderRange = function() {
			$('.min').html(MIN.toLocaleString('vi', { style: 'currency', currency: 'VND' }));
			$('.max').html(MAX.toLocaleString('vi', { style: 'currency', currency: 'VND' }));
			$('.fromPrice').on('input', function(e) {
				let newValue = parseFloat(e.target.value);
				if (newValue === parseFloat($('.toPrice').val()))
					rangeBalance = newValue
				if (newValue >= rangeBalance)
					$('.fromPrice').val(rangeBalance)
				minStr = newValue.toString()
				maxStr = max.toString()
				if (newValue > max) return;

				min = newValue;

				$('.thumbMin').css('left', calcLeftPosition(newValue) + '%');
				$('.fromPrice').val(min)
				//$('.min').toLocaleString('it-IT', {style: 'currency', currency: 'VND'}).html(newValue);
				$('.min').html(newValue.toLocaleString('vi', { style: 'currency', currency: 'VND' }));
				$('.line').css({
					left: calcLeftPosition(newValue) + '%',
					right: 100 - calcLeftPosition(max) + '%',
				});
				if (newValue === $('.toPrice').val()) {
					$('.toPrice').hide()
				}
				else {
					$('.toPrice').show()
				}
			});

			$('.toPrice').on('input', function(e) {
				let newValue = parseFloat(e.target.value);
				if (newValue === parseFloat($(".fromPrice").val()))
					rangeBalance = newValue
				if (newValue <= rangeBalance)
					$('.toPrice').val(rangeBalance)
				maxStr = newValue.toString()
				minStr = min.toString()
				if (newValue < min) return;
				max = newValue;

				$('.toPrice').val(max)
				$('.thumbMax').css('left', calcLeftPosition(newValue) + '%');
				$('.max').html(newValue.toLocaleString('vi', { style: 'currency', currency: 'VND' }));
				$('.line').css({
					left: calcLeftPosition(min) + '%',
					right: 100 - calcLeftPosition(newValue) + '%',
				});
				if (newValue === $('.fromPrice').val()) {
					$('.fromPrice').hide()
				}
				else {
					$('.fromPrice').show()
				}
			});
		}

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
			//Count active
			$(".number").hide();
			$(".btn-filter-readmore").on('click', function() {
				_self.searchProducts();
				$(".number").show();
				if (minStr !== "" && maxStr !== "") {
					countActiveFilter = brandIdFilterList.length + priceFilter.length + 1;
				} else
					countActiveFilter = brandIdFilterList.length + priceFilter.length;
				$(".number").text(countActiveFilter)
				if (countActiveFilter == 0) {
					$(".number").hide();
				}
			});
			//Hide/show range price slider
			$(".price-slider").hide()
			$(".range-toggle").on('click', function(e) {
				e.preventDefault();
				$(".price-slider").toggle(500)
				$("input[name=price]").prop('checked', false)
				priceFilter = [];
			})

			//reload range price when button price checked
			$("input[name=price]").on('click', function() {
				$(".price-slider").hide(500)
				min = MIN;
				max = MAX;
				minStr = ""
				maxStr = ""
				$('.min').html(MIN.toLocaleString('vi', { style: 'currency', currency: 'VND' }));
				$('.max').html(MAX.toLocaleString('vi', { style: 'currency', currency: 'VND' }));
				$('.fromPrice').val(MIN)
				$('.toPrice').val(MAX)
				$('.thumbMax').css('left', 100 + '%');
				$('.thumbMin').css('left', 0 + '%');
				$('.line').css({
					left: 0 + '%',
					right: 0 + '%',
				});
			})
			//filter sort
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
			_self.sliderRange();
			_self.bindEvent();
		};
	};
}());
(function(brand) {
	$(document).ready(function() {
		brand.initialize();
	});
})(new Brand());
