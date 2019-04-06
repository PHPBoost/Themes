	# INCLUDE MAINTAIN #
	<script src="{PATH_TO_ROOT}/templates/{THEME}/js/google-font.js"></script>
	<script src="{PATH_TO_ROOT}/templates/{THEME}/js/slide.js"></script>
	<script src="{PATH_TO_ROOT}/templates/{THEME}/js/flaunt.js"></script>
	<script src="{PATH_TO_ROOT}/templates/{THEME}/js/scroll-to.js"></script>

	<div id="top_page"></div>

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



	<header id="header">
		<div id="header-gsm">
		<a id="site-name-gsm" href="{PATH_TO_ROOT}/">{SITE_NAME}</a>
		</div>
		<div id="top-header">
			<div id="site-infos">
				<div id="site-logo" # IF C_HEADER_LOGO #style="background-image: url({HEADER_LOGO});"# ENDIF #></div>
				<div id="site-name-container">
					<a id="site-name" href="{PATH_TO_ROOT}/">{SITE_NAME}</a>
					<span id="site-slogan">{SITE_SLOGAN}</span>
				</div>
			</div>
		</div>
		<div class="spacer"></div>
	</header>
	<br />
	<div id="global">
		<div id="top-header-content">
		# IF C_MENUS_HEADER_CONTENT #
			# START menus_header #
			{menus_header.MENU}
			# END menus_header #
		# ENDIF #
		</div>
			<br />
		<div id="slideshow">
			<div class="fadein">
				<img src="{PATH_TO_ROOT}/templates/{THEME}/theme/images/slide/1.png"/>
				<img src="{PATH_TO_ROOT}/templates/{THEME}/theme/images/slide/2.png"/>
				<img src="{PATH_TO_ROOT}/templates/{THEME}/theme/images/slide/3.png"/>
			</div>
		</div>
		<div id="menus">
			<ul>
				<li><a href="#"><span class="actu">Actualités</span></a></li>
				<li><a href="#"><span class="frum">Forum</span></a></li>
				<li><a href="#"><span class="vids">Vidéos</span></a></li>
				<li><a href="#"><span class="galr">Galerie</span></a></li>
			</ul>
		</div>
			<br />
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

					<div id="menu-mess">
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
										<span itemprop="title"><img src="{PATH_TO_ROOT}/templates/{THEME}/theme/images/breadcrumb.png" alt="" class="valign_middle" /> {link_bread_crumb.TITLE}</span>
									</a>
								</li>
								# END link_bread_crumb #
							</ol>
						</nav>
						# INCLUDE KERNEL_MESSAGE #
					</div>
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

	<footer id="footer">

		# IF C_MENUS_FOOTER_CONTENT #
		<div class="footer-content">
			# START menus_footer #
			{menus_footer.MENU}
			# END menus_footer #
		</div>
		# ENDIF #

		<div class="footer-infos">
			<div id="social">
				<ul>
					<li><a href="http://www.facebook.com/RIFTgame" target="_blank"><span><div id="fb" class="fade"></div></span></a></li>
					<li><a href="http://twitter.com/riftgame"target="_blank"><span><div id="twt" class="fade"></div></span></a></li>
					<li><a href="http://www.youtube.com/user/RiftMMO"target="_blank"><span><div id="yt" class="fade"></div></span></a></li>
					<li><a href="http://twitch.tv/Trionworlds" target="_blank"><span><div id="twitch" class="fade"></div></span></a></li>
				</ul>
			</div>
			<span class="cms">
				{L_POWERED_BY} <a href="https://www.phpboost.com" title="{L_PHPBOOST_LINK}">PHPBoost</a> {L_PHPBOOST_RIGHT}
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
			# IF C_VISIT_COUNTER #
				<span class="footer-infos-separator"> | </span><span class="visit-counter">{L_VISIT} : {VISIT_COUNTER_TOTAL}&nbsp;-&nbsp;{L_TODAY} : {VISIT_COUNTER_DAY}</span>
			# ENDIF #
			<div class="corp-logo">
				<a target="_blank" href="http://trionworlds.com/fr/"><img alt="TRION Worlds" src="./templates/{THEME}/theme/images/TRION.png"></a>
			</div>
		</div>
	</footer>

	<div id="menugo">
		<div id="gotop" style="display: block;">
			<a class="js-scrollTo" href="#top_page"><i class="fa fa-chevron-up"></i></a>
		</div>
		<div id="gobottom" style="display: block;">
			<a class="js-scrollTo" href="#bottom_page"><i class="fa fa-chevron-down"></i></a>
		</div>
	</div>
	<div id="bottom_page"></div>
