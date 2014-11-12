<!DOCTYPE html>
<html lang="{L_XML_LANGUAGE}">
	<head>
		<title>{TITLE}</title>
		<meta charset="iso-8859-1" />
		# IF C_DESCRIPTION #<meta name="description" content="{SITE_DESCRIPTION}" /># ENDIF #
		<meta name="keywords" content="{SITE_KEYWORD}" />
		<meta name="generator" content="PHPBoost {PHPBOOST_VERSION}" />
		# IF C_CANONICAL_URL #<link rel="canonical" href="{U_CANONICAL}"/># ENDIF #

		<!-- Theme CSS -->
		# IF C_CSS_CACHE_ENABLED #
		<link rel="stylesheet" href="${CSSCacheManager::get_css_path('/templates/default/theme/default.css;/kernel/lib/css/font-awesome/css/font-awesome.css;/templates/{THEME}/theme/design.css;/templates/{THEME}/theme/global.css;/templates/{THEME}/theme/content.css;/templates/{THEME}/protoshow/protoshow.css;/templates/{THEME}/theme/gmenu.css')}" type="text/css" media="screen, print, handheld" />
		# ELSE #
		<link rel="stylesheet" href="{PATH_TO_ROOT}/templates/default/theme/default.css" type="text/css" media="screen, print, handheld" />
		<link rel="stylesheet" href="{PATH_TO_ROOT}/kernel/lib/css/font-awesome/css/font-awesome.css" />
		<link rel="stylesheet" href="{PATH_TO_ROOT}/templates/{THEME}/theme/design.css" type="text/css" media="screen" />
		<link rel="stylesheet" href="{PATH_TO_ROOT}/templates/{THEME}/theme/global.css" type="text/css" media="screen, print, handheld" />
		<link rel="stylesheet" href="{PATH_TO_ROOT}/templates/{THEME}/theme/content.css" type="text/css" media="screen, print, handheld" />
		<link rel="stylesheet" href="{PATH_TO_ROOT}/templates/{THEME}/theme/gmenu.css" type="text/css" media="screen, print, handheld" />
		<link rel="stylesheet" href="{PATH_TO_ROOT}/templates/{THEME}/protoshow/protoshow.css" media="screen" />
		# ENDIF #

		<!-- Modules CSS -->
		{MODULES_CSS}

		# IF C_FAVICON #
		<link rel="shortcut icon" href="{FAVICON}" type="{FAVICON_TYPE}" />
		# ENDIF #

		# INCLUDE JS_TOP #
	</head>

	<body itemscope="itemscope" itemtype="http://schema.org/WebPage">
		# INCLUDE BODY #
		# INCLUDE JS_BOTTOM #
		<script>
		<!--
			function open_gnav_submenu( classtoopen, classtoclose )
			{
				if (document.getElementById(classtoclose) != null) {
					if ($(classtoclose).hasClassName("open")) {
						$(classtoclose).removeClassName ("open");
					}
				}

				if ($(classtoopen).hasClassName("open")) {
					$(classtoopen).removeClassName ("open");
				}
				else {
					$(classtoopen).addClassName ("open");
				}
			}
		-->
		<!--
			Event.observe(window, 'load', function() {
				$$(".bandeau-element-menu").invoke('observe', 'mouseover', function(event) {
				var choix=document.getElementsByClassName("bandeau-element-menu");
				for (i=0;i<choix.length;i++)
				   {
				   	if (choix[i] != this) { choix[i].addClassName ("unactive"); }
				   	else { choix[i].addClassName ("active"); }
				   }
				});
				$$(".bandeau-element-menu").invoke('observe', 'mouseout', function(event) {
					var choix=document.getElementsByClassName("bandeau-element-menu");
					for (i=0;i<choix.length;i++)
					   {
					   choix[i].removeClassName ("unactive");
					   choix[i].removeClassName ("active");
					   }
				});
			});

			Event.observe(window, "resize", function() {
			    var dims = document.viewport.getDimensions();
			    var x = 0;
			    if ( dims.width < 1650 ) { x = ( 1650 - dims.width ) / 2 }
				else { x = 0 }
			    document.getElementById("myshow1").style.left = "-" + x + "px";
			});
		-->
		</script>
		<script type="text/javascript" src="{PATH_TO_ROOT}/templates/{THEME}/protoshow/protoshow.js"></script>
		<script type="text/javascript" src="{PATH_TO_ROOT}/templates/{THEME}/protoshow/site.js"></script>

	</body>
</html>