		<header id="header-admin-container">
			<div id="header-admin">
			</div>
			<div id="sub-header-admin">
				<nav class="dynamic-menu">
					# INCLUDE subheader_menu #
				</nav>
				<div id="admin-extend-link">
					<a href="{PATH_TO_ROOT}/admin/admin_extend.php">
						<i class="fa fa-plus"></i> {L_EXTEND_MENU}
					</a>
				</div>
				<div class="spacer"></div>
			</div>
		</header>
<div id="global-admin">		
		<div id="admin-main">
			{CONTENT}
		</div>
	</div>
    <footer id="footer-admin">
		<span>
			{L_POWERED_BY} <a style="font-size:10px" href="http://www.phpboost.com" title="PHPBoost">PHPBoost {PHPBOOST_VERSION}</a> {L_PHPBOOST_RIGHT}
		</span>	
		# IF C_DISPLAY_BENCH #
			<span>
			{L_ACHIEVED} {BENCH}{L_UNIT_SECOND} - {REQ} {L_REQ} - {MEMORY_USED}
			</span>	
		# ENDIF #
		# IF C_DISPLAY_AUTHOR_THEME #
			<span>
			| {L_THEME} {L_THEME_NAME} {L_BY} <a href="{U_THEME_AUTHOR_LINK}">{L_THEME_AUTHOR}</a>
			</span>
		# ENDIF #
			|  Admin. universelle 4.2 par <a href="http://easy-design.net" title="EDN | Easy-Design.Net">EDN</a>
	</footer>