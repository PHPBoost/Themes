# INCLUDE MAINTAIN #
<div id="preloader">
	<div id="loader" # IF C_HEADER_LOGO #style="background-image: url({HEADER_LOGO});"# ENDIF #></div>
</div>
<nav id="breadcrumb" itemprop="breadcrumb" class="content-wrapper">
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
<header id="header" class="content-wrapper">
	# IF C_MENUS_TOP_HEADER_CONTENT #
		<div id="top-header">
			<div id="top-header-content">
				# START menus_top_header #
					{menus_top_header.MENU}
				# END menus_top_header #
			</div>
		</div>
	# ENDIF #
	<div id="site-infos" role="banner">
		<div id="site-logo" # IF C_HEADER_LOGO #style="background-image: url({U_HEADER_LOGO});"# ENDIF #></div>
		<div id="site-name-container">
			<a class="offload" id="site-name" href="{PATH_TO_ROOT}/">{SITE_NAME}</a>
			<span id="site-slogan">{SITE_SLOGAN}</span>
		</div>
	</div>
	<div id="inner-header">
		<div id="inner-header-container">
			# IF C_MENUS_HEADER_CONTENT #
				<div id="inner-header-content">
					# START menus_header #
						{menus_header.MENU}
					# END menus_header #
				</div>
			# ENDIF #

		</div>
	</div>
</header>
<div id="sub-header">
	# IF C_MENUS_SUB_HEADER_CONTENT #
		<div id="sub-header-content">
			# START menus_sub_header #
				{menus_sub_header.MENU}
			# END menus_sub_header #
		</div>
		<div class="spacer"></div>
	# ENDIF #
</div>

<main id="global" class="content-preloader" role="main">
	# IF C_MENUS_TOPCENTRAL_CONTENT #
		<div id="top-container">
			<div id="top-content">
				# START menus_top_central #
					{menus_top_central.MENU}
				# END menus_top_central #
			</div>
		</div>
		<div class="spacer"></div>
	# ENDIF #
	<div id="global-container">
		# IF C_MENUS_LEFT_CONTENT #
			<aside id="menu-left" class="aside-menu# IF C_MENUS_RIGHT_CONTENT # narrow-menu narrow-menu-left# ENDIF #">
				# START menus_left #
					{menus_left.MENU}
				# END menus_left #
			</aside>
		# ENDIF #

		<div id="main" class="" role="main">

			<div id="main-content" itemprop="mainContentOfPage">
				# INCLUDE ACTIONS_MENU #				
				# INCLUDE KERNEL_MESSAGE #
				<div id="main-inner-container" class="content-wrapper">
					<div id="main-inner-content" class="# IF C_MENUS_LEFT_CONTENT #main-with-left# ENDIF ## IF C_MENUS_RIGHT_CONTENT # main-with-right# ENDIF #">
						{CONTENT}
					</div>
				</div>
			</div>
		</div>

		# IF C_MENUS_RIGHT_CONTENT #
			<aside id="menu-right" class="aside-menu# IF C_MENUS_LEFT_CONTENT # narrow-menu narrow-menu-right# ENDIF #">
				# START menus_right #
					{menus_right.MENU}
				# END menus_right #
			</aside>
		# ENDIF #
		<div class="spacer"></div>
	</div>

	# IF C_MENUS_BOTTOM_CENTRAL_CONTENT #
		<div id="bottom-container">
			<div id="bottom-content">
				# START menus_bottom_central #
					{menus_bottom_central.MENU}
				# END menus_bottom_central #
			</div>
		</div>
	# ENDIF #

</main>

<footer id="footer">

    # IF C_VISIT_COUNTER #
        <div id="visit-counter" class="hidden-small-screens">
            <div class="visit-counter-total flex-between">
                <span class="text-strong">{@user.guests} &nbsp;</span>
                <span class="pinned visitor small">{VISIT_COUNTER_TOTAL}</span>
            </div>
            <div class="visit-counter-today flex-between">
                <span class="text-strong">{@date.today}</span>
                <span class="pinned visitor small">{VISIT_COUNTER_DAY}</span>
            </div>
        </div>
    # ENDIF #

	# IF C_MENUS_TOP_FOOTER_CONTENT #
		<div id="top-footer-container">
			<div id="top-footer-content">
				# START menus_top_footer #
					{menus_top_footer.MENU}
				# END menus_top_footer #
			</div>
			<div class="spacer"></div>
		</div>
	# ENDIF #

	# IF C_MENUS_FOOTER_CONTENT #
		<div id="footer-container">
			<div id="footer-content">
				# START menus_footer #
					{menus_footer.MENU}
				# END menus_footer #
			</div>
			<div class="spacer"></div>
		</div>
	# ENDIF #

	<div id="footer-infos" role="contentinfo">
		<div id="footer-info-content" class="content-wrapper">
			<span class="footer-infos-powered-by">{@common.powered.by} <i class="fa iboost fa-iboost-logo" aria-hidden="true"></i> <a class="offload" href="https://www.phpboost.com" aria-label="{@common.phpboost.link}">PHPBoost</a></span> | <span aria-label="{@common.phpboost.right}"><i class="fab fa-osi" aria-hidden="true"></i></span>
			# IF C_DISPLAY_BENCH #
				<span class="footer-infos-benchmark">| {@common.achieved} {BENCH}{@date.unit.seconds} - {REQ} {@common.sql.request} - {MEMORY_USED}</span>
			# ENDIF #
			# IF C_DISPLAY_AUTHOR_THEME #
				<span class="footer-infos-template-author">| {@common.theme} {L_THEME_NAME} ${TextHelper::lcfirst(@common.by)} <a class="offload" href="{U_THEME_AUTHOR_LINK}">{L_THEME_AUTHOR}</a></span>
			# ENDIF #
		</div>
	</div>
</footer>

<span id="scroll-to-top" class="scroll-to" role="button" aria-label="{@common.scroll.to.top}"><i class="fa fa-chevron-up" aria-hidden="true"></i></span>
<script src="{PATH_TO_ROOT}/templates/kaena/js/kaena.js"></script>
<script src="{PATH_TO_ROOT}/templates/{THEME}/js/cssmenu-truncate.js"></script>
<script>
	jQuery('.cssmenu-horizontal > ul').truncateList({
		truncatedTitle: '{@theme.more}'
	})
</script>
