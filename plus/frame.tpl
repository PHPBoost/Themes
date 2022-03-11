<!DOCTYPE html>
<html lang="{L_XML_LANGUAGE}"# IF C_OPENGRAPH # prefix="og: http://ogp.me/ns#"# ENDIF #>
	<head>
		<title>{TITLE}</title>
		<meta charset="UTF-8" />
		# IF C_DESCRIPTION #<meta name="description" content="{SITE_DESCRIPTION}" /># ENDIF #
		<meta name="generator" content="PHPBoost" />
		# IF C_CANONICAL_URL #<link rel="canonical" href="{U_CANONICAL}" /># ENDIF #
		<meta name="viewport" content="width=device-width, initial-scale=1.0">

		# IF C_OPENGRAPH #
			<meta property="og:site_name" content="{SITE_NAME}" />
			<meta property="og:locale" content="{L_XML_LANGUAGE}" />
			<meta property="og:title" content="{PAGE_TITLE}" />
			<meta property="og:type" content="{PAGE_TYPE}" />
			# IF C_DESCRIPTION #<meta property="og:description" content="{SITE_DESCRIPTION}" /># ENDIF #
			# IF C_CANONICAL_URL #<meta property="og:url" content="{U_CANONICAL}" /># ENDIF #
			# IF C_PICTURE_URL #<meta property="og:image" content="{U_PICTURE}" /># ENDIF #
			# START og_additionnal_properties #
			<meta property="{og_additionnal_properties.ID}" content="{og_additionnal_properties.VALUE}" />
			# END og_additionnal_properties #
		# ENDIF #

		<!-- Theme CSS -->
		# IF C_CSS_CACHE_ENABLED #
			<link rel="stylesheet" href="${CSSCacheManager::get_css_path('/templates/{THEME}/theme/@import.css')}" media="screen, print" />
		# ELSE #
			<link rel="stylesheet" href="{PATH_TO_ROOT}/templates/{THEME}/theme/@import.css" type="text/css" media="screen, print" />
		# ENDIF #
		# IF C_CSS_LOGIN_DISPLAYED #<link rel="stylesheet" href="{PATH_TO_ROOT}/templates/{THEME}/theme/login.css" type="text/css" media="screen" /># ENDIF #

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
			jQuery(document).ready(function(){
				jQuery(window).scroll(function () {
				  var rupture = jQuery('#header').outerHeight() ;
				  if( jQuery(window).scrollTop() > rupture ) {
					   jQuery('#sub-header-content .cssmenu').addClass('fixed-top');
					   jQuery('#go-top').slideDown();
				  } else {
					   jQuery('#sub-header-content .cssmenu').removeClass('fixed-top');
					   jQuery('#go-top').slideUp();
				  }
			 	});
			});

			jQuery(function() {
				jQuery('a[href*="#"]:not([href="#"], [href*="?edit_comment="], [href*="?delete_comment="])').click(function() {
					if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
						var target = jQuery(this.hash);
						target = target.length ? target : jQuery('[name=' + this.hash.slice(1) +']');

						if (target.length) {
							jQuery('html, body').animate({scrollTop: target.offset().top - 74}, 1000);
							return false;
						}
					}
				});
    		});
		</script>
	</body>
</html>
