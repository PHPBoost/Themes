<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="{L_XML_LANGUAGE}" >
	<head>
		<title>{SITE_NAME} : {TITLE}</title>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
		<meta name="description" content="{SITE_DESCRIPTION} {TITLE}" />
		<meta name="keywords" content="{SITE_KEYWORD}" />
		<meta http-equiv="Content-Language" content="{L_XML_LANGUAGE}" />
		<!-- Default CSS -->
		<link rel="stylesheet" href="{PATH_TO_ROOT}/templates/default/theme/default.css" type="text/css" media="screen, print, handheld" />
		<link rel="stylesheet" href="{PATH_TO_ROOT}/templates/default/framework/content/syndication/syndication.css" type="text/css" media="screen, print, handheld" />
		<!-- Theme CSS -->
		# IF C_CSS_CACHE_ENABLED #
		<link rel="stylesheet" href="{PATH_TO_ROOT}/kernel/css_cache.php?name=theme-{THEME}&files=
		/templates/{THEME}/theme/design.css;
		/templates/{THEME}/theme/global.css;
		/templates/{THEME}/theme/generic.css;
		/templates/{THEME}/theme/content.css" type="text/css" media="screen, print, handheld" />
		# ELSE #
		<link rel="stylesheet" href="{PATH_TO_ROOT}/templates/{THEME}/theme/design.css" type="text/css" media="screen" />
		<link rel="stylesheet" href="{PATH_TO_ROOT}/templates/{THEME}/theme/global.css" type="text/css" media="screen, print, handheld" />
		<link rel="stylesheet" href="{PATH_TO_ROOT}/templates/{THEME}/theme/generic.css" type="text/css" media="screen, print, handheld" />
		<link rel="stylesheet" href="{PATH_TO_ROOT}/templates/{THEME}/theme/content.css" type="text/css" media="screen, print, handheld" />
		# ENDIF #
		<!-- Alternative CSS -->
		{MODULES_CSS}

		# IF C_FAVICON #
		<link rel="shortcut icon" href="{FAVICON}" type="{FAVICON_TYPE}" />
		# ENDIF #
		
		<script type="text/javascript">
		<!--
			var PATH_TO_ROOT = "{PATH_TO_ROOT}";
			var TOKEN = "{TOKEN}";
			var THEME = "{THEME}";
			var LANG = "{LANG}";
		-->
		function createCookie_MP(name, value)
		{
		    document.cookie = name + "=" + value + "; path=/";
		}
		 
		function readCookie_MP(name) {
		    var nameEQ = name + "=";
		    var ca = document.cookie.split(';');
		 
		    for(var i=0; i < ca.length; i++) {
		            var c = ca[i];
		 
		            while (c.charAt(0) == ' ') c = c.substring(1, c.length);
		                    if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length, c.length);
		    }
		 
		    return null;
		}
		 
		var nb = {NBR_MP};
		 
		if (nb > 0)
			if (!readCookie_MP("new_mp_pbt"))
		    {
		            createCookie_MP("new_mp_pbt", nb);
		 
		            if (nb > 1)
		            	alert("Vous avez " + nb + " nouveaux messages !");
		            else
		                alert("Vous avez " + nb + " nouveau message !");
		    }
		else
		    if (readCookie_MP("new_mp_pbt") != nb)
		            createCookie_MP("new_mp_pbt", "");
		</script>
		
		<script type="text/javascript" src="{PATH_TO_ROOT}/kernel/lib/js/scriptaculous/prototype.js"></script>
		<script type="text/javascript" src="{PATH_TO_ROOT}/kernel/lib/js/scriptaculous/scriptaculous.js"></script>
		<script type="text/javascript" src="{PATH_TO_ROOT}/kernel/lib/js/phpboost/global.js"></script>
		<script type="text/javascript" src="{PATH_TO_ROOT}/kernel/lib/js/lightbox/lightbox.js"></script>
	</head>
	<body>
	
	# IF C_HEADER_LOGO #
	<style type="text/css">
		div#header_container {
   			background: url('{HEADER_LOGO}') no-repeat;
		}
	</style>
	# ENDIF #

	# INCLUDE  MAINTAIN #

<div id="global">
	<div id="header_container">
		<div id="header">
			<h1 style="display:none;font-size:9px;">{SITE_NAME}</h1>
			# IF C_MENUS_HEADER_CONTENT #
			{MENUS_HEADER_CONTENT}
			# ENDIF #
		</div>
		<div id="sub_header">
			# IF C_MENUS_SUB_HEADER_CONTENT #
			{MENUS_SUB_HEADER_CONTENT}
			# ENDIF #
		</div>
		<div class="spacer"></div>
	</div>
	
	# IF C_COMPTEUR #
	<div id="compteur">
		<span class="text_strong">{L_VISIT}:</span> {COMPTEUR_TOTAL}
		<br />
		<span class="text_strong">{L_TODAY}:</span> {COMPTEUR_DAY}
	</div>
	# ENDIF #
	
	# IF C_MENUS_LEFT_CONTENT #
	<div id="left_menu">
		{MENUS_LEFT_CONTENT}
	</div>
	# ENDIF #
	
	# IF C_MENUS_RIGHT_CONTENT #
	<div id="right_menu">
		{MENUS_RIGHT_CONTENT}
	</div>
	# ENDIF #
	
	<div id="main">
		# IF C_MENUS_TOPCENTRAL_CONTENT #
		<div id="top_contents">
			{MENUS_TOPCENTRAL_CONTENT}
		</div>
		# ENDIF #
		<div id="main_content">&nbsp;
			<div id="links">
				&nbsp;&nbsp;<a class="small_link" href="{START_PAGE}" title="{L_INDEX}">{L_INDEX}</a>
				# START link_bread_crumb #
				<img src="{PATH_TO_ROOT}/templates/{THEME}/images/breadcrumb.png" alt="" class="valign_middle" /> <a class="small_link" href="{link_bread_crumb.URL}" title="{link_bread_crumb.TITLE}">{link_bread_crumb.TITLE}</a>
				# END link_bread_crumb #
			</div>