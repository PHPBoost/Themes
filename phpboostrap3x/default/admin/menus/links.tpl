<script>
<!--
function check_form()
{
	if(document.getElementById('menu_element_{ID}_name').value == "") {
		alert("{L_REQUIRE_NAME}");
		return false;
	}
	return true;
}

var idMax = {ID_MAX};

function initSortableMenu() {
	jQuery("ul#menu_element_{ID}_list").sortable({
		handle: '.sortable-selector',
		placeholder: '<div class="dropzone">' + ${escapejs(LangLoader::get_message('position.drop_here', 'common'))} + '</div>'
	});
}

function get_sortable_sequence() {
	var sequence = jQuery("ul#menu_element_{ID}_list").sortable("serialize").get();
	return sequence[0];
}

function build_menu_elements_tree() {
	jQuery('#menu_tree').val(JSON.stringify(get_sortable_sequence()));
}

function toggleProperties(id) {
	if (jQuery("#menu_element_" + id + "_properties").is(':hidden'))
	{   //Si les propriétés sont repliées, on les affiche
		jQuery("#menu_element_" + id + "_properties").fadeIn();
		jQuery("#menu_element_" + id + "_more_image").html('<i class="fa fa-minus"></i>');
	}
	else
	{   //Sinon, on les cache
		jQuery("#menu_element_" + id + "_properties").fadeOut();
		jQuery("#menu_element_" + id + "_more_image").html('<i class="fa fa-cog"></i>');
	}
}

