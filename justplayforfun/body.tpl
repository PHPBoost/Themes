# INCLUDE MAINTAIN #
<header id="header">
	<div class="gmenu">
		<ul class="gnav">
			# IF C_MENUS_HEADER_CONTENT #
			{MENUS_HEADER_CONTENT}
			# ENDIF #

			# INCLUDE ACTIONS_MENU #
		</ul>
	</div>
	<div id="top-header">
		<div id="site-infos">
			<div id="site-logo" # IF C_HEADER_LOGO #style="background: url('{HEADER_LOGO}') no-repeat;"# ENDIF #></div>
			<div id="site-name-container">
				<a id="site-name" href="{PATH_TO_ROOT}/">{SITE_NAME}</a>
				<span id="site-slogan">{SITE_SLOGAN}</span>
			</div>
		</div>

		<div id="myshow1" class="protoshow">
			<ul class="show">
				<li class="slide" data-slide-interval="">
					<img src="{PATH_TO_ROOT}/templates/{THEME}/protoshow/img/ban_BF3.jpg" alt="" />
				</li>
				<li class="slide" data-slide-interval="">
					<img src="{PATH_TO_ROOT}/templates/{THEME}/protoshow/img/ban_DoW.jpg" alt="" />
				</li>
				<li class="slide" data-slide-interval="">
					<img src="{PATH_TO_ROOT}/templates/{THEME}/protoshow/img/ban_Ghost.jpg" alt="" />
				</li>
				<li class="slide" data-slide-interval="">
					<img src="{PATH_TO_ROOT}/templates/{THEME}/protoshow/img/ban_GW2.jpg" alt="" />
				</li>
				<li class="slide" data-slide-interval="">
					<img src="{PATH_TO_ROOT}/templates/{THEME}/protoshow/img/ban_ME.jpg" alt="" />
				</li>
				<li class="slide" data-slide-interval="">
					<img src="{PATH_TO_ROOT}/templates/{THEME}/protoshow/img/ban_R6.jpg" alt="" />
				</li>
				<li class="slide" data-slide-interval="">
					<img src="{PATH_TO_ROOT}/templates/{THEME}/protoshow/img/ban_SC.jpg" alt="" />
				</li>
			</ul>
		</div>
	</div>

	<div id="sub-header">
		<div class="bandeau-container">
			<ul class="bandeau-menu">
				<li class="bandeau-element-menu">
					<a href="{PATH_TO_ROOT}/news" title="News : Les dernières infos"> News </a>
					<p> Les dernières infos </p>
				</li>
				<li class="bandeau-element-menu">
					<a href="{PATH_TO_ROOT}/forum" title="Forum : Le coin des discusions"> Forum </a>
					<p> Le coin des discusions </p>
				</li>
				<li class="bandeau-element-menu">
					<a href="{PATH_TO_ROOT}/shoutbox" title="Votre Menu via l'administration"> Votre Menu</a>
					<p> Vous pouvez utiliser un menu de contenu </p>
				</li>
				# IF C_MENUS_SUB_HEADER_CONTENT #
				{MENUS_SUB_HEADER_CONTENT}
				# ENDIF #
			</ul>
			<div class="spacer"></div>
		</div>
	</div>
	<div class="spacer"></div>
</header>
<div id="wrapper">
	<div id="global">
		<nav id="breadcrumb" itemprop="breadcrumb">
			<ol>
				<li itemscope itemtype="http://data-vocabulary.org/Breadcrumb">
					<a href="{START_PAGE}" title="{L_INDEX}" itemprop="url">
						<span itemprop="title">{L_INDEX}</span>
					</a>
				</li>
				# START link_bread_crumb #
				<li itemscope itemtype="http://data-vocabulary.org/Breadcrumb" # IF link_bread_crumb.C_CURRENT  #class="current" # ENDIF #>
					# IF link_bread_crumb.C_CURRENT #
					<span itemprop="title">{link_bread_crumb.TITLE}</span>
					# ELSE #
					<a href="{link_bread_crumb.URL}" title="{link_bread_crumb.TITLE}" itemprop="url">
						<span itemprop="title">{link_bread_crumb.TITLE}</span>
					</a>
					# ENDIF #
				</li>
				# END link_bread_crumb #
			</ol>
		</nav>
		# IF C_COMPTEUR #
		<div id="compteur">
			<span class="text-strong">{L_VISIT}:</span> {COMPTEUR_TOTAL}
			<br />
			<span class="text-strong">{L_TODAY}:</span> {COMPTEUR_DAY}
		</div>
		# ENDIF #
		# IF C_MENUS_LEFT_CONTENT #
		<aside id="menu-left">
			{MENUS_LEFT_CONTENT}
		</aside>
		# ENDIF #
		# IF C_MENUS_RIGHT_CONTENT #
		<aside id="menu-right">
			{MENUS_RIGHT_CONTENT}
		</aside>
		# ENDIF #
		<div id="main" role="main">
			# IF C_MENUS_TOPCENTRAL_CONTENT #
			<div id="top-content">
				{MENUS_TOPCENTRAL_CONTENT}
			</div>
			<div class="spacer"></div>
			# ENDIF #
			<div id="main-content" itemprop="mainContentOfPage">
				{CONTENT}
			</div>
			# IF C_MENUS_BOTTOM_CENTRAL_CONTENT #
	        <div id="bottom-content">
				{MENUS_BOTTOMCENTRAL_CONTENT}
			</div>
			# ENDIF #
		</div>
		# IF C_MENUS_TOP_FOOTER_CONTENT #
		<div id="top-footer">
			{MENUS_TOP_FOOTER_CONTENT}
			<div class="spacer"></div>
		</div>
		# ENDIF #
		<div class="spacer"></div>
	</div>
	<footer id="footer">
		# IF C_MENUS_FOOTER_CONTENT #
		<div class="footer-content">
			{MENUS_FOOTER_CONTENT}
		</div>
		# ENDIF #

	</footer>
</div>
<footer id="thanks">
	<div class="footer-infos">
		<span>
			{L_POWERED_BY} <a href="http://www.phpboost.com" title="PHPBoost">PHPBoost {PHPBOOST_VERSION}</a {L_PHPBOOST_RIGHT}
		</span>
		# IF C_DISPLAY_BENCH #
		<span>
			&nbsp;|&nbsp;
			{L_ACHIEVED} {BENCH}{L_UNIT_SECOND} - {REQ} {L_REQ} - {MEMORY_USED}
		</span>
		# ENDIF #
		# IF C_DISPLAY_AUTHOR_THEME #
		<span>
			| {L_THEME} <span class="text-strong">{L_THEME_NAME}</span> {L_BY} <a href="{U_THEME_AUTHOR_LINK}">{L_THEME_AUTHOR}</a>
		</span>
		# ENDIF #
	</div>
</footer>