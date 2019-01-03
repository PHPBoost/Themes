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
					# IF C_USER_REGISTER #
						<a class="small" href="${relative_url(UserUrlBuilder::registration())}"><i class="fa fa-ticket"></i> {@register}</a>
						<br />
						# IF C_FB_AUTH_ENABLED #
						<a class="social-connect fb" href="${relative_url(UserUrlBuilder::connect('fb'))}" title="${LangLoader::get_message('facebook-connect', 'user-common')}"><i class="fa fa-facebook"></i><span>${LangLoader::get_message('facebook-connect', 'user-common')}</span></a>
						# ENDIF #
						# IF C_GOOGLE_AUTH_ENABLED #
						<a class="social-connect google" href="${relative_url(UserUrlBuilder::connect('google'))}" title="${LangLoader::get_message('google-connect', 'user-common')}"><i class="fa fa-google-plus"></i><span>${LangLoader::get_message('google-connect', 'user-common')}</span></a>
						# ENDIF #
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
				<li class="has-sub"><span class="submenu-button"></span>
				<a href="#" title="Animée" class="cssmenu-title">{@dashboard}</a>
				 
				<ul class="level-1"> 
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
				</li>
				</ul>
			</div>
			<div class="module-mini-bottom">
			</div>
		</div>
	# ENDIF #
# ELSE #
	# IF C_USER_NOTCONNECTED #
	<nav id="cssmenu-015" class="cssmenu">
				<ul class="level-0">
				<li><a href="${relative_url(UserUrlBuilder::connect())}" title="" class="cssmenu-title">Se connecter</a></li>
				# IF C_USER_REGISTER #
				<li><a href="${relative_url(UserUrlBuilder::registration())}" title="" class="cssmenu-title">{@register}</a></li>
					
					# IF C_FB_AUTH_ENABLED #
					<a class="social-connect fb" href="${relative_url(UserUrlBuilder::connect('fb'))}" title="${LangLoader::get_message('facebook-connect', 'user-common')}"><i class="fa fa-facebook"></i><span>${LangLoader::get_message('facebook-connect', 'user-common')}</span></a>
					# ENDIF #
					# IF C_GOOGLE_AUTH_ENABLED #
					<a class="social-connect google" href="${relative_url(UserUrlBuilder::connect('google'))}" title="${LangLoader::get_message('google-connect', 'user-common')}"><i class="fa fa-google-plus"></i><span>${LangLoader::get_message('google-connect', 'user-common')}</span></a>
					# ENDIF #
				# ENDIF #
			</ul>
			</nav>
	# ELSE #
	<nav id="cssmenu-015" class="cssmenu cssmenu-login">
		<ul class="level-0">
			<li class="has-sub"><span class="submenu-button"></span>
				<a href="#" title="" class="cssmenu-title"><i class="fa fa-bars # IF NUMBER_TOTAL_ALERT # blink alert# ENDIF #"></i> <span>{@dashboard}</span></a>
				<ul class="level-1"> 
					<li>
						<a href="${relative_url(UserUrlBuilder::home_profile())}" class="cssmenu-title"><i class="fa fa-user"></i> {L_PRIVATE_PROFIL}</a>
					</li>
					<li>
						<a href="{U_USER_PM}" class="cssmenu-title"><i class="fa fa-envelope# IF C_HAS_PM # blink# ENDIF #"></i> {L_NBR_PM}</a>
					</li>
					# IF C_ADMIN_AUTH #
					<li>
						<a href="${relative_url(UserUrlBuilder::administration())}" class="cssmenu-title"> <i class="fa fa-wrench# IF C_UNREAD_ALERT # blink# ENDIF #"></i> {L_ADMIN_PANEL}</a>
					</li>
					# ENDIF #
					# IF C_MODERATOR_AUTH #
					<li>
						<a href="${relative_url(UserUrlBuilder::moderation_panel())}" class="cssmenu-title"><i class="fa fa-legal"></i> {L_MODO_PANEL}</a>
					</li>
					# ENDIF #
					<li>
						<a href="${relative_url(UserUrlBuilder::contribution_panel())}" class="cssmenu-title"><i class="fa fa-file-text# IF C_UNREAD_CONTRIBUTION # blink# ENDIF #"></i> {L_CONTRIBUTION_PANEL}</a>
					</li>
					<li>
						<a href="${relative_url(UserUrlBuilder::disconnect())}" class="cssmenu-title"><i class="fa fa-sign-out"></i> {@disconnect}</a>
					</li>
				</ul>
			</li>
		</ul>
	</nav>
	# ENDIF #
# ENDIF #
