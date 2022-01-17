# IF C_USER_NOTCONNECTED #
	<script>
		function check_connect()
		{
			if( document.getElementById('login').value == "" )
			{
				alert("{@warning.username}");
				return false;
			}
			if( document.getElementById('password').value == "" )
			{
				alert("{@warning.password}");
				return false;
			}
		}
	</script>
# ENDIF #
<script>
	function open_submenu(myid)
	{
		jQuery('#' + myid).toggleClass('active');
	}
</script>


# IF C_VERTICAL #
	# IF NOT IS_USER_CONNECTED #
		<div id="connect-menu" class="module-mini-container not-connected">
			<div class="module-mini-top">
				<div class="sub-title">{@user.welcome} {@user.rank.visitor}</div>
			</div>
			<div class="module-mini-contents vertical-fieldset">
				<form action="{U_CONNECT}" method="post" onsubmit="return check_connect();" class="form-element">
					<label>{@user.username}<br /><input type="text" id="login" name="login" placeholder="{@login}"></label>
					<label>{@user.password}<br /><input type="password" id="password" name="password" placeholder="{@password}"></label>
					<label>{@user.auto.connect} <input checked="checked" type="checkbox" name="autoconnect"></label>
					<input type="hidden" name="redirect" value="{SITE_REWRITED_SCRIPT}">
					<input type="hidden" name="token" value="{TOKEN}">
					<button type="submit" name="authenticate" value="internal" class="submit">{@user.sign.in}</button>
				</form>
				<div class="connect-register">
					# IF C_DISPLAY_REGISTER_CONTAINER #
						# IF C_USER_REGISTER #
							<a class="small" href="${relative_url(UserUrlBuilder::registration())}"><i class="fa fa-ticket"></i> {@user.sign.up}</a>
							<br />
						# ENDIF #
						# START external_auth #
							<a class="{external_auth.CSS_CLASS}" href="{external_auth.U_CONNECT}" aria-label="{external_auth.NAME}">{external_auth.IMAGE_HTML}</a>
						# END external_auth #
					# ENDIF #
					<br />
					<a class="forgot-pass small" href="${relative_url(UserUrlBuilder::forget_password())}"><i class="fa fa-question-circle"></i> {@user.forgotten.password}</a>
				</div>
			</div>
			<div class="module-mini-bottom">
			</div>
		</div>
	# ELSE #
		<div id="connect-menu" class="module-mini-container connected">
			<div class="module-mini-top">
				<div class="sub-title">{@user.my.profile}</div>
			</div>
			<div class="module-mini-contents vertical-fieldset">
				<ul class="connect-content">
					<li>
						<i class="fa fa-profil"></i>
						<a href="${relative_url(UserUrlBuilder::home_profile())}" class="small"> {@user.dashboard}</a>
					</li>
					<li>
						<i class="fa fa-envelope# IF C_HAS_PM # blink# ENDIF #"></i>
						<a href="{U_USER_PM}" class="small"> {PM_NUMBER}</a>
					</li>
					# IF IS_ADMIN #
						<li>
							<i class="fa fa-wrench# IF C_UNREAD_ALERT # blink# ENDIF #"></i>
							<a href="${relative_url(UserUrlBuilder::administration())}" class="small"> {@user.admin.panel}</a>
						</li>
					# ENDIF #
					# IF IS_MODERATOR #
						<li>
							<i class="fa fa-legal"></i>
							<a href="${relative_url(UserUrlBuilder::moderation_panel())}" class="small"> {@user.moderation.panel}</a>
						</li>
					# ENDIF #
					<li>
						<i class="fa fa-file-text# IF C_UNREAD_CONTRIBUTION # blink# ENDIF #"></i>
						<a href="${relative_url(UserUrlBuilder::contribution_panel())}" class="small"> {@user.contribution.panel}</a>
					</li>
					<li>
						<i class="fa fa-sign-out"></i>
						<a href="${relative_url(UserUrlBuilder::disconnect())}" class="small"> {@user.sign.out}</a>
					</li>
				</ul>
			</div>
			<div class="module-mini-bottom">
			</div>
		</div>
	# ENDIF #
