# IF C_USER_NOTCONNECTED #
	<script>
	<!--
	function check_connect()
	{
		if( document.getElementById('login').value == "" )
		{
			alert("{L_REQUIRE_PSEUDO}");
			return false;
		}
		if( document.getElementById('password').value == "" )
		{
			alert("{L_REQUIRE_PASSWORD}");
			return false;
		}
	}
	-->
	</script>
# ENDIF #
<script>
	<!--
	function open_submenu(myid)
	{
		jQuery('#' + myid).toggleClass('active');
	}
	-->
</script>


# IF C_VERTICAL #
	# IF C_USER_NOTCONNECTED #
		<div id="connect-menu" class="module-mini-container not-connected">
			<div class="module-mini-top">
				<div class="sub-title">{@connection}</div>
			</div>
			<div class="module-mini-contents vertical-fieldset">
				<form action="{U_CONNECT}" method="post" onsubmit="return check_connect();" class="form-element">
					<label>{@login}<br /><input type="text" id="login" name="login" placeholder="{@login}"></label>
					<label>{@password}<br /><input type="password" id="password" name="password" placeholder="{@password}"></label>
					<label>{@autoconnect} <input checked="checked" type="checkbox" name="autoconnect"></label>
					<input type="hidden" name="redirect" value="{SITE_REWRITED_SCRIPT}">
					<input type="hidden" name="token" value="{TOKEN}">
					<button type="submit" name="authenticate" value="internal" class="submit">{@connection}</button>
				</form>
				<div class="connect-register">
					# IF C_DISPLAY_REGISTER_CONTAINER #
						# IF C_USER_REGISTER #
							<a class="small" href="${relative_url(UserUrlBuilder::registration())}"><i class="fa fa-ticket"></i> {@register}</a>
							<br />
						# ENDIF #
						# START external_auth #
							<a class="{external_auth.CSS_CLASS}" href="{external_auth.U_CONNECT}" aria-label="{external_auth.NAME}">{external_auth.IMAGE_HTML}</a>
						# END external_auth #
					# ENDIF #
					<br />
					<a class="forgot-pass small" href="${relative_url(UserUrlBuilder::forget_password())}"><i class="fa fa-question-circle"></i> ${LangLoader::get_message('forget-password', 'user-common')}</a>
				</div>
			</div>
			<div class="module-mini-bottom">
			</div>
		</div>
	# ELSE #
		<div id="connect-menu" class="module-mini-container connected">
			<div class="module-mini-top">
				<div class="sub-title">{L_PRIVATE_PROFIL}</div>
			</div>
			<div class="module-mini-contents vertical-fieldset">
				<ul class="connect-content">
					<li>
						<i class="fa fa-profil"></i>
						<a href="${relative_url(UserUrlBuilder::home_profile())}" class="small"> {@dashboard}</a>
					</li>
					<li>
						<i class="fa fa-envelope# IF C_HAS_PM # blink# ENDIF #"></i>
						<a href="{U_USER_PM}" class="small"> {L_NBR_PM}</a>
					</li>
					# IF C_ADMIN_AUTH #
					<li>
						<i class="fa fa-wrench# IF C_UNREAD_ALERT # blink# ENDIF #"></i>
						<a href="${relative_url(UserUrlBuilder::administration())}" class="small"> {L_ADMIN_PANEL}</a>
					</li>
					# ENDIF #
					# IF C_MODERATOR_AUTH #
					<li>
						<i class="fa fa-legal"></i>
						<a href="${relative_url(UserUrlBuilder::moderation_panel())}" class="small"> {L_MODO_PANEL}</a>
					</li>
					# ENDIF #
					<li>
						<i class="fa fa-file-text# IF C_UNREAD_CONTRIBUTION # blink# ENDIF #"></i>
						<a href="${relative_url(UserUrlBuilder::contribution_panel())}" class="small"> {L_CONTRIBUTION_PANEL}</a>
					</li>
					<li>
						<i class="fa fa-sign-out"></i>
						<a href="${relative_url(UserUrlBuilder::disconnect())}" class="small"> {@disconnect}</a>
					</li>
				</ul>
			</div>
			<div class="module-mini-bottom">
			</div>
		</div>
	# ENDIF #
