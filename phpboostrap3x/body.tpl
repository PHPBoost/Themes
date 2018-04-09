# INCLUDE MAINTAIN #
<header id="header">
	<div id="top-header" class="container-fluid">
		<div class="container">
			<div id="site-infos" class="row">
				<div id="site-name-container" class="# IF C_COMPTEUR #col-sm-10# ELSE #col-sm-12# ENDIF #">
					<div id="site-logo" # IF C_HEADER_LOGO #style="background-image: url('{HEADER_LOGO}');"# ENDIF #></div>
					<a id="site-name" href="{PATH_TO_ROOT}/">{SITE_NAME}</a>
					<p id="site-slogan">{SITE_SLOGAN}</p>
				</div>
				# IF C_COMPTEUR #
				<div id="compteur" class="hidden-xs col-sm-2">
					<div class="compteur-total">
						<span class="text-strong">{L_VISIT} : </span>
						{COMPTEUR_TOTAL}
					</div>
					<div class="compteur-today">
						<span class="text-strong">{L_TODAY} : </span>
						{COMPTEUR_DAY}
					</div>
				</div>
				# ENDIF #
			</div>

			<div id="top-header-content" class="row">
				<div class="col-sm-12">
					# IF C_MENUS_HEADER_CONTENT #
					# START menus_header #
					{menus_header.MENU}
					# END menus_header #
					# ENDIF #
				</div>
			</div>
		</div>
	</div>
	<div id="sub-header">
		<div id="sub-header-content" class="container">
		# IF C_MENUS_SUB_HEADER_CONTENT #
			# START menus_sub_header #
			{menus_sub_header.MENU}
			# END menus_sub_header #
		# ENDIF #
		</div>
	</div>
</header>

<div id="global" class="container">

	<div id="main" class="row" role="main">
		# IF C_MENUS_LEFT_CONTENT #
		<aside id="menu-left" class="col-md-3">
			# START menus_left #
			{menus_left.MENU}
			# END menus_left #
		</aside>
		# ENDIF #

		<div id="main-content" class="col-md-12# IF C_MENUS_LEFT_CONTENT # col-md-9# IF C_MENUS_RIGHT_CONTENT # col-md-6# ENDIF ## ENDIF ## IF C_MENUS_RIGHT_CONTENT # col-md-9# ENDIF #" itemprop="mainContentOfPage">

			<ol class="breadcrumb">
				<li itemscope itemtype="http://data-vocabulary.org/Breadcrumb">
					<a href="{START_PAGE}" title="{L_INDEX}" itemprop="url">
						{L_INDEX}
					</a>
				</li>
				# START link_bread_crumb #
				# IF link_bread_crumb.C_CURRENT #
				<li itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="active">
					{link_bread_crumb.TITLE}
				</li>
				# ELSE #
				<li itemscope itemtype="http://data-vocabulary.org/Breadcrumb" >
					<a href="{link_bread_crumb.URL}" title="{link_bread_crumb.TITLE}" itemprop="url">
						{link_bread_crumb.TITLE}
					</a>
				</li>
				# ENDIF #
				# END link_bread_crumb #
			</ol>

			# IF C_MENUS_TOPCENTRAL_CONTENT #
			<div id="top-content">
				# START menus_top_central #
				{menus_top_central.MENU}
				# END menus_top_central #
			</div>
			<div class="clearfix"></div>
			# ENDIF #

			# INCLUDE ACTIONS_MENU #

			# INCLUDE KERNEL_MESSAGE #

			{CONTENT}

			# IF C_MENUS_BOTTOM_CENTRAL_CONTENT #
			<div id="bottom-content">
				# START menus_bottom_central #
				{menus_bottom_central.MENU}
				# END menus_bottom_central #
			</div>
			<div class="clearfix"></div>
			# ENDIF #

		</div>

		# IF C_MENUS_RIGHT_CONTENT #
		<aside id="menu-right" class="col-md-3">
			# START menus_right #
			{menus_right.MENU}
			# END menus_right #
		</aside>
		# ENDIF #
	</div>
</div>

	# IF C_MENUS_TOP_FOOTER_CONTENT #
	<div id="top-footer" class="container">
		# START menus_top_footer #
		{menus_top_footer.MENU}
		# END menus_top_footer #
		<div class="clearfix"></div>
	</div>
	# ENDIF #

<footer id="footer" class="container">
	<div class="row">

		# IF C_MENUS_FOOTER_CONTENT #
		<div class="col-sm-12">
			# START menus_footer #
			{menus_footer.MENU}
			# END menus_footer #
		</div>
		# ENDIF #

		<div class="col-sm-12 text-center">
			<small>
				{L_POWERED_BY} <a href="http://www.phpboost.com" title="PHPBoost">PHPBoost</a> {L_PHPBOOST_RIGHT}
			</small>
			# IF C_DISPLAY_BENCH #
			<small>
				&nbsp;|&nbsp;
				{L_ACHIEVED} {BENCH}{L_UNIT_SECOND} - {REQ} {L_REQ} - {MEMORY_USED}
			</small>
			# ENDIF #
			# IF C_DISPLAY_AUTHOR_THEME #
			<small>
				| {L_THEME} {L_THEME_NAME} {L_BY}
				<a href="{U_THEME_AUTHOR_LINK}">{L_THEME_AUTHOR}</a>
			</small>
			# ENDIF #
		</div>

	</div>
</footer>

<a id="scroll-to-top" class="scroll-to" href="#" title="${LangLoader::get_message('scroll-to.top', 'user-common')}"><i class="fa fa-chevron-up"></i></a>
