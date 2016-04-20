<script>
<!--
function CheckForm() {
	if (jQuery('#name').value == '') {
		jQuery('#name').select();
		window.alert({JL_REQUIRE_NAME});
		return false;
	}
	if (jQuery('#feed_url').options[0].selected || jQuery('#feed_url').options[1].selected) {
		jQuery('#feed_url').select();
		window.alert({JL_REQUIRE_FEED});
		return false;
	}
	if (jQuery('#items_number').value == '' || jQuery('#items_number').value == 0) {
		jQuery('#items_number').select();
		window.alert({JL_REQUIRE_ITEMS_NUMBER});
		return false;
	}
	return true;
}
-->
</script>
<div id="admin-contents">
	<form action="feed.php" method="post" class="fieldset-content" onsubmit="return CheckForm();">
		<p class="center">{L_REQUIRE}</p>
		<fieldset> 
			<legend>{L_ACTION_MENUS}</legend>
			<div class="form-element">
				<label for="name">* {L_NAME}</label>
				<div class="form-field"><label><input type="text" name="name" id="name" value="{NAME}"></label></div>
			</div>
			<div class="form-element">
				<label for="location">{L_LOCATION}</label>
				<div class="form-field"><label><select name="location" id="location">{LOCATIONS}</select></label></div>
			</div>
			<div class="form-element">
				<label for="feed_url">* {L_FEED}</label>
				<div class="form-field"><select name="feed_url" id="feed_url">
					<option
						value="null"
						# IF C_NEW # selected="selected"# ENDIF #
						style="font-weight:bold; text-transform:uppercase; padding:1px; text-align:center;">
						{L_AVAILABLES_FEEDS}
					</option>
					<option value="null" style="text-align:center;"></option>
					# START modules #
						<optgroup label="{modules.NAME}">
						# START modules.feeds_urls #
							 <option value="{modules.feeds_urls.URL}"{modules.feeds_urls.SELECTED}>
							 	{modules.feeds_urls.SPACE} {modules.feeds_urls.NAME}
							 	# IF modules.feeds_urls.FEED_NAME #({modules.feeds_urls.FEED_NAME})# ENDIF #
						 	</option>
						# END modules.feeds_urls #
						</optgroup>
						<option value="null" style="text-align:center;">-----------------------------</option>
					# END modules #
				</select></div>
			</div>
			<div class="form-element">
				<label for="activ">{L_STATUS}</label>
				<div class="form-field"><label>
					<select name="activ" id="activ">
					   # IF C_ENABLED #
							<option value="1" selected="selected">{L_ENABLED}</option>
							<option value="0">{L_DISABLED}</option>
						# ELSE #
                            <option value="1">{L_ENABLED}</option>
                            <option value="0" selected="selected">{L_DISABLED}</option>
						# ENDIF #
					</select>
				</label></div>
			</div>
			<div class="form-element">
				<label for="items_number">* ${LangLoader::get_message('items_number', 'common')}</label>
				<div class="form-field"><label><input type="number" min="1" max="500" name="items_number" id="items_number" value="{ITEMS_NUMBER}"></label></div>
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
			# IF C_EDIT #<input type="hidden" name="id" value="{IDMENU}"># ENDIF #
			<button type="submit" class="submit" name="valid" value="true">{L_ACTION}</button>
			<input type="hidden" name="token" value="{TOKEN}">
		</fieldset>
	</form>
</div>
