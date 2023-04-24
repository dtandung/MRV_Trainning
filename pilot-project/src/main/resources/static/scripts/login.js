var Login = (function() {
	return function() {
		var _self = this;
		_self.$formSigning = $("#loginForm");
		_self.save = function() { // Submit login

			$("#loginForm").validate({
				onfocusout: false,
				onkeyup: false,
				onclick: false,
				rules: {
					"username": {
						required: true,
						maxlength: 15
					},
					"password": {
						required: true,
						minlength: 8
					}
				},
			});
		};
		_self.bindEvent = function() {
			_self.save();
		}

		_self.initialize = function() {
			_self.bindEvent();
		};
	};

})();

(function(login) {
	$(document).ready(function() {
		login.initialize();
	});
})(new Login());