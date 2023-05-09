const TEMPLATE_BRAND =
	"<a class='dropdown-item btn-dropdown'  data-id='<%= brandId %>' href='/productofbrand?id=<%= brandId %>'>"
	+ "<img src='<%= logo %>'>"
	+ "</a>"
const TEMPLATE_BRAND_FILTER = "<label class='imagetips'>"
	+ "<input type = 'checkbox' class='btn-check' autocomplete='off' value='<%= brandId %>' />"
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
		_self.$brandInfoFilter = $('.brandInfoFilter');
		//_self.$paginator = $('ul.pagination');
		_self.$filter = $('.filter-product');

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
			//let searchData = {
			//	keyword: $("#keyword").val(),
			//	currentPage: Number(_self.currentPageNumber)
			//}
			var url = new URL(window.location.href);
			let data = {
				brandId: url.searchParams.get("id").toString()
			};
			brandId = url.searchParams.get("id").toString()

			$.ajax({
				url: "/productofbrand/findByBrandId",
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
			$('.dropdown-menu').on('click', '.dropdown-item', function() {
				if ($(this).hasClass('active-brand')) {
					$(this).removeClass('active-brand')
				} else
					$(this).addClass('active-brand');
			});
		};
		_self.templateList = {
			brandInfoRowTemplate: _.template(TEMPLATE_BRAND),
			//paginatorTemplate: _.template(TEMPLATE_PAGINATOR),
			productInfoRowTemplate: _.template(TEMPLATE_PRODUCT),
			filterTemplate: _.template(TEMPLATE_FILTER),
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