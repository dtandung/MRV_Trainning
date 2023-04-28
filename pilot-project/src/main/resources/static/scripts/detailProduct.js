var Brand = (function() {
	return function() {
		var _self = this;
		_self.$price = $(".price");
		
		_self.$price.each(function(key, value) {
			$(value).text(Number($(value).text()).toLocaleString('it-IT', {
				style: 'currency', currency: 'VND'
			}));
		});

	};
}());
(function(brand) {
	$(document).ready(function() {
		brand.initialize();
	});
})(new Brand());
