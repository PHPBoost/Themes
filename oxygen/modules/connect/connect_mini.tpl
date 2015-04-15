# IF C_VERTICAL #
	# IF C_USER_NOTCONNECTED #		
		<script type="text/javascript">
		<!--
		function check_connect()
		{
			return checkForms(new Array(
				'login', "{L_REQUIRE_PSEUDO}", 
				'password', "{L_REQUIRE_PASSWORD}"
			));
		}
		-->
		</script>
		<form action="{U_CONNECT}" method="post" onsubmit="return check_connect();">
			<div class="module_mini_container">
				<div class="module_mini_top">
					<h5 class="sub_title">{L_CONNECT}</h5>
				</div>
				<div class="module_mini_contents connect_vertical"">
					<p>
						<label>{L_PSEUDO}
						<br />
						<input type="text" class="text" id="login" name="login" maxlength="25" /></label>
						<br />
						<label>{L_PASSWORD}
						<br />
						<input type="password" id="password" name="password" class="text" maxlength="30" /></label>
						<br />
						<label>{L_AUTOCONNECT} <input checked="checked" type="checkbox" name="auto" /></label>
					</p>
					<p>
						<input type="hidden" name="redirect" value="{REWRITED_SCRIPT}" />
						<input type="hidden" name="token" value="{TOKEN}" />
						<input type="submit" name="connect" value="{L_CONNECT}" class="submit" />
					</p>
					<p class="connect_register">
						# IF C_USER_REGISTER # 
						<a class="small_link" href="${relative_url(UserUrlBuilder::registration())}"><img src="{PATH_TO_ROOT}/templates/{THEME}/images/register_mini.png" alt="" class="valign_middle" /> {L_REGISTER}</a> 
						# ENDIF #
						<br />
						<a class="small_link" href="${relative_url(UserUrlBuilder::forget_password())}"><img src="{PATH_TO_ROOT}/templates/{THEME}/images/forget_mini.png" alt="" class="valign_middle" /> {L_FORGOT_PASS}</a>
					</p>
				</div>		
				<div class="module_mini_bottom">
				</div>
			</div>				
		</form>
	# ELSE #
		<div class="module_mini_container">
			<div class="module_mini_top">
				<h5 class="sub_title">{L_PROFIL}</h5>
			</div>
			<div class="module_mini_contents connect_content">
				<ul>
					<li><img src="{PATH_TO_ROOT}/templates/{THEME}/images/admin/members_mini.png" alt="" class="valign_middle" /> <a href="${relative_url(UserUrlBuilder::home_profile())}" class="small_link">{L_PRIVATE_PROFIL}</a></li>
					<li><img src="{PATH_TO_ROOT}/templates/{THEME}/images/{IMG_PM}" class="valign_middle" alt="" /> <a href="{U_USER_PM}" class="small_link">{L_NBR_PM}</a>&nbsp;</li>
 
					# IF C_ADMIN_AUTH # 
					<li><img src="{PATH_TO_ROOT}/templates/{THEME}/images/admin/ranks_mini.png" alt="" class="valign_middle" /> <a href="{PATH_TO_ROOT}/admin/admin_index.php" class="small_link">{L_ADMIN_PANEL}
						# IF C_UNREAD_ALERT #
							({NUMBER_UNREAD_ALERTS})
						# ENDIF #
					</a></li> 
					# ENDIF #
 
					# IF C_MODERATOR_AUTH # 
					<li><img src="{PATH_TO_ROOT}/templates/{THEME}/images/admin/modo_mini.png" alt="" class="valign_middle" /> <a href="${relative_url(UserUrlBuilder::moderation_panel())}" class="small_link">{L_MODO_PANEL}</a></li> 
					# ENDIF #
 
					# IF C_UNREAD_CONTRIBUTION #
						# IF C_KNOWN_NUMBER_OF_UNREAD_CONTRIBUTION #
							<li><img src="{PATH_TO_ROOT}/templates/{THEME}/images/contribution_panel_mini_new.gif" alt="" class="valign_middle" /> <a href="{U_CONTRIBUTION}" class="small_link">{L_CONTRIBUTION_PANEL} ({NUM_UNREAD_CONTRIBUTIONS})</a></li> 
						# ELSE #
							<li><img src="{PATH_TO_ROOT}/templates/{THEME}/images/contribution_panel_mini_new.gif" alt="" class="valign_middle" /> <a href="{U_CONTRIBUTION}" class="small_link">{L_CONTRIBUTION_PANEL}</a></li> 
						# ENDIF #
					# ELSE #
						<li><img src="{PATH_TO_ROOT}/templates/{THEME}/images/contribution_panel_mini.png" alt="" class="valign_middle" /> <a href="{U_CONTRIBUTION}" class="small_link">{L_CONTRIBUTION_PANEL}</a></li> 
					# ENDIF #
 
					<li><img src="{PATH_TO_ROOT}/templates/{THEME}/images/admin/home_mini.png" alt="" class="valign_middle" /> <a href="{U_DISCONNECT}" class="small_link">{L_DISCONNECT}</a></li>
				</ul>
			</div>
			<div class="module_mini_bottom">
			</div>
		</div>
	# ENDIF #
