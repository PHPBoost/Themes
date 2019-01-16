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

# IF C_VERTICAL #
	# IF C_USER_NOTCONNECTED #
		<div id="connect-menu" class="module-mini-container">
			<div class="module-mini-top">
				<div class="sub-title">{@connection}</div>
			</div>
			<div class="module-mini-contents vertical-fieldset">
				<form action="{U_CONNECT}" method="post" onsubmit="return check_connect();" class="form-element">
					<label>{@login}<br /><input type="text" id="login" name="login" placeholder="{@login}"></label>
					<label>{@password}<br /><input type="password" id="password" name="password" placeholder="{@password}"></label>
					<label>{@autoconnect} <input checked="checked" type="checkbox" name="autoconnect"></label>
					<br /><br />
					<input type="hidden" name="redirect" value="{SITE_REWRITED_SCRIPT}">
					<input type="hidden" name="token" value="{TOKEN}">
					<button type="submit" name="authenticate" value="internal" class="submit">{@connection}</button>
				</form>
				<div class="connect-register">
					# IF C_USER_REGISTER #
						<a href="${relative_url(UserUrlBuilder::registration())}"><i class="fa fa-ticket" aria-hidden="true"></i> {@register}</a>
						<br />
						# IF C_FB_AUTH_ENABLED #
						<a class="social-connect fb" href="${relative_url(UserUrlBuilder::connect('fb'))}"><i class="fa fa-facebook" aria-hidden="true"></i><span>${LangLoader::get_message('facebook-connect', 'user-common')}</span></a>
						# ENDIF #
						# IF C_GOOGLE_AUTH_ENABLED #
						<a class="social-connect google" href="${relative_url(UserUrlBuilder::connect('google'))}"><i class="fa fa-google-plus" aria-hidden="true"></i><span>${LangLoader::get_message('google-connect', 'user-common')}</span></a>
						# ENDIF #
					# ENDIF #
					<br />
					<a class="forgot-pass" href="${relative_url(UserUrlBuilder::forget_password())}"><i class="fa fa-question-circle" aria-hidden="true"></i> ${LangLoader::get_message('forget-password', 'user-common')}</a>
				</div>
			</div>
			<div class="module-mini-bottom">
			</div>
		</div>
	# ELSE #
		<div id="connect-menu" class="module-mini-container">
			<div class="module-mini-top">
				<h5 class="sub-title">{@dashboard}</h5>
			</div>
			<div class="module-mini-contents vertical-fieldset">
				<ul class="connect-content">
					<li>
						<a href="${relative_url(UserUrlBuilder::home_profile())}">
							<i class="fa fa-user fa-fw" aria-hidden="true"></i> {L_PRIVATE_PROFIL}
						</a>
					</li>
					<li>
						<a href="{U_USER_PM}">
							<i class="fa fa-envelope fa-fw# IF C_HAS_PM # blink# ENDIF #" aria-hidden="true"></i> {L_NBR_PM}
						</a>
					</li>
					# IF C_ADMIN_AUTH #
					<li>
						<a href="${relative_url(UserUrlBuilder::administration())}">
							<i class="fa fa-wrench fa-fw# IF C_UNREAD_ALERT # blink# ENDIF #" aria-hidden="true"></i> {L_ADMIN_PANEL}
						</a>
					</li>
					# ENDIF #
					# IF C_MODERATOR_AUTH #
					<li>
						<a href="${relative_url(UserUrlBuilder::moderation_panel())}">
							<i class="fa fa-legal fa-fw" aria-hidden="true"></i> {L_MODO_PANEL}
						</a>
					</li>
					# ENDIF #
					<li>
						<a href="${relative_url(UserUrlBuilder::contribution_panel())}">
							<i class="fa fa-file-text fa-fw# IF C_UNREAD_CONTRIBUTION # blink# ENDIF #" aria-hidden="true"></i> {L_CONTRIBUTION_PANEL}
						</a>
					</li>
					<li>
						<a href="${relative_url(UserUrlBuilder::disconnect())}">
							<i class="fa fa-sign-out fa-fw" aria-hidden="true"></i> {@disconnect}
						</a>
					</li>
				</ul>
			</div>
			<div class="module-mini-bottom">
			</div>
		</div>
	# ENDIF #
