<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="{L_XML_LANGUAGE}" >
	<head>
		<title>{TITLE} : {SITE_NAME} : Tchat gratuit sans inscription pour ados et adultes</title>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
		<meta name="description" content="{SITE_DESCRIPTION}" />
		<meta name="keywords" content="{SITE_KEYWORD}" />
		<meta http-equiv="Content-Language" content="{L_XML_LANGUAGE}" />
		<meta name='OWNER' CONTENT='twibook.net@gmail.com'>
		<meta name='AUTHOR' CONTENT='Myster'>
		<mata name='LANGUAGE' CONTENT='fr'>
		<meta name='robots' CONTENT='all'>
		<!-- Default CSS -->
		<link rel="stylesheet" href="{PATH_TO_ROOT}/templates/default/theme/default.css" type="text/css" media="screen, print, handheld" />
		<link rel="stylesheet" href="{PATH_TO_ROOT}/templates/default/framework/content/syndication/syndication.css" type="text/css" media="screen, print, handheld" />
		
		<!-- Theme CSS -->
		# IF C_CSS_CACHE_ENABLED #
		<link rel="stylesheet" href="{PATH_TO_ROOT}/kernel/css_cache.php?name=theme-{THEME}&files=
		/templates/{THEME}/theme/design.css;
		/templates/{THEME}/theme/global.css;
		/templates/{THEME}/theme/generic.css;
		/templates/{THEME}/theme/superfish.css;
		/templates/{THEME}/theme/content.css" type="text/css" media="screen, print, handheld" />
		# ELSE #
		<link rel="stylesheet" href="{PATH_TO_ROOT}/templates/{THEME}/theme/design.css" type="text/css" media="screen" />
		<link rel="stylesheet" href="{PATH_TO_ROOT}/templates/{THEME}/theme/global.css" type="text/css" media="screen, print, handheld" />
		<link rel="stylesheet" href="{PATH_TO_ROOT}/templates/{THEME}/theme/generic.css" type="text/css" media="screen, print, handheld" />
		<link rel="stylesheet" href="{PATH_TO_ROOT}/templates/{THEME}/theme/content.css" type="text/css" media="screen, print, handheld" />
		<link rel="stylesheet" href="{PATH_TO_ROOT}/templates/{THEME}/theme/superfish.css" type="text/css" media="screen, print, handheld" />

		# ENDIF #
		
		<!-- Modules CSS -->
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
		</script>
		<script type="text/javascript" src="{PATH_TO_ROOT}/kernel/lib/js/scriptaculous/prototype.js"></script>
		<script type="text/javascript" src="{PATH_TO_ROOT}/kernel/lib/js/scriptaculous/scriptaculous.js"></script>
		<script type="text/javascript" src="{PATH_TO_ROOT}/kernel/lib/js/phpboost/global.js"></script>
		<script type="text/javascript" src="{PATH_TO_ROOT}/kernel/lib/js/lightbox/lightbox.js"></script>

	</head>
	
<body>
<div id="scroll_top_page"></div>
	# INCLUDE MAINTAIN #

<div class="header_res">
	<div class="logo"> <a href="/index.php">{SITE_NAME}</a> </div>
	 <nav> 
	  <ul id="nav" class="sf-menu">
		  <li><a href="" class="menu_navigation"><span>Accueil</span></a></li>
		  <li><a href="" class="menu_navigation"><span>Blog</span></a></li>
		  <li><a href="" class="menu_navigation"><span>Forum</span></a></li>
		  <li><a href="" class="menu_navigation"><span>Chat</span></a></li>
		  <li><a href="" class="menu_navigation"><span>Sondages</span></a></li>
		  <li><a href="" class="menu_navigation"><span>Livre d'or</span></a></li>
		  <li><a href="" class="menu_navigation"><span>Partenaires</span></a></li>
		  <li><a href="" class="menu_navigation"><span>Contact</span></a></li>
	  </ul>
  </nav>
	<div class="spacer"></div>
</div>

<div id="global">

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
		<div class="spacer"></div>
		# ENDIF #
		<div id="main_content">&nbsp;
			<div id="links">
				&nbsp;&nbsp;<a class="small_link" href="{START_PAGE}" title="{L_INDEX}">{L_INDEX}</a>
				# START link_bread_crumb #
		<a class="small_link" href="{link_bread_crumb.URL}" title="{link_bread_crumb.TITLE}">{link_bread_crumb.TITLE}</a>
				# END link_bread_crumb #
			</div>