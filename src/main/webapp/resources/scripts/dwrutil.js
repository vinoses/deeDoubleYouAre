function init() {
	// This turns off the no-javascript message
	document.getElementById("start").style.display = "none";
	// This checks for file: URLs and loading problems
	if (window.dwr == null || window.dwr.engine == null || window.dwr.util == null) {
		document.getElementById("file").style.display = "block";
		return;
	}
	dwr.util.useLoadingMessage();
	// Turn on the generic error div
	dwr.util.byId("error").style.display = "block";
	// Load a message from the server
	Intro.getInsert(load);
}

function load(data) {
	dwr.util.byId("error").style.display = "none";
	dwr.util.setValue("reply", data[0], { escapeHtml:false });
	dwr.util.setValue("version", "(Version " + data[1] + ")");
	dwr.util.byId("reply").style.display = "block";
}