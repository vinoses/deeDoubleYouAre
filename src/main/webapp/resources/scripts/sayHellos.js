/**
 * I was here
 */
$( document ).ready(function() {

	initialize();

	function initialize() {
		JavaDate.toLocaleString( function(data) {
			$(".p2").text("").append(data);
		});
	}

	$("#javaforward").click(function() {
		javaforward();
	});

	$("#f1").submit( function(e) {
		e.preventDefault();
		var name = $("#n1").val() + $("#n2").val();
		app.sayHello(name, function( data ) {
			$(".p1").text("").append(data);
		});
	});

	function javaforward() {

		app.getInclude(function(data) {
			var win = window.open("", "Title", "toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=yes,width=780,height=200,top="+(screen.height-400)+",left="+(screen.width-840));
			win.document.body.innerHTML = data;
			var newScript = document.createElement("script");
			newScript.src = "/resources/scripts/forward.js";
			win.appendChild(newScript);
		});
	}
});


