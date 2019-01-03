	(function() {
		var link_element = document.createElement("link"),
			s = document.getElementsByTagName("script")[0];
		if (window.location.protocol !== "http:" && window.location.protocol !== "https:") {
			link_element.href = "http:";
		}
		link_element.href += "//fonts.googleapis.com/css?family=Cinzel+Decorative:400,700,900";
		link_element.rel = "stylesheet";
		link_element.type = "text/css";
		s.parentNode.insertBefore(link_element, s);
	})();