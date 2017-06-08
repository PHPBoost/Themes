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
					<label>{@login}<br /><input type="text" id="login" name="login" title="{@login}" placeholder="{@login}"></label>
					<label>{@password}<br /><input type="password" id="password" name="password" title="{@password}" placeholder="{@password}"></label>
					<label>{@autoconnect} <input checked="checked" type="checkbox" name="autoconnect" title="{@autoconnect}"></label>
					<input type="hidden" name="redirect" value="{SITE_REWRITED_SCRIPT}">
					<input type="hidden" name="token" value="{TOKEN}">
					<button type="submit" name="authenticate" value="internal" class="submit">{@connection}</button>
				</form>
				<div class="connect-register">
					# IF C_USER_REGISTER #
						<a class="small" href="${relative_url(UserUrlBuilder::registration())}"><i class="fa fa-ticket"></i> {@register}</a>
						<br />
						# IF C_FB_AUTH_ENABLED #
						<a class="social-connect fb" href="${relative_url(UserUrlBuilder::connect('fb'))}" title="${LangLoader::get_message('facebook-connect', 'user-common')}"><i class="fa fa-facebook-square biggest"></i></a>
						# IF C_GOOGLE_AUTH_ENABLED #
						# ENDIF #
						<a class="social-connect google" href="${relative_url(UserUrlBuilder::connect('google'))}" title="${LangLoader::get_message('google-connect', 'user-common')}"><i class="fa fa-google-plus-square biggest"></i></a>
						# ENDIF #
					# ENDIF #
					<br />
					<a class="forgot-pass small" href="${relative_url(UserUrlBuilder::forget_password())}"><i class="fa fa-question-circle"></i> {@forget-password}</a>
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
					<input type="text" id="login" name="login" title="{@login}" placeholder="{@login}" class="connect-form">
					<input type="password" id="password" name="password" class="connect-form" title="{@password}" placeholder="{@password}">
					<input checked="checked" type="checkbox" name="autoconnect" title="{@autoconnect}">
					<input type="hidden" name="redirect" value="{SITE_REWRITED_SCRIPT}">
					<input type="hidden" name="token" value="{TOKEN}">
					<button type="submit" name="authenticate" value="internal" class="submit">{@connection}</button>
				</form>
				# IF C_USER_REGISTER #
					<form action="${relative_url(UserUrlBuilder::registration())}" method="post">
						<button type="submit" name="register" value="true" class="submit">{@register}</button>
						<input type="hidden" name="token" value="{TOKEN}">
					</form>
					# IF C_FB_AUTH_ENABLED #
					<a class="social-connect fb" href="${relative_url(UserUrlBuilder::connect('fb'))}" title="${LangLoader::get_message('facebook-connect', 'user-common')}"><i class="fa fa-facebook-square biggest"></i><span>&nbsp; ${LangLoader::get_message('facebook-connect', 'user-common')}</span></a>
					# ENDIF #
					# IF C_GOOGLE_AUTH_ENABLED #
					<a class="social-connect google" href="${relative_url(UserUrlBuilder::connect('google'))}" title="${LangLoader::get_message('google-connect', 'user-common')}"><i class="fa fa-google-plus-square biggest"></i><span>&nbsp; ${LangLoader::get_message('google-connect', 'user-common')}</span></a>
					# ENDIF #
				# ENDIF #
				<a class="forgot-pass small" href="${relative_url(UserUrlBuilder::forget_password())}">{@forget-password}</a>
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
			<a href="" class="js-menu-button" onclick="open_submenu('connect-menu');return false;" title="{@dashboard}"><i class="fa fa-bars"></i> {L_PRIVATE_PROFIL}</a>
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
					<a href="${relative_url(UserUrlBuilder::disconnect())}" class="small"> {@disconnect}</a>
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
								<label>{@login}<br /><input type="text" id="login" name="login" placeholder="{@login}"></label>
								<label>{@password}<br /><input type="password" id="password" name="password" placeholder="{@password}"></label>
								<label>{@autoconnect} <input checked="checked" type="checkbox" name="autoconnect"></label>
								<input type="hidden" name="redirect" value="{SITE_REWRITED_SCRIPT}">
								<input type="hidden" name="token" value="{TOKEN}">
								<button type="submit" name="authenticate" value="internal" class="submit">{@connection}</button>
							</form>
							<div class="connect-register">
								# IF C_USER_REGISTER #
									<a class="small" href="${relative_url(UserUrlBuilder::registration())}"><i class="fa fa-ticket"></i> {@register}</a>
									<br />
									# IF C_FB_AUTH_ENABLED #
									<a class="social-connect fb" href="${relative_url(UserUrlBuilder::connect('fb'))}" title="${LangLoader::get_message('facebook-connect', 'user-common')}"><i class="fa fa-facebook-square biggest"></i></a>
									# IF C_GOOGLE_AUTH_ENABLED #
									# ENDIF #
									<a class="social-connect google" href="${relative_url(UserUrlBuilder::connect('google'))}" title="${LangLoader::get_message('google-connect', 'user-common')}"><i class="fa fa-google-plus-square biggest"></i></a>
									# ENDIF #
								# ENDIF #
								<br />
								<a class="small" href="${relative_url(UserUrlBuilder::forget_password())}"><i class="fa fa-question-circle"></i> {@forget-password}</a>
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
									<a href="${relative_url(UserUrlBuilder::disconnect())}" class="small"> {@disconnect}</a>
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