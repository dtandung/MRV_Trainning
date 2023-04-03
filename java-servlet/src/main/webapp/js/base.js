$(function() {
	$('.datepicker').datepicker({
		language: "es",
		autoclose: true,
		format: "yyyy-mm-dd"
	});
});

function select() {
	var d = document.getElementById("StudentID");
			
	var displayValue = d.options[d.selectedIndex].getAttribute("data-name");
	console.log(displayValue)
	document.getElementById("StudentName").value= displayValue;
}

