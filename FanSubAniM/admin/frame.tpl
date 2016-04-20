<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="{L_XML_LANGUAGE}">
	<head>
		<title>{TITLE}</title>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
		<meta http-equiv="Content-Language" content="{L_XML_LANGUAGE}" />

		<!-- Theme CSS -->
		# IF C_CSS_CACHE_ENABLED #
		<link rel="stylesheet" href="${CSSCacheManager::get_css_path('/templates/{THEME}/admin/default.css;/kernel/lib/css/font-awesome/css/font-awesome.css;/templates/{THEME}/admin/admin_design.css;/templates/{THEME}/admin/admin_global.css;/templates/{THEME}/admin/admin_content.css;/templates/{THEME}/admin/modules/BBCode/bbcode.css')}" type="text/css" media="screen, print, handheld" />
		# ELSE #
		<link rel="stylesheet" href="{PATH_TO_ROOT}/templates/{THEME}/admin/default.css" type="text/css" media="screen" />
		<link rel="stylesheet" href="{PATH_TO_ROOT}/kernel/lib/css/font-awesome/css/font-awesome.css" />
		<link rel="stylesheet" href="{PATH_TO_ROOT}/templates/{THEME}/admin/admin_design.css" type="text/css" media="screen" />
		<link rel="stylesheet" href="{PATH_TO_ROOT}/templates/{THEME}/admin/admin_global.css" type="text/css" media="screen" />
		<link rel="stylesheet" href="{PATH_TO_ROOT}/templates/{THEME}/admin/admin_content.css" type="text/css" media="screen" />
		# ENDIF #
		
		<!-- Modules CSS | Modigfié par EDN / Easy-Design.Net -->
		<link rel="stylesheet" href="{PATH_TO_ROOT}/templates/{THEME}/admin/modules/BBCode/bbcode.css" type="text/css" media="screen" />
		
		# IF C_FAVICON #
		<link rel="shortcut icon" href="{FAVICON}" type="{FAVICON_TYPE}" />
		# ENDIF #
		
		# INCLUDE JS_TOP #
	</head>
	<body>
		# INCLUDE BODY #
		# INCLUDE JS_BOTTOM #
	</body>
</html>