<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="{L_XML_LANGUAGE}" >
	<head>
		<title>{SITE_NAME} : {TITLE}</title>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
		<meta name="description" content="{SITE_DESCRIPTION}" />
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
	
		# INCLUDE MAINTAIN #

		<div id="global">
			<div id="header_container">
				<div id="header">
					<div id="logo" style="font-size:14px;">
						<span class="logo-details">Mon site</span>
						<a href="{START_PAGE}" title="Remplacer par le nom de votre site"><img src="{PATH_TO_ROOT}/templates/{THEME}/theme/images/logo1.png" alt="logo" style=""></a>
					</div>
					
					<div id="nav">
						<!-- BEGIN NAV -->	
						<ul id="menu-header" class="menu"><li><a href="#">Accueil</a></li>
									
						<li id="menu-item"><a href="#">Forum</a></li>
						<li id="menu-item"><a href="#">Informatique</a>
							<ul class="sub-menu">
								<li id="menu-item"><a href="#">Tutoriels 1</a></li>
								<li id="menu-item"><a href="#">Tutoriels 2</a></li>
								<li id="menu-item"><a href="#">Tutoriels 3</a></li>
								<li id="menu-item"><a href="#">Tutoriels 4</a></li>
							</ul>
						</li>
		
						<li id="menu-item"><a href="#">Plate-forme de chat</a>
							<ul class="sub-menu">
								<li id="menu-item"><a href="#">Menu 1</a></li>
								<li id="menu-item"><a href="#">Menu 2</a></li>
								<li id="menu-item"><a href="#">Menu 3</a></li>
								<li id="menu-item"><a href="#">Menu 4</a></li>
								<li id="menu-item"><a href="#">Menu 5</a></li>
								<li id="menu-item"><a href="#">Menu 6</a></li>
								<li id="menu-item"><a href="#">Menu 7</a></li>
								<li id="menu-item"><a href="#">Menu 8</a></li>
								<li id="menu-item"><a href="#">Menu 9</a></li>
							</ul>
						</li>
		
						<li id="menu-item"><a href="#">Tutoriels</a></li>
						<!-- END NAV -->	
					</div>
					
				</div>
			</div>
			<div class="spacer"></div>
			
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