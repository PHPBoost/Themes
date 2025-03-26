var prevScrollpos = window.pageYOffset;
var	headerHeight = document.getElementById('header').offsetHeight;
document.getElementById("sub-header").style.marginTop = headerHeight + "px";
document.getElementById("global").style.minHeight = 'calc(100vh - ' + headerHeight + "px";

/* Hide header on scroll down, show on scroll up */
window.onscroll = function() {
	var currentScrollPos = window.pageYOffset;

	if (prevScrollpos > currentScrollPos) {
		document.getElementById("header").style.top = "0";
	} else if (prevScrollpos < currentScrollPos) {
		document.getElementById("header").style.top = "-" + headerHeight + "px";
	}
	prevScrollpos = currentScrollPos;
};