# ELSE #
	# IF C_USER_NOTCONNECTED #	
	<script type="text/javascript">
	<!--
	function check_connect(){
		if(document.getElementById('login').value == "") {
			alert("{L_REQUIRE_PSEUDO}");
			return false;
		}
		if(document.getElementById('password').value == "") {
			alert("{L_REQUIRE_PASSWORD}");
			return false;
		}
		return true;
	}
	-->
	</script>
	<div id="connect_fix">
		<a href="#" class="connect_round" title="{L_CONNECT}" onclick="Effect.toggle('connect_blind', 'appear', { duration: 0.6 }); return false;"><img src="{PATH_TO_ROOT}/templates/{THEME}/modules/connect/images/signin.png" alt="" class="valign_middle" /></a>
		# IF C_USER_REGISTER #
			<form action="{U_REGISTER}" method="post" class="connect_align">
				<input type="image" name="register" value="" title="{L_REGISTER}"class="connect_round" src="{PATH_TO_ROOT}/templates/{THEME}/images/bg.png"/>
			</form>
		# ENDIF #
		<div class="connect_align" id="connect_blind" style="display:none;">
			<form action="{U_CONNECT}" method="post" onsubmit="return check_connect();" class="connect_align">
				<p class="connect_inline"><input type="text" id="login" name="login" value="{L_PSEUDO}" class="connect_form" style="background-image: url('{PATH_TO_ROOT}/templates/{THEME}/modules/connect/images/user.png')" onfocus="if( this.value == '{L_PSEUDO}' ) this.value = '';" maxlength="25" />
				<input type="password" id="password" name="password" class="connect_form" value="******" style="background-image: url('{PATH_TO_ROOT}/templates/{THEME}/modules/connect/images/key.png')" onfocus="if( this.value == '******' ) this.value = '';" maxlength="30" />
				<input checked="checked" type="checkbox" name="auto" />
				<input type="hidden" name="redirect" value="{REWRITED_SCRIPT}" />
				<input type="submit" name="connect" value="{L_CONNECT}" class="submit" /></p>
			</form>
		</div>
	</div>
	# ELSE #
	<div class="connect_align">
		<a href="{U_HOME_PROFILE}" class="connect_round" title="{L_PRIVATE_PROFIL}"><img src="{PATH_TO_ROOT}/templates/{THEME}/modules/connect/images/profil.png" alt="" class="valign_middle" /></a>
		<a href="{U_USER_PM}" class="connect_round # IF NUMBER_PM # cyan # ENDIF #" title="{L_NBR_PM}"><img src="{PATH_TO_ROOT}/templates/{THEME}/modules/connect/images/message.png" alt="" class="valign_middle" /></a>
		# IF C_ADMIN_AUTH #
			<a href="{U_ADMINISTRATION}" class="connect_round # IF C_UNREAD_ALERT # cyan # ENDIF #" title="{L_ADMIN_PANEL} # IF C_UNREAD_ALERT # {NUMBER_UNREAD_ALERTS} # ENDIF #"><img src="{PATH_TO_ROOT}/templates/{THEME}/modules/connect/images/admin.png" alt="" class="valign_middle" /></a>
		# ENDIF #
		<a href="{U_CONTRIBUTION}" class="connect_round # IF C_UNREAD_CONTRIBUTION # cyan # ENDIF #" title="{L_CONTRIBUTION_PANEL} # IF C_KNOWN_NUMBER_OF_UNREAD_CONTRIBUTION # - {NUM_UNREAD_CONTRIBUTIONS} # ENDIF #"><img src="{PATH_TO_ROOT}/templates/{THEME}/modules/connect/images/contrib.png" alt="" class="valign_middle" /></a>
		<a href="{U_DISCONNECT}" class="connect_round" title="{L_DISCONNECT}"><img src="{PATH_TO_ROOT}/templates/{THEME}/modules/connect/images/signout.png" alt="" class="valign_middle" /></a>
	</div>
	# ENDIF #
# ENDIF #