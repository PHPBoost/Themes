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
	<div class="connect_align">
		<form action="{U_CONNECT}" method="post" onsubmit="return check_connect();" class="connect_align">
			<p class="connect_inline"><input type="text" id="login" name="login" value="{L_PSEUDO}" class="connect_form" onfocus="if( this.value == '{L_PSEUDO}' ) this.value = '';" maxlength="25" />
			<input type="password" id="password" name="password" class="connect_form" value="******" onfocus="if( this.value == '******' ) this.value = '';" maxlength="30" />
			<input checked="checked" type="checkbox" name="auto" />
			<input type="hidden" name="redirect" value="{REWRITED_SCRIPT}" />
			<input type="submit" name="connect" value="{L_CONNECT}" class="submit" /></p>
		</form>
		# IF C_USER_REGISTER #
		<form action="{U_REGISTER}" method="post" class="connect_align">
			<p class="connect_inline"><input type="submit" name="register" value="{L_REGISTER}" class="submit" /></p>
		</form>
		# ENDIF #
	</div>
    <div class="spacer"></div>
	# ELSE #
	<div class="connect_align">
		<a href="{U_HOME_PROFILE}" class="small_link"><img src="{PATH_TO_ROOT}/templates/{THEME}/images/admin/members_mini.png" alt="" title="{L_PRIVATE_PROFIL}" class="valign_middle" /></a>&nbsp;
		<a href="{U_USER_PM}" class="small_link"><img src="{PATH_TO_ROOT}/templates/{THEME}/images/{IMG_PM}" class="valign_middle" alt="" title="{L_NBR_PM}" /> </a>&nbsp;
		# IF C_ADMIN_AUTH #
		<a href="{U_ADMINISTRATION}" class="small_link"><img src="{PATH_TO_ROOT}/templates/{THEME}/images/admin/ranks_mini.png" alt="" title="{L_ADMIN_PANEL}" class="valign_middle" />  # IF C_UNREAD_ALERT # ({NUMBER_UNREAD_ALERTS}) # ENDIF # </a>&nbsp; 
		# ENDIF #
		# IF C_UNREAD_CONTRIBUTION #
			# IF C_KNOWN_NUMBER_OF_UNREAD_CONTRIBUTION #
				 <a href="{U_CONTRIBUTION}" class="small_link"><img src="{PATH_TO_ROOT}/templates/{THEME}/images/contribution_panel_mini_new.gif" alt="" title="{L_CONTRIBUTION_PANEL}" class="valign_middle" /> ({NUM_UNREAD_CONTRIBUTIONS})</a>&nbsp;
			# ELSE #
				 <a href="{U_CONTRIBUTION}" class="small_link"><img src="{PATH_TO_ROOT}/templates/{THEME}/images/contribution_panel_mini_new.gif" alt="" title="{L_CONTRIBUTION_PANEL}" class="valign_middle" /></a>&nbsp;
			# ENDIF #
		# ELSE #
			 <a href="{U_CONTRIBUTION}" class="small_link"><img src="{PATH_TO_ROOT}/templates/{THEME}/images/contribution_panel_mini.png" alt="" title="{L_CONTRIBUTION_PANEL}" class="valign_middle" /></a>&nbsp;
		# ENDIF #
		 <a href="{U_DISCONNECT}" class="small_link"><img src="{PATH_TO_ROOT}/templates/{THEME}/images/admin/home_mini.png" alt="" title="{L_DISCONNECT}" class="valign_middle" /></a>
	</div>
    <div class="spacer"></div>
	# ENDIF #
