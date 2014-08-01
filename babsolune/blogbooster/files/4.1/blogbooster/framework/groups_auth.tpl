<div style="float:left">
	<select id="groups_auth{IDSELECT}" name="groups_auth{IDSELECT}[]" size="8" multiple="multiple" onclick="{DISABLED_SELECT} document.getElementById('id{IDSELECT}r2').selected = true;">
		<optgroup label="{L_RANKS}">
		# START ranks_list #
			<option {ranks_list.DISABLED} value="r{ranks_list.IDRANK}" id="id{IDSELECT}r{ranks_list.ID}" {ranks_list.SELECTED} onclick="check_select_multiple_ranks('id{IDSELECT}r', {ranks_list.ID})">{ranks_list.RANK_NAME}</option>
		# END ranks_list #
		</optgroup>

		<optgroup label="{L_GROUPS}">
		# START groups_list #
			<option {groups_list.DISABLED} value="{groups_list.IDGROUP}" {groups_list.SELECTED}>{groups_list.GROUP_NAME}</option>
		# END groups_list #
		</optgroup>
	</select>
</div>

# IF C_NO_ADVANCED_AUTH #
<div class="spacer"></div> 
# ENDIF #

# IF C_ADVANCED_AUTH #
<div id="advanced_authb{IDSELECT}" style="margin-left:5px;{ADVANCED_AUTH_STYLE}float:left;">
	<select id="members_auth{IDSELECT}" name="members_auth{IDSELECT}[]" size="8" multiple="multiple">
		<optgroup label="{L_USERS}" id="advanced_auth3{IDSELECT}">
			# START members_list #
			<option value="{members_list.USER_ID}" selected="selected">{members_list.LOGIN}</option>
			# END members_list #
		</optgroup>
	</select>
</div>

<div id="advanced_auth{IDSELECT}" style="{ADVANCED_AUTH_STYLE}float:left;margin-left:5px;width:150px;">
	<strong>{L_ADD_USER}</strong>
	<br />
	<input type="text" size="14" value="" id="login{IDSELECT}" name="login{IDSELECT}">
	<button onclick="XMLHttpRequest_search_members('{IDSELECT}', '{THEME}', 'add_member_auth', '{L_REQUIRE_PSEUDO}');" type="button" name="valid" class="small">{L_GO}</button>
	<br />
	<span id="search_img{IDSELECT}"></span> 
	<div id="xmlhttprequest-result-search{IDSELECT}" style="display:none;width:125px;height:67px;margin-top:2px;" class="xmlhttprequest-result-search"></div>
</div>
# ENDIF #

<div class="spacer"></div>
<a class="small" href="javascript:display_div_auto('advanced_auth{IDSELECT}', '');display_div_auto('advanced_authb{IDSELECT}', '');switch_className('advanced_auth_plus{IDSELECT}', 'fa fa-minus-square-o', 'fa fa-plus-square-o');">
	# IF C_ADVANCED_AUTH_OPEN #
	<i id="advanced_auth_plus{IDSELECT}" class="fa fa-minus-square-o"></i>
	# ELSE #
	<i id="advanced_auth_plus{IDSELECT}" class="fa fa-plus-square-o"></i>
	# ENDIF #
	{L_ADVANCED_AUTHORIZATION}
</a>
<br />
<a class="small" href="javascript:check_select_multiple('{IDSELECT}', true);">{L_SELECT_ALL}</a>/<a class="small" href="javascript:check_select_multiple('{IDSELECT}', false);">{L_SELECT_NONE}</a>
<br />
<span class="smaller">({L_EXPLAIN_SELECT_MULTIPLE})</span>
