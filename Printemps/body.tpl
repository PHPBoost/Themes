	# INCLUDE MAINTAIN #
	
<header id="header">
	<div id="top-header">
		<div id="top-header-content">
		# IF C_MENUS_HEADER_CONTENT #
			# START menus_header #
			{menus_header.MENU}
			# END menus_header #
		# ENDIF #
		</div>
	<div class="spacer"></div>
	</div>
</header>

<div id="sub-sub">
	<div id="sub-header">
		<div id="sub-header-content">
		# IF C_MENUS_SUB_HEADER_CONTENT #
			# START menus_sub_header #
			{menus_sub_header.MENU}
			# END menus_sub_header #
		# ENDIF #
		</div>
		<div class="spacer"></div>
	</div>
</div>

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
					{CONTENT}

			</div>
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
	</div>
</footer>


<span id="scroll-to-top" class="scroll-to" aria-label="${LangLoader::get_message('scroll-to.top', 'user-common')}"><i class="fa fa-chevron-up" aria-hidden="true" title="${LangLoader::get_message('scroll-to.top', 'user-common')}"></i></span>