var Detail = (function() {
	return function() {
		var _self = this;
		_self.$price = $(".price");

		_self.$price.each(function(key, value) {
			$(value).text(Number($(value).text()).toLocaleString('vi', {
				style: 'currency', currency: 'VND'
			}));
		});
		$(".url-product").each(function(key, value) {
			$(value).attr("href", $(value).attr("href").toString().replaceAll(" ", "-"))
		})
	};

}());
(function(detail) {
	$(document).ready(function() {
		detail.initialize();
	});
})(new Detail());
