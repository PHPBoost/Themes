# INCLUDE MAINTAIN #
<header id="header" class="content-wrapper">
	<div id="inner-header">
		<div id="inner-header-container">
			<div id="site-infos" role="banner">
				<div id="site-logo" # IF C_HEADER_LOGO #style="background-image: url({U_HEADER_LOGO});"# ENDIF #></div>
				<div id="site-name-container">
					<a class="offload" id="site-name" href="{PATH_TO_ROOT}/">{SITE_NAME}</a>
					<span id="site-slogan">{SITE_SLOGAN}</span>
				</div>
			</div>
			# IF C_VISIT_COUNTER #
				<div id="visit-countainer" class="hidden-small-screens">
					<div class="visit-counter-total">
						<span>{@user.guests} : <span class="pinned visitor small">{VISIT_COUNTER_TOTAL}</span></span>
						&nbsp;<span>{@date.today} : <span class="pinned visitor small">{VISIT_COUNTER_DAY}</span></span>
					</div>
				</div>
			# ENDIF #
			# IF C_MENUS_HEADER_CONTENT #
				<div id="inner-header-content">
					# START menus_header #
						{menus_header.MENU}
					# END menus_header #
					<div class="spacer"></div>
				</div>
			# ENDIF #
		</div>
	</div>
	<div id="top-header">
		# IF C_MENUS_TOP_HEADER_CONTENT #
			<div id="top-header-content">
				# START menus_top_header #
					{menus_top_header.MENU}
				# END menus_top_header #
				<div class="spacer"></div>
			</div>
		# ENDIF #
	</div>
	<div id="slider" class="demo">
		<a href="#" class="slide-control slide-next"><i class="fa fa-chevron-right fa-2x"></i></a>
		<a href="#" class="slide-control slide-prev"><i class="fa fa-chevron-left fa-2x"></i></a>
		<div class="slide-container">
			<div class="slide-item"><a href="index.php"><img src="{PATH_TO_ROOT}/templates/{THEME}/theme/images/slide/1.jpg"/></a></div>
			<div class="slide-item"><a href="index.php"><img src="{PATH_TO_ROOT}/templates/{THEME}/theme/images/slide/2.jpg"/></a></div>
			<div class="slide-item"><a href="index.php"><img src="{PATH_TO_ROOT}/templates/{THEME}/theme/images/slide/3.jpg"/></a></div>
			<div class="slide-item"><a href="index.php"><img src="{PATH_TO_ROOT}/templates/{THEME}/theme/images/slide/4.jpg"/></a></div>
			<div class="slide-item"><a href="index.php"><img src="{PATH_TO_ROOT}/templates/{THEME}/theme/images/slide/5.jpg"/></a></div>
			<div class="slide-item"><a href="index.php"><img src="{PATH_TO_ROOT}/templates/{THEME}/theme/images/slide/6.jpg"/></a></div>
		</div>
	</div>
	<div id="sub-header">
		# IF C_MENUS_SUB_HEADER_CONTENT #
			<div id="sub-header-content">
				# START menus_sub_header #
					{menus_sub_header.MENU}
				# END menus_sub_header #
				<div class="spacer"></div>
			</div>
		# ENDIF #
	</div>
	<div class="spacer"></div>
</header>

<main id="global" class="content-preloader" role="main">
	<div id="global-container" class="content-wrapper">
		# IF C_MENUS_LEFT_CONTENT #
			<aside id="menu-left" class="aside-menu# IF C_MENUS_RIGHT_CONTENT # narrow-menu narrow-menu-left# ENDIF #">
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
					<ol itemscope itemtype="https://schema.org/BreadcrumbList">
						<li itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem">
							<a class="offload" href="{START_PAGE}" itemprop="item">
								<span itemprop="name">{@common.home}</span>
								<meta itemprop="position" content="1" />
							</a>
						</li>
						# START link_bread_crumb #
							<li itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem" # IF link_bread_crumb.C_CURRENT # class="current" # ENDIF #>
								<a class="offload" href="{link_bread_crumb.URL}" itemprop="item">
									<span itemprop="name">{link_bread_crumb.TITLE}</span>
									<meta itemprop="position" content="{link_bread_crumb.POSITION}" />
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
			<aside id="menu-right" class="aside-menu# IF C_MENUS_LEFT_CONTENT # narrow-menu narrow-menu-right# ENDIF #">
				# START menus_right #
					{menus_right.MENU}
				# END menus_right #
			</aside>
		# ENDIF #
	</div>

</main>

<footer id="footer" class="content-wrapper">

	# IF C_MENUS_TOP_FOOTER_CONTENT #
		<div id="top-footer">
			# START menus_top_footer #
				{menus_top_footer.MENU}
			# END menus_top_footer #
			<div class="spacer"></div>
		</div>
	# ENDIF #

	# IF C_MENUS_FOOTER_CONTENT #
		<div id="footer-content">
			# START menus_footer #
				{menus_footer.MENU}
			# END menus_footer #
		</div>
	# ENDIF #

	<div id="footer-infos" role="contentinfo">
		<span class="footer-infos-powered-by">{@common.powered.by} <i class="fa iboost fa-iboost-logo" aria-hidden="true"></i> <a class="offload" href="https://www.phpboost.com" aria-label="{@common.phpboost.link}">PHPBoost</a></span> | <span aria-label="{@common.phpboost.right}"><i class="fab fa-osi" aria-hidden="true"></i></span>
		# IF C_DISPLAY_BENCH #
			<span class="footer-infos-benchmark">| {@common.achieved} {BENCH}{@date.unit.seconds} - {REQ} {@common.sql.request} - {MEMORY_USED}</span>
		# ENDIF #
		# IF C_DISPLAY_AUTHOR_THEME #
			<span class="footer-infos-template-author">| {@common.theme} {L_THEME_NAME} ${TextHelper::lcfirst(@common.by)} <a class="offload" href="{U_THEME_AUTHOR_LINK}">{L_THEME_AUTHOR}</a></span>
		# ENDIF #
	</div>
	<svg xmlns="http://www.w3.org/2000/svg" width="100%" height="225">
		<defs>
			<linearGradient id="grad1" x1="0%" y1="0%" x2="0%" y2="100%">
				<stop offset="0%" style="stop-color:var(--main-light);stop-opacity:1" />
				<stop offset="100%" style="stop-color:var(--main-dark);stop-opacity:1" />
			</linearGradient>
		</defs>
		<path fill="url(#grad1)" fill-opacity="1" d="M0,224L80,202.7C160,181,320,139,480,128C640,117,800,139,960,154.7C1120,171,1280,181,1360,186.7L1440,192L1440,0L1360,0C1280,0,1120,0,960,0C800,0,640,0,480,0C320,0,160,0,80,0L0,0Z"></path>
	</svg>
</footer>

<span id="scroll-to-top" class="scroll-to" role="button" aria-label="{@common.scroll.to.top}"><i class="fa fa-chevron-up" aria-hidden="true"></i></span>
<span id="scroll-to-bottom" class="scroll-to" role="button" aria-label="{@common.scroll.to.bottom}"><i class="fa fa-chevron-down" aria-hidden="true"></i></span>
<script src="{PATH_TO_ROOT}/templates/{THEME}/js/slide-show# IF C_CSS_CACHE_ENABLED #.min# ENDIF #.js"></script>