# ELSE #
	# IF C_USER_NOTCONNECTED #
	<div id="connect-menu" class="not-connected">
		<div class="horizontal-fieldset">
			<a href="" class="js-menu-button" onclick="open_submenu('connect-menu');return false;" title="{@connection}"><i class="fa fa-sign-in"></i> {@connection}</a>
			<div class="connect-content">
				<form action="{U_CONNECT}" method="post" onsubmit="return check_connect();">
					<input type="text" id="login" name="login" placeholder="{@login}" class="connect_form">
					<input type="password" id="password" name="password" class="connect_form" placeholder="{@password}">
					<input checked="checked" type="checkbox" name="autoconnect">
					<input type="hidden" name="redirect" value="{SITE_REWRITED_SCRIPT}">
					<input type="hidden" name="token" value="{TOKEN}">
					<button type="submit" name="authenticate" value="internal" class="submit">{@connection}</button>
				</form>
				# IF C_DISPLAY_REGISTER_CONTAINER #
					# IF C_USER_REGISTER #
						<form action="${relative_url(UserUrlBuilder::registration())}" method="post">
							<button type="submit" name="register" value="true" class="submit">{@register}</button>
							<input type="hidden" name="token" value="{TOKEN}">
						</form>
					# ENDIF #
					# START external_auth #
						<a class="{external_auth.CSS_CLASS}" href="{external_auth.U_CONNECT}" aria-label="{external_auth.NAME}">{external_auth.IMAGE_HTML}</a>
					# END external_auth #
				# ENDIF #
				<a class="forgot-pass small" href="${relative_url(UserUrlBuilder::forget_password())}">${LangLoader::get_message('forget-password', 'user-common')}</a>
			</div>
		</div>
	</div>
	# ELSE #
	<div id="connect-menu" class="connected">
		<div class="horizontal-fieldset">
			<a href="" class="js-menu-button" onclick="open_submenu('connect-menu');return false;" title="{@dashboard}"><i class="fa fa-bars"></i> {L_PRIVATE_PROFIL}</a>
			<ul class="connect-content">
				<li>
					<a href="${relative_url(UserUrlBuilder::home_profile())}" title="{L_PRIVATE_PROFIL}" class="block-round">
						<i class="fa fa-profil"></i>
						<span>{@dashboard}</span>
					</a>
				</li>
				<li>
					<a href="{U_USER_PM}" title="{L_NBR_PM}" class="block-round# IF C_HAS_PM # cyan# ENDIF #">
						<i class="fa fa-envelope# IF C_HAS_PM # blink# ENDIF #"></i>
						<span>{L_NBR_PM}</span>
					</a>
				</li>
				# IF C_ADMIN_AUTH #
				<li>
					<a href="${relative_url(UserUrlBuilder::administration())}" title="{L_ADMIN_PANEL}# IF C_UNREAD_ALERT # ({NUMBER_UNREAD_ALERTS})# ENDIF #" class="block-round# IF C_UNREAD_ALERT # cyan# ENDIF #">
						<i class="fa fa-wrench# IF C_UNREAD_ALERT # blink# ENDIF #"></i>
						<span>{L_ADMIN_PANEL}# IF C_UNREAD_ALERT # ({NUMBER_UNREAD_ALERTS})# ENDIF #</span>
					</a>
				</li>
				# ENDIF #
				# IF C_MODERATOR_AUTH #
				<li>
					<a href="${relative_url(UserUrlBuilder::moderation_panel())}" title="{L_MODO_PANEL}" class="block-round">
						<i class="fa fa-legal"></i>
						<span>{L_MODO_PANEL}</span>
					</a>
				</li>
				# ENDIF #
				<li>
					<a href="${relative_url(UserUrlBuilder::contribution_panel())}" title="{L_CONTRIBUTION_PANEL}# IF C_KNOWN_NUMBER_OF_UNREAD_CONTRIBUTION # ({NUMBER_UNREAD_CONTRIBUTIONS})# ENDIF #" class="block-round# IF C_UNREAD_CONTRIBUTION # cyan# ENDIF #">
						<i class="fa fa-file-text# IF C_UNREAD_CONTRIBUTION # blink# ENDIF #"></i>
						<span>{L_CONTRIBUTION_PANEL}# IF C_KNOWN_NUMBER_OF_UNREAD_CONTRIBUTION # ({NUMBER_UNREAD_CONTRIBUTIONS})# ENDIF #</span>
					</a>
				</li>
				<li>
					<a href="${relative_url(UserUrlBuilder::disconnect())}" title="{@disconnect}" class="block-round">
						<i class="fa fa-sign-out"></i>
						<span>{@disconnect}</span>
					</a>
				</li>
			</ul>
		</div>
	</div>
	# ENDIF #
# ENDIF #
