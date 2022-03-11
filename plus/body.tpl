# INCLUDE MAINTAIN #
<a href="#global" aria-label="{@common.go.to.content}"></a>
<header id="header">
	<div id="top-header">
		# IF C_MENUS_TOP_HEADER_CONTENT #
			<div id="top-header-content">
				# START menus_top_header #
					{menus_top_header.MENU}
				# END menus_top_header #
			</div>
		# ENDIF #
	</div>
	<div id="inner-header">
		<div id="site-infos" class="content-wrapper">
			<div id="site-logo" # IF C_HEADER_LOGO #style="background-image: url({HEADER_LOGO});"# ENDIF #></div>
			<div id="site-name-container">
				<a id="site-name" href="{PATH_TO_ROOT}/">{SITE_NAME}</a>
				<span id="site-slogan">{SITE_SLOGAN}</span>
			</div>
		</div>
	</div>
	<div id="inner-header-container">
		# IF C_MENUS_HEADER_CONTENT #
			<div id="inner-header-content" class="content-wrapper">
				# START menus_header #
					{menus_header.MENU}
				# END menus_header #
				<div class="spacer"></div>
			</div>
		# ENDIF #
	</div>
	<div id="sub-header">
		# IF C_MENUS_SUB_HEADER_CONTENT #
			<div id="sub-header-content" class="content-wrapper">
				# START menus_sub_header #
				{menus_sub_header.MENU}
				# END menus_sub_header #
			</div>
		# ENDIF #
		<div id="go-top"><a href="#header"><i class="fa fa-chevron-circle-up"></i></a></div>
		<div class="spacer"></div>
	</div>
	<div class="spacer"></div>
	<div id="head-banner"></div>
</header>

<main id="global">
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

		<div class="spacer"></div>
	</div>

</main>

<div id="top-footer">
	# IF C_MENUS_TOP_FOOTER_CONTENT #
		<div id="top-footer-content" class="content-wrapper">
			# START menus_top_footer #
			{menus_top_footer.MENU}
			# END menus_top_footer #
			<div class="spacer"></div>
		</div>
	# ENDIF #
</div>

<div class="breadcrumb-container">
	<nav id="breadcrumb" class="content-wrapper" itemprop="breadcrumb">
		<ol itemscope itemtype="http://schema.org/BreadcrumbList">
			<li itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem">
				<a href="{START_PAGE}" itemprop="item">
					<span itemprop="name">{@common.home}</span>
					<meta itemprop="position" content="1" />
				</a>
			</li>
			# START link_bread_crumb #
				<li itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem" # IF link_bread_crumb.C_CURRENT # class="current" # ENDIF #>
					<a href="{link_bread_crumb.URL}" itemprop="item">
						<span itemprop="name">{link_bread_crumb.TITLE}</span>
						<meta itemprop="position" content="{link_bread_crumb.POSITION}" />
					</a>
				</li>
			# END link_bread_crumb #
		</ol>
	</nav>
</div>

<footer id="footer">

	# IF C_MENUS_FOOTER_CONTENT #
		<div id="footer-content" class="content-wrapper">
			# START menus_footer #
			{menus_footer.MENU}
			# END menus_footer #
		</div>
	# ENDIF #

	<div id="footer-infos" class="content-wrapper">
		<span>
			{@common.powered.by} <a href="https://www.phpboost.com" title="{L_PHPBOOST_LINK}">PHPBoost</a>
		</span>
		# IF C_DISPLAY_BENCH #
			<span>| {@common.achieved} {BENCH}{@date.unit.seconds} - {REQ} {@common.sql.request} - {MEMORY_USED}</span>
		# ENDIF #
		# IF C_DISPLAY_AUTHOR_THEME #
			<span>
				| {@common.theme} <em class="text-strong">{L_THEME_NAME}</em> {@common.by}
				<a href="{U_THEME_AUTHOR_LINK}">{L_THEME_AUTHOR}</a>
			</span>
		# ENDIF #

		# IF C_VISIT_COUNTER #
			<span id="visit-counter" class="hidden-small-screens">
				| {@user.guests} {VISIT_COUNTER_TOTAL} - {@date.today} {VISIT_COUNTER_DAY}
			</span>
		# ENDIF #
	</div>

</footer>
