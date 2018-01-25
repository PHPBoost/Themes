<div class="advanced-auth-group">
	<select class="form-control" id="groups_auth{IDSELECT}" name="groups_auth{IDSELECT}[]" multiple="multiple" onclick="{DISABLED_SELECT} document.getElementById('id{IDSELECT}r2').selected = true;">
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
<div class="clearfix"></div>
# ENDIF #

# IF C_ADVANCED_AUTH #
<div id="advanced_authb{IDSELECT}" class="advanced-auth-select">
	<select class="form-control" id="members_auth{IDSELECT}" name="members_auth{IDSELECT}[]" multiple="multiple">
		<optgroup label="{L_USERS}" id="advanced_auth3{IDSELECT}">
			# START members_list #
			<option value="{members_list.USER_ID}" selected="selected">{members_list.LOGIN}</option>
			# END members_list #
		</optgroup>
	</select>
</div>
<div class="clearfix"></div>
<div id="advanced_auth{IDSELECT}" class="advanced-auth-input">
	<strong>{L_ADD_USER}</strong>
	<div class="clearfix"></div>
	<div class="input-group">
		<input class="form-control" type="text" value="" id="login{IDSELECT}" name="login{IDSELECT}">
		<span class="input-group-btn">
			<button onclick="XMLHttpRequest_search_members('{IDSELECT}', '{THEME}', 'add_member_auth', '{L_REQUIRE_PSEUDO}');" type="button" name="valid" class="btn btn-info">{L_GO}</button>
		</span>
	</div>
	<span id="search_img{IDSELECT}"></span>
	<div id="xmlhttprequest-result-search{IDSELECT}" class="xmlhttprequest-result-search advanced-auth-input-result" style="display:none;"></div>
</div>
# ENDIF #

<div class="clearfix"></div>
<a class="btn-group mtb5" href="javascript:open_advanced_auth('{IDSELECT}');">
	<span class="btn btn-default">
		{L_ADVANCED_AUTHORIZATION}
	</span>

	# IF C_ADVANCED_AUTH_OPEN #
	<span class="btn btn-info">
		<i id="advanced_auth_plus{IDSELECT}" class="fa fa-minus-square-o"></i>
	</span>
	# ELSE #
	<span class="btn btn-info">
		<i id="advanced_auth_plus{IDSELECT}" class="fa fa-plus-square-o"></i>
	</span>
	# ENDIF #
</a>
<div class="clearfix"></div>
<div class="btn-group btn-group-xs">
	<a class="btn btn-default" href="javascript:check_select_multiple('{IDSELECT}', true);">{L_SELECT_ALL}</a>
	<a class="btn btn-default" href="javascript:check_select_multiple('{IDSELECT}', false);">{L_SELECT_NONE}</a>
</div>
<div class="clearfix"></div>
<small>({L_EXPLAIN_SELECT_MULTIPLE})</small>

<script>
<!--
function check_select_multiple(id, status)
{
	var i;

	//Sélection des groupes.
	var selectidgroups = jQuery('#groups_auth' + id)[0];
	for(i = 0; i < selectidgroups.length; i++)
	{
		if (selectidgroups[i])
			selectidgroups[i].selected = status;
	}

	//Sélection des membres.
	var selectidmember = jQuery('#members_auth' + id)[0];
	for(i = 0; i < selectidmember.length; i++)
	{
		if (selectidmember[i])
			selectidmember[i].selected = status;
	}
}

function check_select_multiple_ranks(id, start)
{
	var i;
	for(i = start; i <= 2; i++)
	{
		if (jQuery('#' + id + i))
			jQuery('#' + id + i)[0].selected = true;
	}
}

//Fonction d'ajout de membre dans les autorisations.
function XMLHttpRequest_add_member_auth(searchid, user_id, login, alert_already_auth)
{
    var selectid = jQuery('#members_auth' + searchid)[0];
    for(var i = 0; i < selectid.length; i++) //Vérifie que le membre n'est pas déjà dans la liste.
    {
        if (selectid[i].value == user_id)
        {
            alert(alert_already_auth);
            return;
        }
    }
    var oOption = new Option(login, user_id);
    oOption.id = searchid + 'm' + (selectid.length - 1);
        oOption.selected = true;

    if (jQuery('#members_auth' + searchid)) //Ajout du membre.
        jQuery('#members_auth' + searchid)[0].options[selectid.length] = oOption;
}

function open_advanced_auth(id) {
	jQuery('#advanced_auth' + id).fadeToggle(300, function(){
		if (jQuery(this).css('display') == 'inline-block'){
			jQuery('#advanced_auth_plus' + id)[0].className = 'fa fa-minus-square-o';
		}
		else{
			jQuery('#advanced_auth_plus' + id)[0].className = 'fa fa-plus-square-o';

		}
	});
	jQuery('#advanced_authb' + id).fadeToggle();
}
-->
</script>
