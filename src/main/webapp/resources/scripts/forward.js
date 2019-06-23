$( document ).ready(function() {

	initialize();


	function initialize() {
		$("#date").text("").append("<div><div><div><div>" + JavaDate.getDate() + "</div></div></div></div>");
	}

	$("#home").click(function() {
		alert('home');
	});
});