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
	<form action="content.php" method="post" onsubmit="return CheckForm();" class="fieldset-content">
		<p class="center">{L_REQUIRE}</p>
			<fieldset> 
			<legend>{L_ACTION_MENUS}</legend>
			<div class="form-element">
				<label for="name">* {L_NAME}</label>
				<div class="form-field"><input type="text" name="name" id="name" value="{NAME}"></div>
			</div>
			<div class="form-element">
				<label for="name">{L_DISPLAY_TITLE}</label>
				<div class="form-field"><input type="checkbox" name="display_title[]" value="display_title" {DISPLAY_TITLE_CHECKED}></div>
			</div>
			<div class="form-element">
				<label for="location">{L_LOCATION}</label>
				<div class="form-field"><select name="location" id="location">{LOCATIONS}</select></div>
			</div>
			<div class="form-element-textarea">
				<label for="contents" id="preview_description">* {L_CONTENT}</label>
				{KERNEL_EDITOR}
				<div class="form-field-textarea"">
					<textarea rows="15" id="contents" name="contents">{CONTENTS}</textarea>
				</div>
				<div class="center"><button type="button" class="small" onclick="XMLHttpRequest_preview(); return false;" value="true">{L_PREVIEW}</button></div>
			</div>
			<div class="form-element">
				<label for="activ">{L_STATUS}</label>
				<div class="form-field">
					<select name="activ" id="activ">
						# IF C_ENABLED #
							<option value="1" selected="selected">{L_ENABLED}</option>
							<option value="0">{L_DISABLED}</option>
						# ELSE #
							<option value="1">{L_ENABLED}</option>
							<option value="0" selected="selected">{L_DISABLED}</option>
						# ENDIF #
					</select>
				</div>
			</div>
			<div class="form-element">
				<label>{L_AUTHS}</label>
				<div class="form-field">{AUTH_MENUS}</div>
			</div>
		</fieldset>

		# INCLUDE filters #
		
		<fieldset class="fieldset-submit">
			<legend>{L_ACTION}</legend>
			<input type="hidden" name="action" value="{ACTION}">
			<input type="hidden" name="id" value="{IDMENU}">
			<button type="submit" class="submit" name="valid" value="true">{L_ACTION}</button>
			<input type="hidden" name="token" value="{TOKEN}">
		</fieldset>
	</form>
</div>
