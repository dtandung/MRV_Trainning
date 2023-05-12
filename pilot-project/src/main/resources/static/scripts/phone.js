const TEMPLATE_BRAND = "<label class='imagetips'>"
	+ "<a class='imagetips_tip'  href='/productofbrand?id=<%= brandId %>'>"
	+ "<img src='<%= logo %>'>"
	+ "</a>"
	+ "</label > "
const TEMPLATE_BRAND_FILTER = "<label class='imagetips'>"
	+ "<input type = 'checkbox' name='brand' class='btn-check' autocomplete='off' value='<%= brandId %>' />"
	+ "<span class='imagetips_tip' for='btn-check'>"
	+ "<img src='<%= logo %>'/></span>"
	+ "</label > "

const TEMPLATE_PRODUCT = "<li name='product' class='product-info'>"
	+ "<a class='none-textdecor' href='/detailproduct?id=<%= productId %>'><div class='prod-avatar'>"
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
		var brandIdListForm = [];
		var brandIos = [];
		var brandSearch = [];
		var brandAndroid = [];
		var priceFilter = [];
		var priceListForm = [];
		let min = 300000;
		let max = 42000000;
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
					}
				},
			});
		};
		_self.searchProducts = function() { // Search Brand by keyword
			let searchData = {
				keyword: $("#keyword").val(),
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
					}
				}
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


			function showValues() {
				/*var fieldsBrand = []
				var fieldsPrice = []
				fieldsBrand = $(":input[name=brand]").serializeArray();
				fieldsPrice = $(":input[name=price]").serializeArray();
				brandIdListForm = fieldsBrand;
				priceListForm = fieldsPrice;
				brandIdFilterList = [];
				priceFilter = [];
				brandIdListForm.forEach(item => brandIdFilterList.push(item.value))
				priceListForm.forEach(item => priceFilter.push(item.value))
				console.log(brandIdFilterList)*/
				var fieldsBrand = [];
				var fieldsPrice = [];
				//fieldsBrand = ($(":input[name=brand]").serializeArray());
				fieldsBrand = $(this).parents("form").serializeArray();
				fieldsPrice = $(this).parents("form").serializeArray();
				if ($(this).attr('name') === 'brand') {
					brandIdFilterList = [];
					fieldsBrand.forEach(item => brandIdFilterList.push(item.value))
				}
				if ($(this).attr('name') === 'price') {
					priceFilter = [];
					fieldsPrice.forEach(item => priceFilter.push(item.value))
				}
			}
			$(":checkbox").on("click", showValues);
			/*$(":checkbox.ios").on("click", function() {
				$.each(data.brandsListUser, function(key, value) {
					if (value.brandId === 1) {
						brandIos = [];
						brandIos.push(value.brandId.toString())
					}
				})
			});
			$(":checkbox.android").on("click", function() {
				$.each(data.brandsListUser, function(key, value) {
					if (value.brandId !== 1) {
						brandAndroid = [];
						brandAndroid.push(value.brandId.toString())
					}
				})
			});*/
			/*$.each(data.brandsListUser, function(key, value) {
				if (value.brandId != 1) {
					brandAndroid = [];
					brandAndroid.push(value.brandId)
				} else {
					brandIos = [];
					brandIos.push(value.brandId)
				}
			})*/
			//console.log(brandAndroid)
			//console.log(brandIos)
		};
		_self.drawProductTableContent = function(data) {

			_self.$productInfo.empty();
			_self.$paginator.empty();

			// Render product content
			$.each(data.productsListUser, function(key, value) {
				value.price = value.price.toLocaleString('it-IT', { style: 'currency', currency: 'VND' })
				_self.$productInfo.append(_self.templateList.productInfoRowTemplate(value));
			});

			var fieldsBrand = $(":input[name=brand]");
			fieldsBrand.each(function(key, value) {
				if (brandIdFilterList.includes($(value).val())) {
					$(value).attr("checked", true)
				}
				$("input[name=brand]:checked").on('click', function(key, value) {
					$(value).attr("checked", false)
				})
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

			/*if (brandIdFilterList.length != 0 || brandAndroid != 0 && brandIos != 0) {
				brandSearch = [];
				brandSearch = brandIdFilterList;
			} else if (brandIdFilterList.length == 0 && brandAndroid == 0 && brandIos != 0) {
				brandSearch = [];
				brandSearch = brandIos;
			} else if (brandIdFilterList.length == 0 && brandAndroid != 0 && brandIos == 0) {
				brandSearch = [];
				brandSearch = brandAndroid;
			}*/

			//var priceConvert = $('.convert-money').text();
			//var priceConvert = Number($('.convert-money').text()).toLocaleString('it-IT', {
			//	style: 'currency', currency: 'VND'
			//})
			//$('input[type=range]').change(function() {
			//	$('.convert-money').text(priceConvert)
			//});

			//console.log(priceConvert)


		};
		_self.sliderRange = function() {
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
				$('.min').html(newValue);
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
				$('.max').html(newValue);
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

			$(".section-title").on('click', function() {
				console.log(brandIdFilterList);
				console.log(priceFilter);
			});

			$(".btn-filter-readmore").on('click', function() {
				_self.searchProducts()
			});
			$(".price-slider").hide()
			$(".range-toggle").on('click', function(e) {
				e.preventDefault();
				$(".price-slider").toggle(500)
				$("input[name=price]").prop('checked', false)
				priceFilter = [];
			})

			$("input[name=price]").on('click', function() {
				$(".price-slider").hide(500)
				min = 2000000;
				max = 42000000;
				minStr = ""
				maxStr = ""
				$('.min').html(300000);
				$('.max').html(42000000);
				$('.fromPrice').val(300000)
				$('.toPrice').val(42000000)
				$('.thumbMax').css('left', 100 + '%');
				$('.thumbMin').css('left', 0 + '%');
				$('.line').css({
					left: 0 + '%',
					right: 0 + '%',
				});
			})




			/*$(".range-toggle").on('click', function(e) {
			   e.preventDefault();
			   if ($(".price-slider").hasClass("d-none") === true) {
				   $(".price-slider").removeClass("d-none");
				   
				   $("input[name=price]").prop('checked', false)
				   priceFilter = [];
			   }
			   else if ($(".price-slider").hasClass("d-none") === false) {
				   $(".price-slider").addClass("d-none");
			   }
		   })

		   $("input[name=price]").on('click', function() {
			   if (!$(".price-slider").hasClass("d-none")) {
				   $(".price-slider").addClass("d-none");
			   }
			   min = "";
			   max = "";
		   })*/

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
