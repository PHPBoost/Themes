	# INCLUDE MAINTAIN #
	<script src="{PATH_TO_ROOT}/templates/{THEME}/js/google-font.js"></script>
	<script src="{PATH_TO_ROOT}/templates/{THEME}/js/slide.js"></script>
	<script src="{PATH_TO_ROOT}/templates/{THEME}/js/flaunt.js"></script>	
	<script src="{PATH_TO_ROOT}/templates/{THEME}/js/scroll-to.js"></script>

	<div id="top_page"></div>
	
	<header id="header">
		<div id="header-gsm">
		<a id="site-name-gsm" href="{PATH_TO_ROOT}/">{SITE_NAME}</a>
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
		<div id="top-header">
			<div id="site-infos">
				<div id="site-logo" # IF C_HEADER_LOGO #style="background: url({HEADER_LOGO}) no-repeat;"# ENDIF #></div>
				<div id="site-name-container">
					<a id="site-name" href="{PATH_TO_ROOT}/">{SITE_NAME}</a>
					<span id="site-slogan">{SITE_SLOGAN}</span>
				</div>
			</div>
		</div>
		<div id="top-header-content">
		# IF C_MENUS_HEADER_CONTENT #
			# START menus_header #
			{menus_header.MENU}
			# END menus_header #
		# ENDIF #
		</div>
		<div class="spacer"></div>
		
	</header>
	<br />		
	<div id="nav">
		<ul>
			<li id="nav_item_accueil"><a class="nav_item_accueil" href="{START_PAGE}"  title="Accueil"></a></li>
			<li id="nav_item_actualites"><a class="nav_item_actualites" href="http://www.thesecretworld.com/french/gameplay" title="Actualités"></a></li>
			<li id="nav_item_articles"><a class="nav_item_articles" href="#" title="Articles"></a></li>
			<li id="nav_item_forum" ><a class="nav_item_forum" href="#" title="Forum"></a></li>
			<li id="nav_item_staff"><a class="nav_item_staff" href="#" title="Le staff"></a></li>
			<li id="nav_item_documentation"><a class="nav_item_documentation" href="#" title="documentation"></a></li>
			<li id="nav_item_faq" ><a class="nav_item_faq" href="#" title="Foire Aux Questions"></a></li>
			<li id="nav_item_events" class="last"><a class="nav_item_events" href="#" title="Events"></a></li>
		</ul>
	</div>	
	
	<div id="global"
			<br />	
		<div id="slideshow">
			<div class="fadein">
				<img src="{PATH_TO_ROOT}/templates/{THEME}/theme/images/slide/1.png"/>
				<img src="{PATH_TO_ROOT}/templates/{THEME}/theme/images/slide/2.png"/>
				<img src="{PATH_TO_ROOT}/templates/{THEME}/theme/images/slide/3.png"/>
				<img src="{PATH_TO_ROOT}/templates/{THEME}/theme/images/slide/4.png"/>
				<img src="{PATH_TO_ROOT}/templates/{THEME}/theme/images/slide/5.png"/>
				<img src="{PATH_TO_ROOT}/templates/{THEME}/theme/images/slide/6.png"/>		
				<img src="{PATH_TO_ROOT}/templates/{THEME}/theme/images/slide/7.png"/>
				<img src="{PATH_TO_ROOT}/templates/{THEME}/theme/images/slide/8.png"/>					
			</div>
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
							<ol itemscope itemtype="http://schema.org/BreadcrumbList">
								<li itemprop="itemListElement" itemscope itemtype="http://data-vocabulary.org/ListItem">
									<a href="{START_PAGE}" itemprop="item">
										<span itemprop="name">${LangLoader::get_message('home', 'main')}</span>
										<meta itemprop="position" content="1" />
									</a>
								</li>
								# START link_bread_crumb #
									<li itemprop="itemListElement" itemscope itemtype="http://data-vocabulary.org/ListItem" # IF link_bread_crumb.C_CURRENT # class="current" # ENDIF #>
										<a href="{link_bread_crumb.URL}" itemprop="item">
											<span itemprop="name">{link_bread_crumb.TITLE}</span>
											<meta itemprop="position" content="{link_bread_crumb.POSITION}" />
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
			<span>
				<p>
					<br />Site fan non officiel <a href="http://www.thesecretworld.com/french/">"The Secret World"</a>.
					&nbsp; Toutes les images, les marques déposées et copyrights sont la propriété de leurs auteurs respectifs. 
				</p>
			</span>	
			<span class="cms">
				{L_POWERED_BY} <a href="https://www.phpboost.com" title="PHPBoost">PHPBoost {PHPBOOST_VERSION}</a> {L_PHPBOOST_RIGHT}
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