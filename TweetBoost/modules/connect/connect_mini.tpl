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
				<h5 class="sub-title">{L_CONNECT}</h5>
			</div>
			<div class="module-mini-contents vertical-fieldset">
				<form action="{U_CONNECT}" method="post" onsubmit="return check_connect();" class="form-element">
					<label>{L_PSEUDO}<br /><input type="text" id="login" name="login" title="{L_PSEUDO}" placeholder="{L_PSEUDO}" maxlength="25"></label>
					<label>{L_PASSWORD}<br /><input type="password" id="password" name="password" title="{L_PASSWORD}" placeholder="{L_PASSWORD}" maxlength="30"></label>
					<label>{L_AUTOCONNECT} <input checked="checked" type="checkbox" name="autoconnect" title="{L_AUTOCONNECT}"></label>
					<input type="hidden" name="redirect" value="{SITE_REWRITED_SCRIPT}">
					<input type="hidden" name="token" value="{TOKEN}">
					<button type="submit" name="authenticate" value="internal" class="submit">{L_CONNECT}</button>
				</form>
				<div class="connect-register">
					# IF C_USER_REGISTER #
						<a class="small" href="${relative_url(UserUrlBuilder::registration())}"><i class="fa fa-ticket"></i> {L_REGISTER}</a>
						<br />
						# IF C_FB_AUTH_ENABLED #
						<a class="social-connect fb" href="${relative_url(UserUrlBuilder::connect('fb'))}" title="${LangLoader::get_message('facebook-connect', 'user-common')}"><i class="fa fa-facebook-square biggest"></i></a>
						# IF C_GOOGLE_AUTH_ENABLED #
						# ENDIF #
						<a class="social-connect google" href="${relative_url(UserUrlBuilder::connect('google'))}" title="${LangLoader::get_message('google-connect', 'user-common')}"><i class="fa fa-google-plus-square biggest"></i></a>
						# ENDIF #
					# ENDIF #
					<br />
					<a class="forgot-pass small" href="${relative_url(UserUrlBuilder::forget_password())}"><i class="fa fa-question-circle"></i> {L_FORGOT_PASS}</a>
				</div>
			</div>
			<div class="module-mini-bottom">
			</div>
		</div>
	# ELSE #
		<div id="connect-menu" class="module-mini-container connected">
			<div class="module-mini-top">
				<h5 class="sub-title">{L_PRIVATE_PROFIL}</h5>
			</div>
			<div class="module-mini-contents vertical-fieldset">
				<ul class="connect-content">
				
					<li>
						<i class="fa fa-profil"></i>
						<a href="${relative_url(UserUrlBuilder::home_profile())}" class="small"> {L_PROFIL}</a>
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
						<a href="${relative_url(UserUrlBuilder::disconnect())}" class="small"> {L_DISCONNECT}</a>
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
			<a href="" class="js-menu-button" onclick="open_submenu('connect-menu');return false;" title="{L_CONNECT}"><i class="fa fa-sign-in"></i> {L_CONNECT}</a>
			<div class="connect-content">
				<form action="{U_CONNECT}" method="post" onsubmit="return check_connect();">
					<input type="text" id="login" name="login" title="{L_PSEUDO}" placeholder="{L_PSEUDO}" class="connect-form">
					<input type="password" id="password" name="password" class="connect-form" title="{L_PASSWORD}" placeholder="{L_PASSWORD}">
					<input checked="checked" type="checkbox" name="autoconnect" title="{L_AUTOCONNECT}">
					<input type="hidden" name="redirect" value="{SITE_REWRITED_SCRIPT}">
					<input type="hidden" name="token" value="{TOKEN}">
					<button type="submit" name="authenticate" value="internal" class="submit">{L_CONNECT}</button>
				</form>
				# IF C_USER_REGISTER #
					<form action="${relative_url(UserUrlBuilder::registration())}" method="post">
						<button type="submit" name="register" value="true" class="submit">{L_REGISTER}</button>
						<input type="hidden" name="token" value="{TOKEN}">
					</form>
					# IF C_FB_AUTH_ENABLED #
					<a class="social-connect fb" href="${relative_url(UserUrlBuilder::connect('fb'))}" title="${LangLoader::get_message('facebook-connect', 'user-common')}"><i class="fa fa-facebook-square biggest"></i><span>&nbsp; ${LangLoader::get_message('facebook-connect', 'user-common')}</span></a>
					# ENDIF #
					# IF C_GOOGLE_AUTH_ENABLED #
					<a class="social-connect google" href="${relative_url(UserUrlBuilder::connect('google'))}" title="${LangLoader::get_message('google-connect', 'user-common')}"><i class="fa fa-google-plus-square biggest"></i><span>&nbsp; ${LangLoader::get_message('google-connect', 'user-common')}</span></a>
					# ENDIF #
				# ENDIF #
				<a class="forgot-pass small" href="${relative_url(UserUrlBuilder::forget_password())}">{L_FORGOT_PASS}</a>
			</div>
		</div>
	</div>
	
	<!-- My Memu horizontale -->
	<div id="notconnected" class="connect-container">
		<div class="dropdownWrapper">
			<div class="dropdownLabel"> <a href="{PATH_TO_ROOT}/user/login" class="login-connect">Se connecter</a></div>
		</div>
		<div class="dropdownWrapper">
			<div class="dropdownLabel"> <a href="{PATH_TO_ROOT}/user/registration/" class="login-connect">S'inscrire</a></div>
		</div>
		<div class="dropdownWrapper">
			<div class="dropdownLabel"> <a href="{PATH_TO_ROOT}/user/password/lost/" class="login-connect">Mot de passe oublié</a></div>
		</div>
	</div>
		# ELSE #

	<div id="connect-menu" class="connected">
		<div class="horizontal-fieldset">
			<a href="" class="js-menu-button" onclick="open_submenu('connect-menu');return false;" title="{L_PROFIL}"><i class="fa fa-bars"></i> {L_PRIVATE_PROFIL}</a>
			<ul class="connect-content">
				<li>
					<i class="fa fa-profil"></i>
					<a href="${relative_url(UserUrlBuilder::home_profile())}" class="small"> {L_PROFIL}</a>
				</li>
				<li>
					<i class="fa fa-envelope# IF C_HAS_PM # blink# ENDIF #"></i>
					<a href="{U_USER_PM}" class="small"> {L_NBR_PM}</a>
				</li>
				# IF C_ADMIN_AUTH #
				<li>
					<i class="fa fa-wrench# IF C_UNREAD_ALERT # blink# ENDIF #"></i>
					<a href="${relative_url(UserUrlBuilder::administration())}" class="small"> {L_ADMIN_PANEL}# IF C_UNREAD_ALERT # ({NUMBER_UNREAD_ALERTS})# ENDIF #</a>
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
					<a href="${relative_url(UserUrlBuilder::contribution_panel())}" class="small"> {L_CONTRIBUTION_PANEL}# IF C_KNOWN_NUMBER_OF_UNREAD_CONTRIBUTION # ({NUMBER_UNREAD_CONTRIBUTIONS})# ENDIF #</a>
				</li>
				<li>
					<i class="fa fa-sign-out"></i>
					<a href="${relative_url(UserUrlBuilder::disconnect())}" class="small"> {L_DISCONNECT}</a>
				</li>
			</ul>
		</div>
	</div>
	
	<!-- My Memu horizontale -->
	<div id="connected" class="connect-container">
		<div class="dropdownWrapper">
			<div class="dropdownLabel"> {PSEUDO}, Bienvenue sur le site! </div>
			<div class="dropdownPanel">
				# IF C_USER_NOTCONNECTED #
						<div class="module-mini-contents vertical-fieldset">
							<form action="{U_CONNECT}" method="post" onsubmit="return check_connect();" class="form-element">
								<label>{L_PSEUDO}<br /><input type="text" id="login" name="login" placeholder="{L_PSEUDO}" maxlength="25"></label>
								<label>{L_PASSWORD}<br /><input type="password" id="password" name="password" placeholder="{L_PASSWORD}" maxlength="30"></label>
								<label>{L_AUTOCONNECT} <input checked="checked" type="checkbox" name="autoconnect"></label>
								<input type="hidden" name="redirect" value="{SITE_REWRITED_SCRIPT}">
								<input type="hidden" name="token" value="{TOKEN}">
								<button type="submit" name="authenticate" value="internal" class="submit">{L_CONNECT}</button>
							</form>
							<div class="connect-register">
								# IF C_USER_REGISTER #
									<a class="small" href="${relative_url(UserUrlBuilder::registration())}"><i class="fa fa-ticket"></i> {L_REGISTER}</a>
									<br />
									# IF C_FB_AUTH_ENABLED #
									<a class="social-connect fb" href="${relative_url(UserUrlBuilder::connect('fb'))}" title="${LangLoader::get_message('facebook-connect', 'user-common')}"><i class="fa fa-facebook-square biggest"></i></a>
									# IF C_GOOGLE_AUTH_ENABLED #
									# ENDIF #
									<a class="social-connect google" href="${relative_url(UserUrlBuilder::connect('google'))}" title="${LangLoader::get_message('google-connect', 'user-common')}"><i class="fa fa-google-plus-square biggest"></i></a>
									# ENDIF #
								# ENDIF #
								<br />
								<a class="small" href="${relative_url(UserUrlBuilder::forget_password())}"><i class="fa fa-question-circle"></i> {L_FORGOT_PASS}</a>
							</div>
						</div>
				# ELSE #
					<div id="connected-menu">
						<div class="module-mini-contents vertical-fieldset">
								<div id="connect-rang">
									<p><a href="${relative_url(UserUrlBuilder::home_profile())}" class="{USER_LEVEL_CLASS}" # IF C_USER_GROUP_COLOR # style="color:{C_USER_GROUP_COLOR}" # ENDIF #>{USER_LEVEL_CLASS}</a></p>
								</div>
								<div id="connect-base">
									<span class="connect-avatar">
									<a href="${relative_url(UserUrlBuilder::home_profile())}" class="center"> <img src="{U_AVATAR_IMG}"></a><br />
									</span>
								</div>
							<ul class="connect-content">
								<li>
									
								</li>							
								<li>
									<i class="fa fa-user"></i>
									<a href="${relative_url(UserUrlBuilder::home_profile())}" class="small"> {L_PRIVATE_PROFIL}</a>
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
									<a href="${relative_url(UserUrlBuilder::disconnect())}" class="small"> {L_DISCONNECT}</a>
								</li>
							</ul>
						</div>
						<div class="module-mini-bottom">
						</div>
					</div>
				# ENDIF #
			</div>
		</div>
	</div>

	# ENDIF #
# ENDIF #