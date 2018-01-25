<div id="admin-contents">
	<form action="auth.php" method="post" class="form-horizontal">
		<fieldset>
			<legend>{L_ACTION_MENUS}</legend>
			<div class="form-group">
				<label class="col-sm-4">{L_NAME}</label>
				<div class="col-sm-8">{NAME}</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-4" for="location">{L_LOCATION}</label>
				<div class="col-sm-8"><select class="form-control" name="location" id="location">{LOCATIONS}</select></div>
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
				<label class="col-sm-4" for="auth">{L_AUTHS}</label>
				<div class="col-sm-8">{AUTH_MENUS}</div>
			</div>
		</fieldset>

		# INCLUDE filters #

		<p class="text-center">
			<input type="hidden" name="action" value="{ACTION}">
			<input type="hidden" name="id" value="{IDMENU}">
			<button type="submit" class="btn btn-primary" name="valid" value="true">{L_ACTION}</button>
			<button type="reset" class="btn btn-default" value="true">{L_RESET}</button>
			<input type="hidden" name="token" value="{TOKEN}">
		</p>
	</form>
</div>
