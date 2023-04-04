/*======= Active Navbar START ======== */
$(".nav-item a").on("click", function() {
		$(".nav-item.active").removeClass("active");
		$(this).parent().addClass("active");
	}).filter(function() {
		return window.location.href.indexOf($(this).attr('href').trim()) > -1;
	}).click();
/*======= Active Navbar END ======== */

/*======= Select DatePicker START ======== */
$(function() {
	$('.datepicker').datepicker({
		language: "es",
		autoclose: true,
		format: "yyyy-mm-dd",
	});

});
/*======= Select DatePicker END ======== */

/*======= Select Search Date Validate START ======== */
$(document).ready(function() {
	$(".date-end").prop("disabled", true)

	$(".date-start").on("change", function() {
		let dateS = $(".date-start").val();
		let dateE = $(".date-end").val();
		if (dateS === "" && dateE !== "")
			$(".date-end").prop("disabled", false);
		else if (dateS === "" && dateE === "")
			$(".date-end").prop("disabled", true);
		else $(".date-end").prop("disabled", false)
	})

	$(".date-end").on("change", function() {
		let dateS = $(".date-start").val();
		let dateE = $(".date-end").val();
		if (dateS === "" && dateE === "")
			$(".date-end").prop("disabled", true);
	})

});
/*======= Select Search Date Validate END ======== */

/*======= Student Form Get StudentName When Select StudentID START ======== */
function select() {
	var d = document.getElementById("StudentID");

	var displayValue = d.options[d.selectedIndex].getAttribute("data-name");
	console.log(displayValue)
	document.getElementById("StudentName").value = displayValue;
}
/*======= Student Form Get StudentName When Select StudentID END ======== */

/*======= Student Form Validate START ======== */
$().ready(function() {
	const regexName = /^[a-zA-ZÀÁÂÃÈÉÊÌÍÒÓÔÕÙÚĂĐĨŨƠàáâãèéêìíòóôõùúăđĩũơƯĂẠẢẤẦẨẪẬẮẰẲẴẶẸẺẼỀỀỂ ưăạảấầẩẫậắằẳẵặẹẻẽềềểỄỆỈỊỌỎỐỒỔỖỘỚỜỞỠỢỤỦỨỪễệỉịọỏốồổỗộớờởỡợụủứừỬỮỰỲỴÝỶỸửữựỳỵỷỹ\s]+$/;
	jQuery.validator.addMethod("validForStudent", function(value, element) {
		// allow any non-whitespace characters as the host part
		return this.optional(element) || regexName.test(value);
	}, '*Enter a name without numeric characters.');
	$(".studentForm").validate({
		onfocusout: false,
		onkeyup: false,
		onclick: false,
		rules: {
			"Age": {
				required: true,
				number: true,
				min: 6,
				max: 999,
				digits: true
			},
			"Name": {
				required: true,
				validForStudent: true,
				maxlength:50
			},
			"Gender": {
				required: true
			}
		},
		messages: {
			"Age": {
				required: "*Please enter age",
				min:"*Age must be greater than 5",
				max: "*Age exceeding the permissible",
				number: "*Number must be entered",
				digits:"*Please enter only positive integer digits"
			},
			"Name": {
				required: "*Please enter name",
				validForStudent:"*Incorrectly formatted name",
				maxlength:"*Name must be less than 50 characters",
			},
			"Gender": {
				required: "*Please select gender"
			}
		},

	});
});
/*======= Student Form Validate END ======== */

/*======= Book Form Validate START ======== */
$().ready(function() {
	const regexName = /^[^-\s][0-9a-zA-ZÀÁÂÃÈÉÊÌÍÒÓÔÕÙÚĂĐĨŨƠàáâãèéêìíòóôõùúăđĩũơƯĂẠẢẤẦẨẪẬẮẰẲẴẶẸẺẼỀỀỂ ưăạảấầẩẫậắằẳẵặẹẻẽềềểỄỆỈỊỌỎỐỒỔỖỘỚỜỞỠỢỤỦỨỪễệỉịọỏốồổỗộớờởỡợụủứừỬỮỰỲỴÝỶỸửữựỳỵỷỹ]+$/;
	jQuery.validator.addMethod("validForBook", function(value, element) {
		// allow any non-whitespace characters as the host part
		return this.optional(element) || regexName.test(value);
	}, '*Enter a name without numeric characters.');
	$(".bookForm").validate({
		onfocusout: false,
		onkeyup: false,
		onclick: false,
		rules: {
			"TotalPage": {
				required: true,
				number: true,
				min: 1,
				digits: true
			},
			"Name": {
				required: true,
				validForBook:true
			},
			"Type": {
				required: true,
				validForBook: true
			},
			"Quantity": {
				required: true,
				number: true,
				min: 1,
				digits: true
			}
		},
		messages: {
			"TotalPage": {
				required: "*Please enter total page",
				number: "*Number must be entered",
				digits:"*Please enter only positive integer digits"
			},
			"Name": {
				required: "*Please enter name",
				validForBook:"*Incorrectly formatted name",
			},
			"Type": {
				required: "*Please enter type",
				validForBook:"*Incorrectly formatted type",
			},
			"Quantity": {
				required: "*Please enter quantity",
				number: "*Number must be entered",
				digits:"*Please enter only positive integer digits"
			},
		},

	});
});
/*======= Book Form Validate END ======== */

/*======= Borrow Form Validate START ======== */
$().ready(function() {

	$(".borrowForm").validate({
		onfocusout: false,
		onkeyup: false,
		onclick: false,
		rules: {
			"StudentID": {
				required: true,
			},
			"BookID": {
				required: true,
			},
			"Quantity": {
				required: true,
				number: true,
				min: 1,
				digits: true
			},
			"StudentName": {
				required: true,
			}
		},
		messages: {
			"StudentID": {
				required: "*Please select Student ID",
			},
			"BookID": {
				required: "*Please select book"
			},
			"Quantity": {
				required: "*Please enter your quantity",
				number: "*Number must be entered",
				digits:"*Please enter only positive integer digits"
			},
			"StudentName": {
				required: "*Please select the student ID to display the student name",
			}
		},

	});
});
/*======= Borrow Form Validate END ======== */