# ELSE #
	# IF C_USER_NOTCONNECTED #
		<div id="connect-menu" class="connect-container horizontal-fieldset">
			<a href="" class="connect-button" aria-label="{@connection}"><i class="fa fa-sign-in" aria-hidden="true"></i></a>
			<div class="connect-content not-connected">
				<i class="close-connect fa fa-window-close" aria-hidden="true"></i> <span class="sr-only">${LangLoader::get_message('close', 'main')}</span>
				<form action="{U_CONNECT}" method="post" onsubmit="return check_connect();">
					<input type="text" id="login" name="login" placeholder="{@login}" class="connect_form">
					<input type="password" id="password" name="password" class="connect_form" placeholder="{@password}">
					<input checked="checked" type="checkbox" name="autoconnect"> {@autoconnect} <br />
					<input type="hidden" name="redirect" value="{SITE_REWRITED_SCRIPT}">
					<input type="hidden" name="token" value="{TOKEN}">
					<button type="submit" name="authenticate" value="internal" class="submit-connect"><i class="fa fa-sign-in" aria-hidden="true"></i> {@connection}</button>
				</form>
				# IF C_USER_REGISTER #
					<form action="${relative_url(UserUrlBuilder::registration())}" method="post">
						<button type="submit" name="register" value="true" class="submit-register"><i class="fa fa-pencil" aria-hidden="true"></i> {@register}</button>
						<input type="hidden" name="token" value="{TOKEN}">
					</form>
					# IF C_FB_AUTH_ENABLED #
					<a class="social-connect fb" href="${relative_url(UserUrlBuilder::connect('fb'))}"><i class="fa fa-facebook" aria-hidden="true"></i><span>${LangLoader::get_message('facebook-connect', 'user-common')}</span></a>
					# ENDIF #
					# IF C_GOOGLE_AUTH_ENABLED #
					<a class="social-connect google" href="${relative_url(UserUrlBuilder::connect('google'))}"><i class="fa fa-google-plus" aria-hidden="true"></i><span>${LangLoader::get_message('google-connect', 'user-common')}</span></a>
					# ENDIF #
				# ENDIF #
				<a class="forgot-pass basic-button alt" href="${relative_url(UserUrlBuilder::forget_password())}">${LangLoader::get_message('forget-password', 'user-common')}</a>
			</div>
		</div>
	# ELSE #
		<div id="connect-menu" class="connect-container horizontal-fieldset">
			<a href="" class="connect-button" aria-label="{@dashboard}">
				# IF IS_ADMIN #<i class="fa fa-user-tie" aria-hidden="true"></i># ELSE #<i class="fa fa-user" aria-hidden="true"></i># ENDIF #
				# IF C_UNREAD_CONTRIBUTION # <span class="blink c-alert c-contrib"><i class="fa fa-file-text fa-fw" aria-hidden="true"></i></span><span class="sr-only">{NUMBER_UNREAD_CONTRIBUTIONS}</span># ENDIF #
				# IF C_HAS_PM # <span class="blink c-alert c-pm"><i class="fa fa-envelope-o fa-fw" aria-hidden="true"></i></span><span class="sr-only">{L_NBR_PM}</span># ENDIF #
				# IF C_UNREAD_ALERT # <span class="blink c-alert c-admin"><i class="fa fa-wrench fa-fw" aria-hidden="true"></i></span><span class="sr-only">{NUMBER_UNREAD_ALERTS}</span># ENDIF #
			</a>
			<div class="connect-content">
				<i class="close-connect fa fa-window-close" aria-hidden="true"></i> <span class="sr-only">${LangLoader::get_message('close', 'main')}</span>
				<ul>
					<li>
						<a href="${relative_url(UserUrlBuilder::home_profile())}">
							<i class="fa fa-book fa-fw" aria-hidden="true"></i> {L_PRIVATE_PROFIL}
						</a>
					</li>
					<li>
						<a href="{U_USER_PM}">
							<i class="fa fa-envelope fa-fw# IF C_HAS_PM # blink# ENDIF #" aria-hidden="true"></i> {L_NBR_PM}
						</a>
					</li>
					# IF C_ADMIN_AUTH #
					<li>
						<a href="${relative_url(UserUrlBuilder::administration())}">
							<i class="fa fa-wrench fa-fw# IF C_UNREAD_ALERT # blink# ENDIF #" aria-hidden="true"></i> {L_ADMIN_PANEL}# IF C_UNREAD_ALERT # ({NUMBER_UNREAD_ALERTS})# ENDIF #
						</a>
					</li>
					# ENDIF #
					# IF C_MODERATOR_AUTH #
					<li>
						<a href="${relative_url(UserUrlBuilder::moderation_panel())}">
							<i class="fa fa-legal fa-fw" aria-hidden="true"></i> {L_MODO_PANEL}
						</a>
					</li>
					# ENDIF #
					<li>
						<a href="${relative_url(UserUrlBuilder::contribution_panel())}">
							<i class="fa fa-file-text fa-fw# IF C_UNREAD_CONTRIBUTION # blink# ENDIF #" aria-hidden="true"></i> {L_CONTRIBUTION_PANEL}# IF C_KNOWN_NUMBER_OF_UNREAD_CONTRIBUTION # ({NUMBER_UNREAD_CONTRIBUTIONS})# ENDIF #
						</a>
					</li>
					<li>
						<a href="${relative_url(UserUrlBuilder::disconnect())}">
							<i class="fa fa-sign-out fa-fw" aria-hidden="true"></i> {@disconnect}
						</a>
					</li>
				</ul>
				<img class="avatar" src="{U_AVATAR_IMG}" alt="{PSEUDO}" />
			</div>
		</div>
	# ENDIF #
	<script>
		<!--
		jQuery('.connect-button').opensubmenu({
			osmTarget: '.connect-container',
			osmCloseExcept: '.connect-content *',
			osmCloseButton: '.close-connect',
		});
		-->
	</script>
# ENDIF #
