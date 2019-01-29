<script>
<!--
function CheckForm() {
	if (document.getElementById('name').value == '') {
		document.getElementById('name').select();
		window.alert({L_REQUIRE_NAME});
		return false;
	}
	if (document.getElementById('contents').value == '') {
		document.getElementById('contents').select();
		window.alert({L_REQUIRE_TEXT});
		return false;
	}
	return true;
}
-->
</script>
<div id="admin-contents">
	<form action="content.php" method="post" onsubmit="return CheckForm();" class="form-horizontal">
		<p class="text-center">{L_REQUIRE}</p>
		<fieldset>
			<legend>{L_ACTION_MENUS}</legend>
			<div class="form-group">
				<label class="control-label col-sm-4" for="name">* {L_NAME}</label>
				<div class="col-sm-8">
					<input class="form-control" type="text" name="name" id="name" value="{NAME}">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-4" for="name">{L_DISPLAY_TITLE}</label>
				<div class="col-sm-8">
					<input type="checkbox" id="display_title" name="display_title[]" value="display_title" {DISPLAY_TITLE_CHECKED} />
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-4" for="location">{L_LOCATION}</label>
				<div class="col-sm-8">
					<select class="form-control" name="location" id="location">{LOCATIONS}</select>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-12">
					<label for="contents" id="preview_description">* {L_CONTENT}</label>
					{KERNEL_EDITOR}
					<textarea class="form-control" rows="15" id="contents" name="contents">{CONTENTS}</textarea>
					<div class="text-center"><button type="button" class="btn btn-default btn-sm" onclick="XMLHttpRequest_preview(); return false;" value="true">{L_PREVIEW}</button></div>
				</div>				
			</div>
			<div class="form-group">
				<label class="control-label col-sm-4" for="activ">{L_STATUS}</label>
				<div class="col-sm-8">
					<select class="form-control" name="activ" id="activ">
						<option value="1"# IF C_ENABLED # selected="selected"# ENDIF #>{L_ENABLED}</option>
						<option value="0"# IF NOT C_ENABLED # selected="selected"# ENDIF #>{L_DISABLED}</option>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-4" for="hidden_with_small_screens">{L_HIDDEN_WITH_SMALL_SCREENS}</label>
				<div class="col-sm-8">
					<input type="checkbox" name="hidden_with_small_screens" id="hidden_with_small_screens"# IF C_MENU_HIDDEN_WITH_SMALL_SCREENS # checked="checked"# ENDIF # />
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-4">{L_AUTHS}</label>
				<div class="col-sm-8">{AUTH_MENUS}</div>
			</div>
		</fieldset>

		# INCLUDE filters #

		<p class="text-center">
			<input type="hidden" name="action" value="{ACTION}">
			<input type="hidden" name="id" value="{IDMENU}">
			<button type="submit" class="btn btn-primary" name="valid" value="true">{L_ACTION}</button>
			<input type="hidden" name="token" value="{TOKEN}">
		</p>
	</form>
</div>
