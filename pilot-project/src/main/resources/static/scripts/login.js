//var Login = (function() {
// 	return function() {
// 		var _self = this;
// 		_self.$loginForm = $("#loginForm");

// 		_self.save = function() { // Submit add and update product

// 			$('#submitLogin').on('click', function(event) {

// 				event.preventDefault();
// 				var formData = new FormData(_self.$loginForm[0]);
// 				_self.$loginForm.validate({
// 					ignore: [],
// 					rules: {
// 						username: {
// 							required: true,
// 						},
// 						password: {
// 							required: true,
// 						}
// 					},
// 					messages: {
// 						username: {
// 							required: "Please input Product Name",
// 						},
// 						password: {
// 							required: "Please upload Product Image",
// 						}
// 					},
// 					errorElement: "div",
// 					errorClass: "error-message-invalid"
// 				});
// 				console.log(123);
// 				if (_self.$loginForm.valid()) {

// 					// POST data to server-side by AJAX
// 					$.ajax({
// 						url: "/login?error",
// 						type: 'POST',
// 						processData: false,
// 						contentType: false,
// 						cache: false,
// 						timeout: 10000,
// 						data: formData,
// 						success: function(responseData) {
// 							if (responseData.responseCode == 100) {
// 								showNotification(true, responseData.responseMsg);
// 							} else {
// 								showMsgOnField(_self.$loginForm.find("#password"), responseData.responseMsg);
// 							}
// 						}
// 					});
// 				}
// 			});
// 		};
// 		_self.bindEvent = function() {
// 			_self.save();

// 		};

// 		_self.initialize = function() {

// 			_self.bindEvent();
// 		};
// 	};
// }());
// (function(login) {
// 	$(document).ready(function() {
// 		login.initialize();
// 	});
// })(new Login());
