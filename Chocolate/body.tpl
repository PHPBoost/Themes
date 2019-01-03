# INCLUDE MAINTAIN #
<script src="{PATH_TO_ROOT}/templates/{THEME}/js/cssplay-menu-header.js"></script>

<div id="SuperGlobal">

<!-- DEBUT : Menu de liens modifiable -->
<div class="cssplay_overlay" style="display: none;"></div>
<div class="cssplay_menu cssplay_responsive" data-mobile="1024">
			<ul><li class="return">CLOSE</li>
				<li><a href="{PATH_TO_ROOT}">Accueil</a></li>
				<li class="has-sub"><a href="#">Menu 1</a><b aria-haspopup="true" aria-controls="p1"></b>
					<ul id="p1">
						<li><a href="#"> Mon lien 1</a></li>
						<li><a href="#"> Mon lien 2</a></li>
						<li><a href="#"> Mon lien 3</a></li>
						<li><a href="#"> Mon lien 4</a></li>
					</ul>
				</li>
				<li class="has-sub"><a href="#">Menu 2</a><b aria-haspopup="true" aria-controls="p1"></b>
					<ul id="p1">
						<li><a href="#"> Mon lien 1</a></li>
						<li><a href="#"> Mon lien 2</a></li>
						<li><a href="#"> Mon lien 3</a></li>
						<li><a href="#"> Mon lien 4</a></li>
					</ul>
				</li>
				<li class="has-sub"><a href="#">Menu 3</a><b aria-haspopup="true" aria-controls="p2"></b>
					<ul id="p2">
						<li><a href="#"> Mon lien 1</a></li>
						<li class="has-sub"><a href="#"> Mon S-Menu 1</a><b aria-haspopup="true" aria-controls="p3"></b>
							<ul id="p3">
								<li><a href="#"> Mon S-Lien 1</a></li>
								<li><a href="#"> Mon S-Lien 2</a></li>
								<li class="has-sub"><a href="#"> Mon S-S-Menu 1</a><b aria-haspopup="true" aria-controls="p4"></b>
									<ul id="p4">
										<li><a href="#"> Mon S-Menu 1</a></li>
										<li><a href="#"> Mon S-Menu 2</a></li>
										<li><a href="#"> Mon S-Menu 3</a></li>
										<li><a href="#"> Mon S-Menu 4</a></li>
									</ul>
								</li>
								<li><a href="#">Expert</a></li>
							</ul>
						</li>
						<li><a href="#"> Mon lien 2</a></li>
						<li class="has-sub"><a href="#"> Mon S-Menu 2</a><b aria-haspopup="true" aria-controls="p5"></b>
							<ul id="p5">
								<li><a href="#"> Mon S-Menu 1</a></li>
								<li><a href="#"> Mon S-Menu 2</a></li>
								<li><a href="#"> Mon S-Menu 3</a></li>
								<li><a href="#"> Mon S-Menu 4</a></li>
							</ul>
						</li>
						<li class="has-sub"><a href="#"> Mon S-Menu 3</a><b aria-haspopup="true" aria-controls="p6"></b>
							<ul id="p6">
								<li><a href="#"> Mon S-Menu 1</a></li>
								<li><a href="#"> Mon S-Menu 2</a></li>
								<li><a href="#"> Mon S-Menu 3</a></li>
							</ul>
						</li>
					</ul>
				</li>
				<li class="has-sub"><a href="#">Menu 4</a><b aria-haspopup="true" aria-controls="p7"></b>
					<ul id="p7">
						<li><a href="#"> Mon S-Menu 1</a></li>
						<li><a href="#"> Mon S-Menu 2</a></li>
						<li><a href="#"> Mon S-Menu 3</a></li>
						<li><a href="#"> Mon S-Menu 4</a></li>
					</ul>
				</li>
				<li class="has-sub left"><a class="has-sub" href="#">Menu 5</a><b aria-haspopup="true" aria-controls="p8"></b>
					<ul id="p8">
						<li><a href="#"> Mon lien 1</a></li>
						<li class="has-sub"><a href="#"> Mon S-Menu 1</a><b aria-haspopup="true" aria-controls="p9"></b>
							<ul id="p9">
								<li><a href="#"> Mon S-Lien 1</a></li>
								<li><a href="#"> Mon S-Lien 2</a></li>
								<li class="has-sub"><a href="#"> Mon S-S-Menu 1</a><b aria-haspopup="true" aria-controls="p10"></b>
									<ul id="p10">
										<li><a href="#"> Mon S-S-Menu 1</a></li>
										<li><a href="#"> Mon S-S-Menu 2</a></li>
										<li><a href="#"> Mon S-S-Menu 3</a></li>
										<li><a href="#"> Mon S-S-Menu 4</a></li>
									</ul>
								</li>
								<li><a href="#"> Mon S-Lien 3</a></li>
								<li><a href="#"> Mon S-Lien 4</a></li>
							</ul>
						</li>
						<li class="has-sub"><a href="#"> Mon S-Menu 2</a><b aria-haspopup="true" aria-controls="p11"></b>
							<ul id="p11">
								<li><a href="#"> Mon S-Menu 1</a></li>
								<li><a href="#"> Mon S-Menu 2</a></li>
								<li><a href="#"> Mon S-Menu 3</a></li>
								<li><a href="#"> Mon S-Menu 4</a></li>	
							</ul>
						</li>
						<li><a href="#"> Mon lien 3</a></li>
					</ul>
				</li>
				<li><a href="#">Privacy</a></li>
			</ul>
		</div><span class="cssplay_toggle">MENU</span>
