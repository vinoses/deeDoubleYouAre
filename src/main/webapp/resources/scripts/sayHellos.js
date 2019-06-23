/**
 * I was here
 */
$( document ).ready(function() {

	initialize();

	$('*').click(function(){
			if(this.id === 'forward') { clear(); }
			if(this.id === 'javaforward') {  javaforward(); }
			if(this.id === 'f1') { sayhello();}
	});

	function initialize() {
		JavaDate.toLocaleString( function(data) {
			$(".p2").text("").append(data);
		});
	}

	function clear() {
		$("#forward").hide();
		$(".p1").text("");
		initialize();
	}

	function sayhello() {
		$("#f1").submit( function(e) {
			e.preventDefault();
			var name = $("#n1").val() + $("#n2").val();
			app.sayHello(name, function( data ) {
				$(".p1").text("").append(data);
			});
		});
	}

	function javaforward() {
		$("#forward").show();
		app.getInclude(function(data) {
			dwr.util.setValue("forward", data, { escapeHtml:false });
		});
	}
});


