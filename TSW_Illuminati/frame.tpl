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
		<link rel="stylesheet" href="${CSSCacheManager::get_css_path('/templates/default/theme/default.css;/kernel/lib/css/font-awesome/css/font-awesome.css;/kernel/lib/css/font-awesome-animation/css/font-awesome-animation.css;/kernel/lib/js/lightcase/css/lightcase.css;/templates/{THEME}/theme/design.css;/templates/{THEME}/theme/global.css;/templates/{THEME}/theme/content.css;/templates/{THEME}/theme/cssmenu.css')}" type="text/css" media="screen, print" />
		# ELSE #
		<link rel="stylesheet" href="{PATH_TO_ROOT}/templates/default/theme/default.css" type="text/css" media="screen, print" />
		<link rel="stylesheet" href="{PATH_TO_ROOT}/kernel/lib/css/font-awesome/css/font-awesome.css" />
		<link rel="stylesheet" href="{PATH_TO_ROOT}/kernel/lib/css/font-awesome-animation/css/font-awesome-animation.css" />
		<link rel="stylesheet" href="{PATH_TO_ROOT}/kernel/lib/js/lightcase/css/lightcase.css" />
		<link rel="stylesheet" href="{PATH_TO_ROOT}/templates/{THEME}/theme/design.css" type="text/css" media="screen" />
		<link rel="stylesheet" href="{PATH_TO_ROOT}/templates/{THEME}/theme/global.css" type="text/css" media="screen, print" />
		<link rel="stylesheet" href="{PATH_TO_ROOT}/templates/{THEME}/theme/content.css" type="text/css" media="screen, print" />
		<link rel="stylesheet" href="{PATH_TO_ROOT}/templates/{THEME}/theme/cssmenu.css" type="text/css" media="screen" />
		# ENDIF #
		
		<link rel='stylesheet' href='http://fonts.googleapis.com/css?family=Josefin+Sans&subset=latin,latin-ext'  type='text/css'>
		
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
	</body>
</html>