var authForm = {J_AUTH_FORM};
function getAuthForm(id) {
	return authForm.replace(/##UID##/g, id);
}

function addSubElement(menu_element_id) {
	var id = idMax++;

	jQuery('<li/>', {id : 'menu_element_' + id, 'data-id' : id, class : 'sortable-element'}).appendTo('#' + menu_element_id + '_list');
	jQuery('<div/>', {class : 'sortable-selector', title : ${escapejs(LangLoader::get_message('position.move', 'common'))}}).appendTo('#menu_element_' + id);
	jQuery('<div/>', {id : 'menu_title_' + id, class : 'sortable-title'}).appendTo('#menu_element_' + id);

	jQuery('<div/>', {id : 'input_group_' + id, class : 'input-group'}).appendTo('#menu_title_' + id);

	jQuery('<span/>', {class : 'input-group-btn', id : 'icon_group_' + id}).appendTo('#input_group_' + id);
	jQuery('<span/>', {class : 'btn btn-default', id : 'icon_' + id}).appendTo('#icon_group_' + id);
	jQuery('<i/>', {class : 'fa fa-globe'}).appendTo('#icon_' + id);
	jQuery('#input_group_' + id).append(' ');

	jQuery('<input/>', {class: 'form-control menu-control', type : 'text', id : 'menu_element_' + id + '_name', name : 'menu_element_' + id + '_name', placeholder : {JL_ADD_SUB_ELEMENT}}).appendTo('#input_group_' + id);
	jQuery('#input_group_' + id).append(' ');

	jQuery('<input/>', {class: 'form-control menu-control', placeholder : {JL_URL}, type : 'text', id : 'menu_element_' + id + '_url', name : 'menu_element_' + id + '_url'}).appendTo('#input_group_' + id);
	jQuery('#input_group_' + id).append(' ');

	jQuery('<input/>', {class: 'form-control menu-control', placeholder : {JL_IMAGE}, type : 'text', id : 'menu_element_' + id + '_image', name : 'menu_element_' + id + '_image', onblur: "image_preview(this,menu_element_" + id + "_image_preview)"}).appendTo('#input_group_' + id);
		jQuery('#input_group_' + id).append(' ');

	jQuery('<div/>', {id : 'menu_element_' + id + '_actions', class : 'input-group-btn'}).appendTo('#input_group_' + id);
	jQuery('<a/>', {class : 'btn btn-info', id : 'menu_element_' + id + '_more_image', title : {JL_MORE}, onclick: 'toggleProperties(' + id + ');return false;'}).html('<i class="fa fa-cog"></i>').appendTo('#menu_element_' + id + '_actions');
	jQuery('#menu_element_' + id + '_actions').append(' ');
	jQuery('<a/>', {class : 'btn btn-danger', id : 'menu_element_' + id + '_delete_image', title : {JL_DELETE}, onclick: 'deleteElement(\'menu_element_' + id + '\');return false;'}).html('<i class="fa fa-delete"></i>').appendTo('#menu_element_' + id + '_actions');

	jQuery('<span/>', {id : 'menu_element_' + id + '_image_preview_span', class : 'preview'}).appendTo('#menu_title_' + id);
	jQuery('<img/>', {id : 'menu_element_' + id + '_image_preview'}).appendTo('#menu_element_' + id + '_image_preview_span');

	jQuery('<div/>', {class : 'clearfix'}).appendTo('#menu_element_' + id);

	jQuery('<fieldset/>', {id : 'menu_element_' + id + '_properties', style : 'display:none;'}).appendTo('#menu_element_' + id);
	jQuery('<legend/>').text({JL_PROPERTIES}).appendTo('#menu_element_' + id + '_properties');
	jQuery('<div/>', {id : 'menu_element_' + id + '_authorizations', class : 'form-group'}).appendTo('#menu_element_' + id + '_properties');
	jQuery('<label/>', {class : 'col-sm-4', for : 'menu_element_' + id + '_auth_div'}).text({JL_AUTHORIZATIONS} + ' ').appendTo('#menu_element_' + id + '_authorizations');
	jQuery('<div/> ', {class : 'col-sm-8'}).html(getAuthForm(id)).appendTo('#menu_element_' + id + '_authorizations');

	initSortableMenu();
}

function addSubMenu(menu_element_id) {
	var id = idMax++;

	jQuery('<li/>', {id : 'menu_element_' + id, 'data-id' : id, class : 'sortable-element'}).appendTo('#' + menu_element_id + '_list');
	jQuery('<div/>', {class : 'sortable-selector', title : ${escapejs(LangLoader::get_message('position.move', 'common'))}}).appendTo('#menu_element_' + id);
	jQuery('<div/>', {id : 'menu_title_' + id, class : 'sortable-title'}).appendTo('#menu_element_' + id);

	jQuery('<div/>', {id : 'input_group_' + id, class : 'input-group'}).appendTo('#menu_title_' + id);

	jQuery('<span/>', {class : 'input-group-btn', id : 'folder_group_' + id}).appendTo('#input_group_' + id);
	jQuery('<span/>', {class : 'btn btn-default', id : 'folder_' + id}).appendTo('#folder_group_' + id);
	jQuery('<i/>', {class : 'fa fa-folder'}).appendTo('#folder_' + id);
	jQuery('#input_group_' + id).append(' ');

	jQuery('<input/>', {class: 'form-control menu-control', type : 'text', id : 'menu_element_' + id + '_name', name : 'menu_element_' + id + '_name', placeholder : {JL_ADD_SUB_MENU}}).appendTo('#input_group_' + id);
	jQuery('#input_group_' + id).append(' ');

	jQuery('<input/>', {class: 'form-control menu-control', placeholder : {JL_URL}, type : 'text', id : 'menu_element_' + id + '_url', name : 'menu_element_' + id + '_url'}).appendTo('#input_group_' + id);
	jQuery('#input_group_' + id).append(' ');

	jQuery('<input/>', {class: 'form-control menu-control', placeholder : {JL_IMAGE}, type : 'text', id : 'menu_element_' + id + '_image', name : 'menu_element_' + id + '_image', onblur: "image_preview(this,menu_element_" + id + "_image_preview)"}).appendTo('#input_group_' + id);
		jQuery('#input_group_' + id).append(' ');

	jQuery('<div/>', {id : 'menu_element_' + id + '_actions', class : 'input-group-btn'}).appendTo('#input_group_' + id);
	jQuery('<a/>', {class : 'btn btn-info', id : 'menu_element_' + id + '_more_image', title : {JL_MORE}, onclick: 'toggleProperties(' + id + ');return false;'}).html('<i class="fa fa-cog"></i>').appendTo('#menu_element_' + id + '_actions');
	jQuery('#menu_element_' + id + '_actions').append(' ');
	jQuery('<a/>', {class : 'btn btn-danger', id : 'menu_element_' + id + '_delete_image', title : {JL_DELETE}, onclick: 'deleteElement(\'menu_element_' + id + '\');return false;'}).html('<i class="fa fa-delete"></i>').appendTo('#menu_element_' + id + '_actions');

	jQuery('<span/>', {id : 'menu_element_' + id + '_image_preview_span', class : 'preview'}).appendTo('#menu_title_' + id);
	jQuery('<img/>', {id : 'menu_element_' + id + '_image_preview'}).appendTo('#menu_element_' + id + '_image_preview_span');

	jQuery('<div/>', {class : 'clearfix'}).appendTo('#menu_element_' + id);

	jQuery('<fieldset/>', {id : 'menu_element_' + id + '_properties', style : 'display:none;'}).appendTo('#menu_element_' + id);
	jQuery('<legend/>').text({JL_PROPERTIES}).appendTo('#menu_element_' + id + '_properties');
	jQuery('<div/>', {id : 'menu_element_' + id + '_authorizations', class : 'form-group'}).appendTo('#menu_element_' + id + '_properties');
	jQuery('<label/>', {class : 'col-sm-4', for : 'menu_element_' + id + '_auth_div'}).text({JL_AUTHORIZATIONS} + ' ').appendTo('#menu_element_' + id + '_authorizations');
	jQuery('<div/> ', {class : 'col-sm-8'}).html(getAuthForm(id)).appendTo('#menu_element_' + id + '_authorizations');

	jQuery('<hr/>').appendTo('#menu_element_' + id);
	jQuery('<ul/>', {id : 'menu_element_' + id + '_list', class : 'sortable-block'}).appendTo('#menu_element_' + id);

	jQuery('<p/>', {id : 'menu_element_' + id + '_buttons', class : 'text-center'}).appendTo('#menu_element_' + id);
	jQuery('<button/>', {class : 'btn btn-info', type : 'button', id : 'menu_element_' + id + '_add_sub_element', name : 'menu_element_' + id + '_add_sub_element', value : {JL_ADD_SUB_ELEMENT}, onclick : 'addSubElement(\'menu_element_' + id + '\');'}).text({JL_ADD_SUB_ELEMENT}).appendTo('#menu_element_' + id + '_buttons');
	jQuery('#menu_element_' + id + '_buttons').append(' ');

	jQuery('<button/>', {class : 'btn btn-info', type : 'button', id : 'menu_element_' + id + '_add_sub_menu', name : 'menu_element_' + id + '_add_sub_menu', value : {JL_ADD_SUB_MENU}, onclick : 'addSubMenu(\'menu_element_' + id + '\');'}).text({JL_ADD_SUB_MENU}).appendTo('#menu_element_' + id + '_buttons');

	addSubElement('menu_element_' + id);
}

function deleteElement(element_id)
{
	if (confirm({JL_DELETE_ELEMENT}))
	{
		jQuery('#' + element_id).remove();
		initSortableMenu();
	}
}

function image_preview(input,image)
{
	var url = input.value;

	jQuery.ajax({
		url: PATH_TO_ROOT + "/kernel/framework/ajax/dispatcher.php?url=/url_validation/",
		type: "post",
		dataType: "json",
		async: false,
		data: {url_to_check : url, token : TOKEN},
		success: function(returnData){
			if (returnData.is_valid == 1)
			{
				if (url.charAt(0) == '/')
					image.src = PATH_TO_ROOT + url;
				else
					image.src = url;

				jQuery('#' + image.id).show();
			}
			else
			{
				image.src = '';
				jQuery('#' + image.id).hide();
			}
		},
		error: function(returnData){
			image.src = '';
			jQuery('#' + image.id).hide();
		}
	});
}

jQuery(document).ready(function() {
	initSortableMenu();
});
-->
</script>
<div id="admin-contents">
	<form action="links.php?action=save" method="post" class="form-horizontal" onsubmit="build_menu_elements_tree();return check_form();">
		<p class="text-center">${LangLoader::get_message('form.explain_required_fields', 'status-messages-common')}</p>
		<fieldset>
			<legend>{L_ACTION_MENUS}</legend>
			<div class="form-group">
				<label class="control-label col-sm-4" for="menu_element_{ID}_name">* {L_NAME}</label>
				<div class="col-sm-8">
					<input class="form-control" type="text" name="menu_element_{ID}_name" id="menu_element_{ID}_name" value="{MENU_NAME}">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-4" for="menu_element_{ID}_url">{L_URL}</label>
				<div class="col-sm-8">
					<input class="form-control" type="text" name="menu_element_{ID}_url" id="menu_element_{ID}_url" value="{MENU_URL}">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-4" for="menu_element_{ID}_image">{L_IMAGE}</label>
				<div class="col-sm-8">
					<input class="form-control" type="text" name="menu_element_{ID}_image" id="menu_element_{ID}_image" value="{MENU_IMG}">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-4" for="menu_element_{ID}_type">{L_TYPE}</label>
				<div class="col-sm-8">
					<select class="form-control" name="menu_element_{ID}_type" id="menu_element_{ID}_type">
						# START type #
							<option value="{type.NAME}"{type.SELECTED}>{type.L_NAME}</option>
						# END type #
					</select>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-4" for="menu_element_{ID}_location">{L_LOCATION}</label>
				<div class="col-sm-8">
					<select class="form-control" name="menu_element_{ID}_location" id="menu_element_{ID}_location">
						# START location #
							<option value="{location.VALUE}" # IF location.C_SELECTED # selected="selected"# ENDIF #>
								{location.NAME}
							</option>
						# END location #
					</select>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-4" for="menu_element_{ID}_enabled">{L_STATUS}</label>
				<div class="col-sm-8">
					<select class="form-control" name="menu_element_{ID}_enabled" id="menu_element_{ID}_enabled">
						<option value="1"# IF C_ENABLED # selected="selected"# ENDIF #>{L_ENABLED}</option>
						<option value="0"# IF NOT C_ENABLED # selected="selected"# ENDIF #>{L_DISABLED}</option>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-4" for="menu_element_{ID}_hidden_with_small_screens">{L_HIDDEN_WITH_SMALL_SCREENS}</label>
				<div class="col-sm-8">
					<div class="form-field-checkbox">
						<input type="checkbox" name="menu_element_{ID}_hidden_with_small_screens" id="menu_element_{ID}_hidden_with_small_screens"# IF C_MENU_HIDDEN_WITH_SMALL_SCREENS # checked="checked"# ENDIF #>
						<label for="menu_element_{ID}_hidden_with_small_screens"></label>
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-4">{L_AUTHS}</label>
				<div class="col-sm-8">{AUTH_MENUS}</div>
			</div>
		</fieldset>

		# INCLUDE filters #

		<fieldset>
			<legend>* {L_CONTENT}</legend>
			{MENU_TREE}
		</fieldset>

		<p class="text-center">
			<input type="hidden" name="id" value="{MENU_ID}">
			<input type="hidden" name="token" value="{TOKEN}">
			<input type="hidden" name="menu_tree" id="menu_tree" value="">
			<button type="submit" class="btn btn-primary" name="valid" value="true">{L_ACTION}</button>
		</p>
	</form>
</div>
