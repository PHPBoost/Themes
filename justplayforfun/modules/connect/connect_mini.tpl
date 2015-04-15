# IF C_USER_NOTCONNECTED #

	<li class="txt welcome">
		Bienvenue, Visiteur
	</li>
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

	<li class="connect-login txt">
		<form action="{U_CONNECT}" method="post" onsubmit="return check_connect();">
			<input type="text" id="login" name="login" value="{L_PSEUDO}" class="connect_form" onfocus="if( this.value == '{L_PSEUDO}' ) this.value = '';" maxlength="25">
			<input type="password" id="password" name="password" class="connect_form" value="******" onfocus="if( this.value == '******' ) this.value = '';" maxlength="30">
			<input checked="checked" type="checkbox" name="auto">
			<input type="hidden" name="redirect" value="{REWRITED_SCRIPT}">
			<button type="submit" name="connect" value="true" class="small submit">{L_CONNECT}</button>
		</form>
	</li>
	<li class="connect-register txt">
		# IF C_USER_REGISTER #
		<form action="${relative_url(UserUrlBuilder::registration())}" method="post">
			<button type="submit" name="register" value="true" class="small submit">{L_REGISTER}</button>
		</form>
		# ENDIF #
	</li>
# ELSE #
	<li class="txt"> Bienvenue, </li>
	<li style="padding-right:10px;">
		<a href="{U_USER_PROFILE}" class="{USER_LEVEL_CLASS}" # IF C_USER_GROUP_COLOR # style="color:{USER_GROUP_COLOR}" # ENDIF #>{PSEUDO}</a>
	</li>
	<li id="subgnav-profil" class="profil">
	    <a href="#" class="profil-avatar" onClick="open_gnav_submenu('subgnav-profil','subgnav-admin');">
	    	<img src="{U_AVATAR_IMG}" alt="avatar" title="Avatar" width="90px" class="connect-avatar"/>
	    </a>
		<ul class="subgnav login">
			<li class="sub-avatar">
				<img src="{U_AVATAR_IMG}" alt="avatar" title="Avatar" width="90px" class="connect-avatar"/>
			</li>
			<li>
				<i class="fa fa-user"></i>
				<a href="${relative_url(UserUrlBuilder::home_profile())}" class="small"> {L_PRIVATE_PROFIL}</a>
			</li>
			<li>
				<i class="fa fa-envelope# IF C_HAS_PM # blink# ENDIF #"></i>
				<a href="{U_USER_PM}" class="small"> {L_NBR_PM}</a>
			</li>
			# IF C_MODERATOR_AUTH #
			<li>
				<i class="fa fa-legal"></i>
				<a href="${relative_url(UserUrlBuilder::moderation_panel())}" class="small"> {L_MODO_PANEL}</a>
			</li>
			# ENDIF #
			<li>
				<i class="fa fa-file-text# IF C_KNOWN_NUMBER_OF_UNREAD_CONTRIBUTION # blink# ENDIF #"></i>
				<a href="${relative_url(UserUrlBuilder::contribution_panel())}" class="small"> {L_CONTRIBUTION_PANEL}# IF C_KNOWN_NUMBER_OF_UNREAD_CONTRIBUTION # ({NUMBER_UNREAD_CONTRIBUTIONS})# ENDIF #</a>
			</li>
			# IF C_ADMIN_AUTH #
			<li>
				<i class="fa fa-wrench# IF C_UNREAD_ALERT # blink# ENDIF #"></i>
				<a href="${relative_url(UserUrlBuilder::administration())}" class="small"> {L_ADMIN_PANEL}# IF C_UNREAD_ALERT # ({NUMBER_UNREAD_ALERTS})# ENDIF #</a>
			</li>
			# ENDIF #
			<li>
				<i class="fa fa-sign-out"></i>
				<a href="${relative_url(UserUrlBuilder::disconnect())}" class="small"> {L_DISCONNECT}</a>
			</li>
		</ul>
	</li>
	<li class="delimiteur"></li>
	<li class="txt">Vos messages</li>
	<li class="gmsg">
		<a href="{U_USER_PM}" class="gmsg"> {NUMBER_PM}</a>
	</li>
	<li class="delimiteur"></li>
	# IF C_ADMIN_AUTH #
	<li class="txt">Vos alertes</li>
	<li class="gmsg">
		<a href="${relative_url(UserUrlBuilder::administration())}" class="gmsg"> {NUMBER_TOTAL_ALERT}</a>
	</li>
	<li class="delimiteur"></li>
	# ENDIF #

# ENDIF #