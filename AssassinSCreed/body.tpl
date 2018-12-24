	# INCLUDE MAINTAIN #	
<script src="{PATH_TO_ROOT}/templates/{THEME}/js/flaunt.js"></script>		

<div id="header-gsm">
	<a id="site-name" href="{PATH_TO_ROOT}/">{SITE_NAME}</a>
</div>	

<div id="SuperGlobal">	

	<header id="header">
		<div id="top-header">

			<div id="top-header-content">
			# IF C_MENUS_HEADER_CONTENT #
				# START menus_header #
				{menus_header.MENU}
				# END menus_header #
			# ENDIF #
			</div>
			
		</div>
		<div id="menus">
			<ul>   
				<li><a href="#" onmouseover="_PLAYER('{PATH_TO_ROOT}/templates/{THEME}/sons/son1.ogg')"><span class="btn">Accueil</span></a></li>
				<li><a href="#" onmouseover="_PLAYER('{PATH_TO_ROOT}/templates/{THEME}/sons/son1.ogg')"><span class="btn">News</span></a></li>
				<li><a href="#" onmouseover="_PLAYER('{PATH_TO_ROOT}/templates/{THEME}/sons/son1.ogg')"><span class="btn">Forum</span></a></li>
				<li><a href="#" onmouseover="_PLAYER('{PATH_TO_ROOT}/templates/{THEME}/sons/son1.ogg')"><span class="btn">Vidéos</span></a></li>
				<li><a href="#" onmouseover="_PLAYER('{PATH_TO_ROOT}/templates/{THEME}/sons/son1.ogg')"><span class="btn">Galerie</span></a></li>
				<li><a href="#" onmouseover="_PLAYER('{PATH_TO_ROOT}/templates/{THEME}/sons/son1.ogg')"><span class="btn">Staff</span></a></li>
				<li><a href="#" onmouseover="_PLAYER('{PATH_TO_ROOT}/templates/{THEME}/sons/son1.ogg')"><span class="btn">Contact</span></a></li>
			</ul>
		</div>
			<div class="spacer"></div>
		<div id="sub-header">

			
			<div id="sub-header-content">
			# IF C_MENUS_SUB_HEADER_CONTENT #
				# START menus_sub_header #
				{menus_sub_header.MENU}
				# END menus_sub_header #
			# ENDIF #
			<section id="Motto">
				<div id="menu-title">Nenu principal</div>
				<nav  class="nav">
						<ul class="nav-list">
							<li class="nav-item">
								<a href="?=about">Accueil</a>
							</li>	
							<li class="nav-item">
								<a href="?=about">News</a>
							</li>
							<li class="nav-item">
								<a href="?=home">Divers</a>
								<ul class="nav-submenu">
									<li class="nav-submenu-item">
										<a href="?=submenu-1">Astuces</a>
									</li>
									<li class="nav-submenu-item">
										<a href="?=submenu-2">Blog</a>
									</li>
									<li class="nav-submenu-item">
										<a href="?=submenu-3">F.A.Q</a>
									</li>
									<li class="nav-submenu-item">
										<a href="?=submenu-4">Calendrier</a>
									</li>
								</ul>
							</li>
							<li class="nav-item">
								<a href="?=portfolio">Team(s)</a>
							</li>
							<li class="nav-item">
								<a href="?=services">Galerie</a>
								<ul class="nav-submenu">
									<li class="nav-submenu-item">
										<a href="?=submenu-1">Submenu item 1</a>
									</li>
									<li class="nav-submenu-item">
										<a href="?=submenu-2">Submenu item 2</a>
									</li>
									<li class="nav-submenu-item">
										<a href="?=submenu-3">Submenu item 3</a>
									</li>
									<li class="nav-submenu-item">
										<a href="?=submenu-4">Submenu item 4</a>
									</li>
								</ul>
							</li>

							<li class="nav-item">
								<a href="?=testimonials">Staff</a>
							</li>
							<li class="nav-item">
								<a href="?=contact">Contact</a>
							</li>
						</ul>
					</nav>
			</section>
			<div class="spacer"></div>			
			</div>
			<div class="spacer"></div>
		</div>
		<div class="spacer"></div>
	</header>

	<div id="global">
		# IF C_MENUS_LEFT_CONTENT #
		<aside id="menu-left">
			# START menus_left #
			{menus_left.MENU}
			# END menus_left #
		</aside>
		# ENDIF #

		<div id="main" class="# IF C_MENUS_LEFT_CONTENT #main-with-left# ENDIF ## IF C_MENUS_RIGHT_CONTENT # main-with-right# ENDIF #" role="main">
			# IF C_MENUS_TOPCENTRAL_CONTENT #
			<div id="top-content">
				# START menus_top_central #
				{menus_top_central.MENU}
				# END menus_top_central #
			</div>
			<div class="spacer"></div>
			# ENDIF #

			<div id="main-content" itemprop="mainContentOfPage">
				# INCLUDE ACTIONS_MENU #
				<nav id="breadcrumb" itemprop="breadcrumb">
					<ol>
						<li itemscope itemtype="http://data-vocabulary.org/Breadcrumb">
							<a href="{START_PAGE}" title="{L_INDEX}" itemprop="url">
								<span itemprop="title">{L_INDEX}</span>
							</a>
						</li>
						# START link_bread_crumb #
						<li itemscope itemtype="http://data-vocabulary.org/Breadcrumb" # IF link_bread_crumb.C_CURRENT # class="current" # ENDIF #>
							<a href="{link_bread_crumb.URL}" title="{link_bread_crumb.TITLE}" itemprop="url">
								<span itemprop="title">{link_bread_crumb.TITLE}</span>
							</a>
						</li>
						# END link_bread_crumb #
					</ol>
				</nav>
				# INCLUDE KERNEL_MESSAGE #
				{CONTENT}
			</div>

			# IF C_MENUS_BOTTOM_CENTRAL_CONTENT #
			<div id="bottom-content">
				# START menus_bottom_central #
				{menus_bottom_central.MENU}
				# END menus_bottom_central #
			</div>
			# ENDIF #
		</div>

		# IF C_MENUS_RIGHT_CONTENT #
		<aside id="menu-right">
			# START menus_right #
			{menus_right.MENU}
			# END menus_right #
		</aside>
		# ENDIF #

		<div class="spacer"></div>
	</div>

		# IF C_MENUS_TOP_FOOTER_CONTENT #
		<div id="top-footer">
			# START menus_top_footer #
			{menus_top_footer.MENU}
			# END menus_top_footer #
			<div class="spacer"></div>
		</div>
		# ENDIF #


	<footer id="footer">

		# IF C_MENUS_FOOTER_CONTENT #
		<div class="footer-content">
			# START menus_footer #
			{menus_footer.MENU}
			# END menus_footer #
		</div>
		# ENDIF #

		<div class="footer-infos">
			<span>
				{L_POWERED_BY} <a href="https://www.phpboost.com" title="{L_PHPBOOST_LINK}">PHPBoost</a> {L_PHPBOOST_RIGHT}
			</span>
			# IF C_DISPLAY_BENCH #
			<span><span class="footer-infos-separator"> | </span>{L_ACHIEVED} {BENCH}{L_UNIT_SECOND} - {REQ} {L_REQ} - {MEMORY_USED}
			</span>
			# ENDIF #
			# IF C_DISPLAY_AUTHOR_THEME #
			<span><span class="footer-infos-separator"> | </span>{L_THEME} {L_THEME_NAME} {L_BY} <a href="{U_THEME_AUTHOR_LINK}">{L_THEME_AUTHOR} | EDN</a></span>
			# ENDIF #
			# IF C_VISIT_COUNTER #
			<span><span class="footer-infos-separator"> | </span><span>{L_VISIT} : {VISIT_COUNTER_TOTAL}&nbsp;-&nbsp;{L_TODAY} : {VISIT_COUNTER_DAY}</span>
			# ENDIF #
		</div>

	</footer>
</div> <!-- la fin du SuperGlobal-->	
<a id="scroll-to-top" class="scroll-to" href="#"><i class="fa fa-chevron-up"></i></a>

<script language="Javascript">
function _PLAYER(filelocation) {
    var odyo = document.createElement('audio');
    odyo.setAttribute('src', filelocation); 
    odyo.play();
}
</script>
	