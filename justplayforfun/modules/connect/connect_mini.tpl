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

# IF C_USER_NOTCONNECTED #
<div id="connect-menu" class="notconnected">
	<div class="horizontal-fieldset">
		<a href="" class="js-menu-button" onclick="open_submenu('connect-menu');return false;" title="{@connection}"><i class="fa fa-sign-in"></i> {@connection}</a>
		<div class="connect-content">
			<span class="welcome-connect welcome-unknown">Bienvenue Visiteur</span>

			<form action="{U_CONNECT}" method="post" onsubmit="return check_connect();">
				<input type="text" id="login" name="login" placeholder="{@login}" class="connect_form">
				<input type="password" id="password" name="password" class="connect_form" placeholder="{@password}">
				<input checked="checked" type="checkbox" name="autoconnect">
				<input type="hidden" name="redirect" value="{SITE_REWRITED_SCRIPT}">
				<input type="hidden" name="token" value="{TOKEN}">
				<button type="submit" name="authenticate" value="internal" class="submit small">{@connection}</button>
			</form>
			# IF C_USER_REGISTER #
				<form action="${relative_url(UserUrlBuilder::registration())}" method="post">
					<button type="submit" name="register" value="true" class="submit small">{@register}</button>
					<input type="hidden" name="token" value="{TOKEN}">
				</form>
				# IF C_FB_AUTH_ENABLED #
				<a class="social-connect fb" href="${relative_url(UserUrlBuilder::connect('fb'))}" title="${LangLoader::get_message('facebook-connect', 'user-common')}"><i class="fa fa-facebook"></i><span>${LangLoader::get_message('facebook-connect', 'user-common')}</span></a>
				# ENDIF #
				# IF C_GOOGLE_AUTH_ENABLED #
				<a class="social-connect google" href="${relative_url(UserUrlBuilder::connect('google'))}" title="${LangLoader::get_message('google-connect', 'user-common')}"><i class="fa fa-google-plus"></i><span>${LangLoader::get_message('google-connect', 'user-common')}</span></a>
				# ENDIF #
			# ENDIF #
			<a class="forgot-pass small" href="${relative_url(UserUrlBuilder::forget_password())}">{@forget-password}</a>
		</div>
	</div>
</div>
# ELSE #
<div id="connect-menu" class="connected">
	<div class="horizontal-fieldset">
		<span class="welcome-connect welcome-user hidden-small-screens">Bienvenue <a href="{U_USER_PROFILE}" class="{USER_LEVEL_CLASS}" # IF C_USER_GROUP_COLOR # style="color:{USER_GROUP_COLOR}" # ENDIF #>{PSEUDO}</a>
		</span>

		<a href="" class="js-menu-button" onclick="open_submenu('connect-menu');return false;" title="{@dashboard}"><i class="fa fa-bars"></i> {@dashboard}</a>

		<div class="connect-container">
		    <a href="" class="profil-avatar hidden-small-screens" onClick="open_submenu('connect-menu');return false;" title="{@dashboard}">
	    		<img src="{U_AVATAR_IMG}" alt="avatar" title="Avatar" class="connect-avatar"/>
	   		</a>

			<ul class="connect-content">
				<li class="avatar-container hidden-small-screens"><img src="{U_AVATAR_IMG}" alt="avatar" title="Avatar" class="connect-avatar"/></li>
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
				<li class="connect-signout">
					<i class="fa fa-sign-out"></i>
					<a href="${relative_url(UserUrlBuilder::disconnect())}" class="small"> {@disconnect}</a>
				</li>
			</ul>
		</div>

		<div class="connect-separator hidden-small-screens"></div>
		<div class="connect-messages hidden-small-screens">
			<span class="connect-txt">Vos messages</span>
			<span class="connect-nbr# IF C_HAS_PM # red# ENDIF #">{NUMBER_PM}</span>
		</div>

		<div class="connect-separator hidden-small-screens"></div>
		<div class="connect-alertes hidden-small-screens">
			<span class="connect-txt">Vos alertes</span>
			<span class="connect-nbr# IF C_UNREAD_ALERT # red# ENDIF #">{NUMBER_UNREAD_ALERTS}</span>
		</div>

		<div class="connect-separator hidden-small-screens"></div>
	</div>
</div>
# ENDIF #
