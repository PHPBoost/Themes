	# INCLUDE MAINTAIN #
		<script src="{PATH_TO_ROOT}/templates/{THEME}/js/slide-show.js"></script>
	<script src="{PATH_TO_ROOT}/templates/{THEME}/js/flaunt.js"></script>	
	<script src="{PATH_TO_ROOT}/templates/{THEME}/js/scroll-to.js"></script>


	
	<div id="top_page" /></div>	
	<div id="contenu">	
	<header id="header">
		<div id="header-gsm">
		<a id="site-name" href="{PATH_TO_ROOT}/">{SITE_NAME}</a>
		</div>
		<div id="top-header">
			<div id="compteur">
				# IF C_COMPTEUR #
				 ::&nbsp;<span>{L_VISIT} : {COMPTEUR_TOTAL}&nbsp;-&nbsp;{L_TODAY} : {COMPTEUR_DAY}</span>&nbsp;:: &nbsp; Bienvenue sur <a id="wellcome-name" href="{PATH_TO_ROOT}/">{SITE_NAME}</a> !
				# ENDIF #
			</div>
			<div id="site-infos">
				<div id="site-logo" # IF C_HEADER_LOGO #style="background: url('{HEADER_LOGO}') no-repeat;"# ENDIF #></div>
				<div id="site-name-container">
					<a id="site-name" href="{PATH_TO_ROOT}/">{SITE_NAME}</a>
					<span id="site-slogan">{SITE_SLOGAN}</span>
				</div>
			</div>
			<div id="top-header-content">
			# IF C_MENUS_HEADER_CONTENT #
				# START menus_header #
				{menus_header.MENU}
				# END menus_header #
			# ENDIF #
			</div>
			
			<div id="slider">
				 <a href="#" class="control_next"><i class="fa fa-chevron-right fa-2"></i></a>
				 <a href="#" class="control_prev"><i class="fa fa-chevron-left fa-2"></i></a>
				<ul id="slide-images">
					<li id="slide-images"><a href="index.php"><img src="{PATH_TO_ROOT}/templates/{THEME}/theme/images/slide/1.jpg"/></a></li>
					<li id="slide-images"><a href="index.php"><img src="{PATH_TO_ROOT}/templates/{THEME}/theme/images/slide/2.jpg"/></a></li>
					<li id="slide-images"><a href="index.php"><img src="{PATH_TO_ROOT}/templates/{THEME}/theme/images/slide/3.jpg"/></a></li>
					<li id="slide-images"><a href="index.php"><img src="{PATH_TO_ROOT}/templates/{THEME}/theme/images/slide/4.jpg"/></a></li>
					<li id="slide-images"><a href="index.php"><img src="{PATH_TO_ROOT}/templates/{THEME}/theme/images/slide/5.jpg"/></a></li>
				</ul>
			</div>
			
			<div id="silverbarnav">
				<a href="./index.php" class="silverbar"><i class="fa fa-home"></i> Accueil</a>
				<a href="{PATH_TO_ROOT}/news/index.php" class="silverbar"><i class="fa fa-newspaper-o"></i> News</a>
				<a href="{PATH_TO_ROOT}/articles/index.php" class="silverbar"><i class="fa fa-rss"></i> Blog</a>
				<a href="{PATH_TO_ROOT}/wiki/wiki.php" class="silverbar"><i class="fa fa-file-text-o"></i> Tutoriels</a>
				<a href="{PATH_TO_ROOT}/faq/index.php" class="silverbar"><i class="fa fa-bars"></i> Divers</a>
				<a href="{PATH_TO_ROOT}/" class="silverbar"><i class="fa fa-user-md"></i> Astuces</a>
				<a href="{PATH_TO_ROOT}/" class="silverbar"><i class="fa fa-medkit"></i> F.A.Q</a>			
				<a href="{PATH_TO_ROOT}/calendar/index.php" class="silverbar element"><i class="fa fa-calendar"></i> Calendrier</a>	
				<a href="{PATH_TO_ROOT}/" class="silverbar"><i class="fa fa-envelope"></i> Contact</a>
			</div>

		<div id="sub-header">
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
								<a href="?=portfolio">Portfolio</a>
							</li>
							<li class="nav-item">
								<a href="?=services">Services</a>
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
			
			# IF C_MENUS_SUB_HEADER_CONTENT #
				# START menus_sub_header #
				{menus_sub_header.MENU}
				# END menus_sub_header #
			# ENDIF #
			</div>
		</div>
	
		<div class="spacer"></div>
	</header>
		
	<div id="global">
		<div id="sous-global">

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

			# IF C_MENUS_TOP_FOOTER_CONTENT #
			<div id="top-footer">
				# START menus_top_footer #
				{menus_top_footer.MENU}
				# END menus_top_footer #
				<div class="spacer"></div>
			</div>
			# ENDIF #

			<div class="spacer"></div>
		</div>
	</div>
	
	</div><!-- fermeture du "Id:contenu"-->
	
	<footer id="footer">

		# IF C_MENUS_FOOTER_CONTENT #
		<div class="footer-content">
			# START menus_footer #
			{menus_footer.MENU}
			# END menus_footer #
		</div>
		# ENDIF #

		<div class="footer-infos">
			<span class="cms">
				{L_POWERED_BY} <a href="http://www.phpboost.com" title="PHPBoost">PHPBoost</a> {L_PHPBOOST_RIGHT}
			</span>
			# IF C_DISPLAY_BENCH #
			<span class="requete">
			<span class="footer-infos-separator"> | </span>{L_ACHIEVED} {BENCH}{L_UNIT_SECOND} - {REQ} {L_REQ} - {MEMORY_USED}
			</span>
			# ENDIF #
			# IF C_DISPLAY_AUTHOR_THEME #
			<span class="author">
			<span class="footer-infos-separator"> | </span>{L_THEME} {L_THEME_NAME} {L_BY}
				<a href="{U_THEME_AUTHOR_LINK}">{L_THEME_AUTHOR}</a>
			</span>
			# ENDIF #
		</div>

	</footer>
	
	<div id="menugo">
		<div id="gotop" style="display: block;">
			<a id="gotop"   href="#top_page"><i class="fa fa-chevron-up"></i></a>
		</div>
		<div id="gobottom" style="display: block;">
			<a id="gobottom" href="#bottom_page"><i class="fa fa-chevron-down"></i></a>
		</div>
	</div>
	<div id="bottom_page" /></div>
