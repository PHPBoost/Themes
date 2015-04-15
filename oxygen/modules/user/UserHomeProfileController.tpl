<div class="module_position">					
	<div class="module_top_l"></div>		
	<div class="module_top_r"></div>
	<div class="module_top">
		<div class="module_top_title"><strong>{L_PROFIL}</strong></div>
	</div>
	<div class="module_contents">
		<p style="text-align:center;" class="text_strong">{L_WELCOME} {USER_NAME}</p>
		
		<table class="module_table" style="width:99%;margin-top:15px;">
			<tr>
				<td class="row2" style="text-align:center;">
					<a href="{U_EDIT_PROFILE}" class="user_round" title="{L_PROFIL_EDIT}">
						<img src="{PATH_TO_ROOT}/templates/{THEME}/images/edit_user.png" alt="{L_PROFIL_EDIT}" title="{L_PROFIL_EDIT}" />
					</a>
					<br />
					<a href="{U_EDIT_PROFILE}">{L_PROFIL_EDIT}</a> <br /><br />
				</td>
				<td class="row2" style="text-align:center;">
					<a href="{U_USER_PM}" class="user_round # IF PM # cyan # ENDIF #" title="{PM} {L_PRIVATE_MESSAGE}">
						<img src="{PATH_TO_ROOT}/templates/{THEME}/modules/connect/images/message.png" class="valign_middle" alt="{L_PRIVATE_MESSAGE}" title="{L_PRIVATE_MESSAGE}" />
					</a>
					<br />
					<a href="{U_USER_PM}">{PM} {L_PRIVATE_MESSAGE}</a> <br /><br />
				</td>
				# IF C_USER_AUTH_FILES #
				<td class="row2" style="text-align:center;">
					<a href="{U_UPLOAD}" class="user_round" title="{L_FILES_MANAGEMENT}">
						<img src="{PATH_TO_ROOT}/templates/{THEME}/images/user-folder.png" class="valign_middle" alt="{L_FILES_MANAGEMENT}" title="{L_FILES_MANAGEMENT}" />
					</a>
					<br />
					<a href="{U_UPLOAD}">{L_FILES_MANAGEMENT}</a> <br /><br />
				</td>				
				# ENDIF #
				<td class="row2" style="text-align:center;">
					<a href="{U_CONTRIBUTION_PANEL}" class="user_round" title="{L_CONTRIBUTION_PANEL}">
						<img src="{PATH_TO_ROOT}/templates/{THEME}/modules/connect/images/contrib.png" class="valign_middle" alt="{L_CONTRIBUTION_PANEL}" title="{L_CONTRIBUTION_PANEL}" />
					</a>
					<br />
					<a href="{U_CONTRIBUTION_PANEL}">{L_CONTRIBUTION_PANEL}</a> <br /><br />
				</td>
				# IF C_IS_MODERATOR #
				<td class="row2" style="text-align:center;">
					<a href="{U_MODERATION_PANEL}" class="user_round" title="{L_MODERATION_PANEL}">
						<img src="{PATH_TO_ROOT}/templates/{THEME}/images/moderation.png" class="valign_middle" alt="{L_MODERATION_PANEL}" title="{L_MODERATION_PANEL}" />
					</a>
					<br />
					<a href="{U_MODERATION_PANEL}">{L_MODERATION_PANEL}</a> <br /><br />
				</td>				
				# ENDIF #
			</tr>
		</table>
		<br /><br />
		{MSG_MBR}
	</div>
	<div class="module_bottom_l"></div>		
	<div class="module_bottom_r"></div>
	<div class="module_bottom"></div>
</div>