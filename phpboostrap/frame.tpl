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
		<link rel="stylesheet" href="${CSSCacheManager::get_css_path('/kernel/lib/css/font-awesome/css/font-awesome.css;/kernel/lib/css/font-awesome-animation/css/font-awesome-animation.css;/kernel/lib/js/lightcase/css/lightcase.css;/templates/{THEME}/theme/bootstrap.css;/templates/{THEME}/theme/bootstrap-theme.css;/templates/{THEME}/theme/phpboostrap.css;/templates/{THEME}/theme/phpboostrap-theme.css;/templates/{THEME}/theme/colors.css;/templates/{THEME}/theme/sld.css')}" type="text/css" media="screen, print" />
		# ELSE #
		<link rel="stylesheet" href="{PATH_TO_ROOT}/kernel/lib/css/font-awesome/css/font-awesome.css" />
		<link rel="stylesheet" href="{PATH_TO_ROOT}/kernel/lib/css/font-awesome-animation/css/font-awesome-animation.css" />
		<link rel="stylesheet" href="{PATH_TO_ROOT}/kernel/lib/js/lightcase/css/lightcase.css" />
		<link rel="stylesheet" href="{PATH_TO_ROOT}/templates/{THEME}/theme/bootstrap.css" type="text/css" media="screen" />
		<link rel="stylesheet" href="{PATH_TO_ROOT}/templates/{THEME}/theme/bootstrap-theme.css" type="text/css" media="screen" />
		<link rel="stylesheet" href="{PATH_TO_ROOT}/templates/{THEME}/theme/phpboostrap.css" type="text/css" media="screen" />
		<link rel="stylesheet" href="{PATH_TO_ROOT}/templates/{THEME}/theme/phpboostrap-theme.css" type="text/css" media="screen" />
		<link rel="stylesheet" href="{PATH_TO_ROOT}/templates/{THEME}/theme/colors.css" type="text/css" media="screen" />
		<link rel="stylesheet" href="{PATH_TO_ROOT}/templates/{THEME}/theme/sld.css" type="text/css" media="screen" />
		# ENDIF #
		# IF C_CSS_LOGIN_DISPLAYED #<link rel="stylesheet" href="{PATH_TO_ROOT}/templates/{THEME}/theme/phpboostrap.css" type="text/css" media="screen" /># ENDIF #

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
		<script src="{PATH_TO_ROOT}/templates/{THEME}/js/bootstrap.min.js"></script>
		<script src="{PATH_TO_ROOT}/templates/{THEME}/js/navbar.js"></script>
		<script src="{PATH_TO_ROOT}/templates/{THEME}/js/bootstrap-grid-columns.js"></script>
	</body>
</html>