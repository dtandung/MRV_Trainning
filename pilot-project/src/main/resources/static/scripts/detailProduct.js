var Detail = (function() {
	return function() {
		var _self = this;
		_self.$price = $(".price");

		_self.$price.each(function(key, value) {
			$(value).text(Number($(value).text()).toLocaleString('it-IT', {
				style: 'currency', currency: 'VND'
			}));
		});

		_self.changeTitle = function(product) {
			document.title = `Điện thoại ${product}`;
		}

		_self.searchProducts = function() { // Search Brand by keyword

			var url = new URL(window.location.href);
			let data = {
				productId: url.searchParams.get("id").toString()
			};

			$.ajax({
				url: "/detailproducttitle?id=" + data.productId,
				type: 'GET',
				dataType: 'json',
				contentType: 'application/json',
				success: function(responseData) {
					if (responseData.responseCode == 100) {
						_self.changeTitle(responseData.data.productName);
						//console.log(responseData.data)
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

		};
		_self.initialize = function() {
			// Show brands list when opening page
			//_self.searchProducts();
		};
	};

}());
(function(detail) {
	$(document).ready(function() {
		detail.initialize();
	});
})(new Detail());
