<!DOCTYPE html>
<html lang="{@common.xml.lang}"# IF C_OPENGRAPH # prefix="og: https://ogp.me/ns#"# ENDIF #>
	<head>
		<meta charset="utf-8" />
		<title>{TITLE}</title>
		# IF C_DESCRIPTION #<meta name="description" content="{SITE_DESCRIPTION}" /># ENDIF #
		<meta name="generator" content="PHPBoost" />
		# IF C_CANONICAL_URL #<link rel="canonical" href="{U_CANONICAL}" /># ENDIF #
		<meta name="viewport" content="width=device-width, initial-scale=1.0">

		# IF C_OPENGRAPH #
			<meta property="og:site_name" content="{SITE_NAME}" />
			<meta name="twitter:card" content="{SITE_NAME}">
			<meta property="og:locale" content="{@common.xml.lang}" />
			<meta property="og:title" content="{PAGE_TITLE}" />
			<meta name="twitter:title" content="{PAGE_TITLE}">
			<meta property="og:type" content="{PAGE_TYPE}" />
			# IF C_DESCRIPTION #
				<meta property="og:description" content="{SITE_DESCRIPTION}" />
				<meta name="twitter:description" content="{SITE_DESCRIPTION}">
			# ENDIF #
			# IF C_CANONICAL_URL #<meta property="og:url" content="{U_CANONICAL}" /># ENDIF #
			# IF C_PICTURE_URL #
				<meta property="og:image" content="{U_PICTURE}" />
				<meta name="twitter:image" content="{U_PICTURE}">
			# ENDIF #
			# START og_additionnal_properties #
				<meta property="{og_additionnal_properties.ID}" content="{og_additionnal_properties.VALUE}" />
			# END og_additionnal_properties #
		# ENDIF #

		<!-- Theme CSS -->
		# IF C_CSS_CACHE_ENABLED #
			<link rel="stylesheet" href="${CSSCacheManager::get_css_path('/templates/{THEME}/theme/@import.css')}" type="text/css" media="screen, print" />
		# ELSE #
			<link rel="stylesheet" href="{PATH_TO_ROOT}/templates/{THEME}/theme/@import.css" type="text/css" />
		# ENDIF #
		# IF C_CSS_LOGIN_DISPLAYED #<link rel="stylesheet" href="{PATH_TO_ROOT}/templates/__default__/theme/login.css" type="text/css" media="screen" /># ENDIF #

		<!-- Modules CSS -->
		{MODULES_CSS}

		# IF C_FAVICON #
			<link rel="icon" href="{U_FAVICON}" type="{FAVICON_TYPE}" />
		# ENDIF #

		# INCLUDE JS_TOP #
	</head>

	<body itemscope="itemscope" itemtype="https://schema.org/WebPage">
		<a href="#global" aria-label="{@common.go.to.content}"></a>
		<div id="push-container" class="body-wrapper">
			# INCLUDE BODY #
		</div>
		# INCLUDE JS_BOTTOM #
		<script src="{PATH_TO_ROOT}/templates/{THEME}/js/sticky-header.js"></script>
		<script>
			$(document).ready(function(){
				$('.sticky').stickMe();
			})
		</script>
	</body>
</html>