<!-- FIN : Menu de liens modifiable -->		

		<header id="header">
		<div id="top-header">
			<!--div id="site-infos">
				<div id="site-logo" # IF C_HEADER_LOGO #style="background-image: url({HEADER_LOGO});"# ENDIF #></div>
				<div id="site-name-container">
					<a id="site-name" href="{PATH_TO_ROOT}/">{SITE_NAME}</a>
					<span id="site-slogan">{SITE_SLOGAN}</span>
				</div>
			</div-->
			<div id="top-header-content">
			# IF C_MENUS_HEADER_CONTENT #
				# START menus_header #
				{menus_header.MENU}
				# END menus_header #
			# ENDIF #
			</div>
		</div>
		<div class="spacer"></div>
	</header>
	
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

	<div id="global">
		# IF C_MENUS_LEFT_CONTENT #
		<aside id="menu-left" class="toggle-left">
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
							<a href="{START_PAGE}" itemprop="url">
								<span itemprop="title">{L_INDEX}</span>
							</a>
						</li>
						# START link_bread_crumb #
						<li itemscope itemtype="http://data-vocabulary.org/Breadcrumb" # IF link_bread_crumb.C_CURRENT # class="current" # ENDIF #>
							<a href="{link_bread_crumb.URL}" itemprop="url">
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
		<aside id="menu-right" class="toggle-right">
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
		<span class="footer-infos-powered-by">{L_POWERED_BY} <a href="http://www.phpboost.com" title="{L_PHPBOOST_LINK}">PHPBoost</a> {L_PHPBOOST_RIGHT}</span>
		# IF C_DISPLAY_BENCH #
		<span class="footer-infos-separator"> | </span>
		<span class="footer-infos-benchmark">{L_ACHIEVED} {BENCH}{L_UNIT_SECOND} - {REQ} {L_REQ} - {MEMORY_USED}</span>
		# ENDIF #
		# IF C_DISPLAY_AUTHOR_THEME #
		<span class="footer-infos-separator"> | </span>
		<span class="footer-infos-template-author">{L_THEME} {L_THEME_NAME} {L_BY} <a href="{U_THEME_AUTHOR_LINK}">{L_THEME_AUTHOR}</a></span>
		# ENDIF #
		<!-- debut: vous pouvez supprimer -->
		<span class="footer-infos-separator"> | </span><span> Menu Multi Level <a href="http://www.cssplay.co.uk/menus/cssplay-responsive-multi-level-menu-jquery.html">Nicholls - CSSPLAY</a></span>
		<!-- fin:vous pouvez supprimer -->
	</div>
</footer>

</div> <!-- fin du SuperGlobal-->

<a id="scroll-to-top" class="scroll-to" href="#" title="${LangLoader::get_message('scroll-to.top', 'user-common')}"><i class="fa fa-chevron-up"></i></a>
