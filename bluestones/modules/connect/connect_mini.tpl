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
						<a href="${relative_url(UserUrlBuilder::registration())}"><i class="fa fa-ticket"></i> {@register}</a>
						<br />
						# IF C_FB_AUTH_ENABLED #
						<a class="social-connect fb" href="${relative_url(UserUrlBuilder::connect('fb'))}" title="${LangLoader::get_message('facebook-connect', 'user-common')}"><i class="fa fa-facebook"></i><span>${LangLoader::get_message('facebook-connect', 'user-common')}</span></a>
						# ENDIF #
						# IF C_GOOGLE_AUTH_ENABLED #
						<a class="social-connect google" href="${relative_url(UserUrlBuilder::connect('google'))}" title="${LangLoader::get_message('google-connect', 'user-common')}"><i class="fa fa-google-plus"></i><span>${LangLoader::get_message('google-connect', 'user-common')}</span></a>
						# ENDIF #
					# ENDIF #
					<br />
					<a class="forgot-pass" href="${relative_url(UserUrlBuilder::forget_password())}"><i class="fa fa-question-circle"></i> ${LangLoader::get_message('forget-password', 'user-common')}</a>
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
						<a href="${relative_url(UserUrlBuilder::home_profile())}" title="{L_PRIVATE_PROFIL}">
							<i class="fa fa-user fa-fw"></i> {L_PRIVATE_PROFIL}
						</a>
					</li>
					<li>						
						<a href="{U_USER_PM}" title="{L_NBR_PM}">
							<i class="fa fa-envelope fa-fw# IF C_HAS_PM # blink# ENDIF #"></i> {L_NBR_PM}
						</a>
					</li>
					# IF C_ADMIN_AUTH #
					<li>						
						<a href="${relative_url(UserUrlBuilder::administration())}" title="{L_ADMIN_PANEL}">
							<i class="fa fa-wrench fa-fw# IF C_UNREAD_ALERT # blink# ENDIF #"></i> {L_ADMIN_PANEL}
						</a>
					</li>
					# ENDIF #
					# IF C_MODERATOR_AUTH #
					<li>						
						<a href="${relative_url(UserUrlBuilder::moderation_panel())}" title="{L_MODO_PANEL}">
							<i class="fa fa-legal fa-fw"></i> {L_MODO_PANEL}
						</a>
					</li>
					# ENDIF #
					<li>						
						<a href="${relative_url(UserUrlBuilder::contribution_panel())}" title="{L_CONTRIBUTION_PANEL}">
							<i class="fa fa-file-text fa-fw# IF C_UNREAD_CONTRIBUTION # blink# ENDIF #"></i> {L_CONTRIBUTION_PANEL}
						</a>
					</li>
					<li>						
						<a href="${relative_url(UserUrlBuilder::disconnect())}" title="{@disconnect}">
							<i class="fa fa-sign-out fa-fw"></i> {@disconnect}
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
	<div id="connect-menu" class="horizontal-fieldset">
		<a href="" class="js-menu-button" onclick="open_submenu('connect-menu');return false;" title="{@connection}"><i class="fa fa-sign-in"></i></a>
		<div class="connect-content not-connected">
			<form action="{U_CONNECT}" method="post" onsubmit="return check_connect();">
				<input type="text" id="login" name="login" placeholder="{@login}" class="connect_form">
				<input type="password" id="password" name="password" class="connect_form" placeholder="{@password}">
				<input checked="checked" type="checkbox" name="autoconnect"> {@autoconnect} <br />
				<input type="hidden" name="redirect" value="{SITE_REWRITED_SCRIPT}">
				<input type="hidden" name="token" value="{TOKEN}">
				<button type="submit" name="authenticate" value="internal" class="submit-connect"><i class="fa fa-sign-in"></i> {@connection}</button>
			</form>
			# IF C_USER_REGISTER #
				<form action="${relative_url(UserUrlBuilder::registration())}" method="post">
					<button type="submit" name="register" value="true" class="submit-register"><i class="fa fa-pencil"></i> {@register}</button>
					<input type="hidden" name="token" value="{TOKEN}">
				</form>
				# IF C_FB_AUTH_ENABLED #
				<a class="social-connect fb" href="${relative_url(UserUrlBuilder::connect('fb'))}" title="${LangLoader::get_message('facebook-connect', 'user-common')}"><i class="fa fa-facebook"></i><span>${LangLoader::get_message('facebook-connect', 'user-common')}</span></a>
				# ENDIF #
				# IF C_GOOGLE_AUTH_ENABLED #
				<a class="social-connect google" href="${relative_url(UserUrlBuilder::connect('google'))}" title="${LangLoader::get_message('google-connect', 'user-common')}"><i class="fa fa-google-plus"></i><span>${LangLoader::get_message('google-connect', 'user-common')}</span></a>
				# ENDIF #
			# ENDIF #
			<a class="forgot-pass basic-button alt" href="${relative_url(UserUrlBuilder::forget_password())}">${LangLoader::get_message('forget-password', 'user-common')}</a>
		</div>
	</div>
	# ELSE #
	<div id="connect-menu" class="horizontal-fieldset">
		<a href="" class="js-menu-button" onclick="open_submenu('connect-menu');return false;" title="{@dashboard}">
			<i class="fa fa-user"></i>
			# IF C_UNREAD_CONTRIBUTION # <span class="blink c-alert c-contrib"><i class="fa fa-file-text fa-fw"></i></span># ENDIF #
			# IF C_HAS_PM # <span class="blink c-alert c-pm"><i class="fa fa-envelope-o fa-fw"></i></span># ENDIF #
			# IF C_UNREAD_ALERT # <span class="blink c-alert c-admin"><i class="fa fa-wrench fa-fw"></i></span># ENDIF #
		</a>
		<div class="connect-content">
			<ul>
				<li>				
					<a href="${relative_url(UserUrlBuilder::home_profile())}">
						<i class="fa fa-book fa-fw"></i> {L_PRIVATE_PROFIL}
					</a>
				</li>
				<li>				
					<a href="{U_USER_PM}">
						<i class="fa fa-envelope fa-fw# IF C_HAS_PM # blink# ENDIF #"></i> {L_NBR_PM}
					</a>
				</li>
				# IF C_ADMIN_AUTH #
				<li>				
					<a href="${relative_url(UserUrlBuilder::administration())}">
						<i class="fa fa-wrench fa-fw# IF C_UNREAD_ALERT # blink# ENDIF #"></i> {L_ADMIN_PANEL}# IF C_UNREAD_ALERT # ({NUMBER_UNREAD_ALERTS})# ENDIF #
					</a>
				</li>
				# ENDIF #
				# IF C_MODERATOR_AUTH #
				<li>				
					<a href="${relative_url(UserUrlBuilder::moderation_panel())}">
						<i class="fa fa-legal fa-fw"></i> {L_MODO_PANEL}
					</a>
				</li>
				# ENDIF #
				<li>				
					<a href="${relative_url(UserUrlBuilder::contribution_panel())}">
						<i class="fa fa-file-text fa-fw# IF C_UNREAD_CONTRIBUTION # blink# ENDIF #"></i> {L_CONTRIBUTION_PANEL}# IF C_KNOWN_NUMBER_OF_UNREAD_CONTRIBUTION # ({NUMBER_UNREAD_CONTRIBUTIONS})# ENDIF #
					</a>
				</li>
				<li>				
					<a href="${relative_url(UserUrlBuilder::disconnect())}">
						<i class="fa fa-sign-out fa-fw"></i> {@disconnect}
					</a>
				</li>
			</ul>			
			<img class="avatar" src="{U_AVATAR_IMG}" alt="{PSEUDO}" />
		</div>
	</div>
	# ENDIF #
# ENDIF #
