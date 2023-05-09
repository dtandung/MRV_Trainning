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

const TEMPLATE_PRODUCT = "<li class='product-info'>"
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
		var brandIdFilter = [];
		var brandIdListForm = [];
		var list;
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
				fromPrice: $("#fromPrice").val(),
				toPrice: $("#toPrice").val(),
				currentPage: Number(_self.currentPageNumber),
				brandIdFilter: [...brandIdFilter]
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
						$(".prod-price").each(function(key, value) {
							$(value).text(Number($(value).text()).toLocaleString('it-IT', {
								style: 'currency', currency: 'VND'
							}));
						});
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
				var fields = $(":input").serializeArray();
				//console.log(fields)
				//$("#results").empty();
				brandIdListForm = fields;
				brandIdFilter = []
				brandIdListForm.forEach(item => brandIdFilter.push(item.value))

			}
			$(":checkbox").on("click", showValues);
		};
		_self.drawProductTableContent = function(data) {

			_self.$productInfo.empty();
			_self.$paginator.empty();

			// Render product content
			$.each(data.productsListUser, function(key, value) {
				_self.$productInfo.append(_self.templateList.productInfoRowTemplate(value));
			});


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

			$(".section-title").on('click', function() {
				console.log(brandIdFilter);
			});

			$(".btn-filter-readmore").on('click', function() {
				_self.searchProducts()
			});
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
(function(brand) {
	$(document).ready(function() {
		brand.initialize();
	});
})(new Brand());


let min = 300000;
let max = 42000000;

const calcLeftPosition = (value) => (100 / (42000000 - 300000)) * (value - 300000);
var rangeBalance;

$('#rangeMin').on('input', function(e) {
	let newValue = parseFloat(e.target.value);
	if (newValue === parseFloat($("#rangeMax").val()))
		rangeBalance = newValue
	if (newValue >= rangeBalance)
		$('#rangeMin').val(rangeBalance)
	if (newValue > max) return;

	min = newValue;
	$('#thumbMin').css('left', calcLeftPosition(newValue) + '%');
	$('#min').html(newValue);
	$('#line').css({
		left: calcLeftPosition(newValue) + '%',
		right: 100 - calcLeftPosition(max) + '%',
	});

	if (newValue === $('#rangeMax').val()) {
		$('#rangeMax').hide()
	}
	else {
		$('#rangeMax').show()
	}
});


$('#rangeMax').on('input', function(e) {
	let newValue = parseFloat(e.target.value);
	if (newValue === parseFloat($("#rangeMin").val()))
		rangeBalance = newValue
	if (newValue <= rangeBalance)
		$('#rangeMax').val(rangeBalance)
	if (newValue < min) return;
	max = newValue;
	$('#thumbMax').css('left', calcLeftPosition(newValue) + '%');
	$('#max').html(newValue);
	$('#line').css({
		left: calcLeftPosition(min) + '%',
		right: 100 - calcLeftPosition(newValue) + '%',
	});

	if (newValue === $('#rangeMin').val()) {
		$('#rangeMin').hide()
	}
	else {
		$('#rangeMin').show()
	}
});


$('#rangeMin2').on('input', function(e) {
	let newValue = parseFloat(e.target.value);
	if (newValue === parseFloat($("#rangeMax2").val()))
		rangeBalance = newValue
	if (newValue >= rangeBalance)
		$('#rangeMin2').val(rangeBalance)
	if (newValue > max) return;
	min = newValue;
	$('#thumbMin2').css('left', calcLeftPosition(newValue) + '%');
	$('#min2').html(newValue);
	$('#line2').css({
		left: calcLeftPosition(newValue) + '%',
		right: 100 - calcLeftPosition(max) + '%',
	});

	if (newValue === $('#rangeMax').val()) {
		$('#rangeMax2').hide()
	}
	else {
		$('#rangeMax2').show()
	}
});

$('#rangeMax2').on('input', function(e) {
	let newValue = parseFloat(e.target.value);
	if (newValue === parseFloat($("#rangeMin2").val()))
		rangeBalance = newValue
	if (newValue <= rangeBalance)
		$('#rangeMax2').val(rangeBalance)
	if (newValue < min) return;
	max = newValue;
	$('#thumbMax2').css('left', calcLeftPosition(newValue) + '%');
	$('#max2').html(newValue);
	$('#line2').css({
		left: calcLeftPosition(min) + '%',
		right: 100 - calcLeftPosition(newValue) + '%',
	});

	if (newValue === $('#rangeMin2').val()) {
		$('#rangeMin2').hide()
	}
	else {
		$('#rangeMin2').show()
	}
});