# ELSE #
	# IF NOT IS_USER_CONNECTED #
		<div id="connect-menu" class="not-connected">
			<div class="horizontal-fieldset">
				<a href="" class="js-menu-button" onclick="open_submenu('connect-menu');return false;"><i class="fa fa-sign-in"></i> {@user.sign.in}</a>
				<div class="connect-content">
					<form action="{U_CONNECT}" method="post" onsubmit="return check_connect();">
						<input type="text" id="login" name="login" aria-label="{@user.username.tooltip}" placeholder="{@user.username}" class="connect-form">
						<input type="password" id="password" name="password" class="connect-form" placeholder="{@user.password}">
						<input checked="checked" type="checkbox" name="autoconnect" title="{@user.auto.connect}">
						<input type="hidden" name="redirect" value="{SITE_REWRITED_SCRIPT}">
						<input type="hidden" name="token" value="{TOKEN}">
						<button type="submit" name="authenticate" value="internal" class="submit">{@user.sign.in}</button>
					</form>
					# IF C_REGISTRATION_DISPLAYED #
						# IF C_REGISTRATION_ENABLED #
							<form action="${relative_url(UserUrlBuilder::registration())}" method="post">
								<button type="submit" name="register" value="true" class="submit">{@user.sign.up}</button>
								<input type="hidden" name="token" value="{TOKEN}">
							</form>
						# ENDIF #
						# START external_auth #
							<a class="{external_auth.CSS_CLASS}" href="{external_auth.U_CONNECT}" aria-label="{external_auth.NAME}">{external_auth.IMAGE_HTML}</a>
						# END external_auth #
					# ENDIF #
					<a class="forgot-pass small" href="${relative_url(UserUrlBuilder::forget_password())}">{@user.forgotten.password}</a>
				</div>
			</div>
		</div>
	# ELSE #
		<div id="connect-menu" class="connected">
			<div class="horizontal-fieldset">
				<a href="" class="js-menu-button" onclick="open_submenu('connect-menu');return false;"><i class="fa fa-bars"></i> {@user.dashboard}</a>
				<ul class="connect-content">
					<li>
						<a href="${relative_url(UserUrlBuilder::home_profile())}" class="small"><i class="fa fa-user"></i> <span class="user-span">{USER_DISPLAYED_NAME}</span></a>
					</li>
					<li>
						<a href="{U_USER_PM}" class="small"><i class="fa fa-envelope# IF C_HAS_PM # blink# ENDIF #"></i> <span class="user-span">{@user.private.messaging} {PM_NUMBER}</span></a>
					</li>
					# IF IS_ADMIN #
						<li>
							<a href="${relative_url(UserUrlBuilder::administration())}" class="small"><i class="fa fa-wrench# IF C_UNREAD_ALERT # blink# ENDIF #"></i> <span class="user-span">{@user.admin.panel}# IF C_UNREAD_ALERT # ({UNREAD_ALERTS_NUMBER})# ENDIF #</span></a>
						</li>
					# ENDIF #
					# IF IS_MODERATOR #
						<li>
							<a href="${relative_url(UserUrlBuilder::moderation_panel())}" class="small"><i class="fa fa-legal"></i> <span class="user-span">{@user.moderation.panel}</span></a>
						</li>
					# ENDIF #
					<li>
						<a href="${relative_url(UserUrlBuilder::contribution_panel())}" class="small"><i class="fa fa-file-text# IF C_UNREAD_CONTRIBUTION # blink# ENDIF #"></i> <span class="user-span">{@user.contribution.panel}# IF C_UNREAD_CONTRIBUTION # ({UNREAD_CONTRIBUTIONS_NUMBER})# ENDIF #</span></a>
					</li>
					<li>
						<a href="${relative_url(UserUrlBuilder::disconnect())}" class="small"><i class="fa fa-sign-out"></i><span class="user-span"> {@user.sign.out}</span></a>
					</li>
				</ul>
			</div>
		</div>
	# ENDIF #
# ENDIF #
