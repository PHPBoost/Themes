<script>
<!--
function CheckForm() {
	if (jQuery('#name').val() == '') {
		jQuery('#name').focus();
		window.alert({JL_REQUIRE_NAME});
		return false;
	}
	if (jQuery('#feed_url').val() == "null" || jQuery('#feed_url').val() == '') {
		jQuery('#feed_url').focus();
		window.alert({JL_REQUIRE_FEED});
		return false;
	}
	if (jQuery('#items_number').val() == '' || jQuery('#items_number').val() == 0) {
		jQuery('#items_number').focus();
		window.alert({JL_REQUIRE_ITEMS_NUMBER});
		return false;
	}
	return true;
}
-->
</script>
<div id="admin-contents">
	<form action="feed.php" method="post" class="form-horizontal" onsubmit="return CheckForm();">
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
				<label class="control-label col-sm-4" for="location">{L_LOCATION}</label>
				<div class="col-sm-8">
					<select class="form-control" name="location" id="location">{LOCATIONS}</select>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-4" for="feed_url">* {L_FEED}</label>
				<div class="col-sm-8">
					<select class="form-control" name="feed_url" id="feed_url">
						<option
							value="null"
							# IF C_NEW # selected="selected"# ENDIF #
							class="feed-option-title">
							{L_AVAILABLES_FEEDS}
						</option>
						<option value="null" class="center"></option>
						# START modules #
							<optgroup label="{modules.NAME}">
							# START modules.feeds_urls #
								 <option value="{modules.feeds_urls.URL}"{modules.feeds_urls.SELECTED}>
								 	{modules.feeds_urls.SPACE} {modules.feeds_urls.NAME}
								 	# IF modules.feeds_urls.FEED_NAME #({modules.feeds_urls.FEED_NAME})# ENDIF #
							 	</option>
							# END modules.feeds_urls #
							</optgroup>
							<option value="null" class="center">-----------------------------</option>
						# END modules #
					</select>
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
				<label class="control-label col-sm-4" for="items_number">* ${LangLoader::get_message('items_number', 'common')}</label>
				<div class="col-sm-8">
					<input class="form-control" type="number" min="1" max="500" name="items_number" id="items_number" value="{ITEMS_NUMBER}">
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
			# IF C_EDIT #<input type="hidden" name="id" value="{IDMENU}"># ENDIF #
			<button type="submit" class="btn btn-primary" name="valid" value="true">{L_ACTION}</button>
			<input type="hidden" name="token" value="{TOKEN}">
		</p>
	</form>
</div>
