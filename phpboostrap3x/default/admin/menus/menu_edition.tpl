# IF C_FIRST_MENU #
	<div id="menu_element_{ID}">
		<input type="hidden" id="menu_uid" name="menu_uid" value="{ID}">
		<ul id="menu_element_{ID}_list" class="sortable-block">
			# START elements #
				{elements.DISPLAY}
			# END elements #
		</ul>
		<p class="text-center mtb15">
			<button class="btn btn-info" type="button" id="menu_element_{ID}_add_sub_element" name="menu_element_{ID}_add_sub_element" onclick="addSubElement('menu_element_{ID}');">{L_ADD_SUB_ELEMENT}</button>
			<button class="btn btn-info" type="button" id="menu_element_{ID}_add_sub_menu" name="menu_element_{ID}_add_sub_menu" onclick="addSubMenu('menu_element_{ID}');">{L_ADD_SUB_MENU}</button>
		</p>
	</div>
# ENDIF #

# IF C_NEXT_MENU #
	<li class="sortable-element" id="menu_element_{ID}" data-id="{ID}">
		<div class="sortable-selector" title="${LangLoader::get_message('position.move', 'common')}"></div>
		<div class="sortable-title">
			<div class="input-group">
				<span class="input-group-btn">
					<span class="btn btn-default">
						<i class="fa fa-folder" style="cursor:move"></i>
					</span>
				</span>
				<input class="form-control menu-control" placeholder="{L_NAME}" type="text" value="{TITLE}" id="menu_element_{ID}_name" name="menu_element_{ID}_name">
				<input class="form-control menu-control" placeholder="{L_URL}" type="text" value="{RELATIVE_URL}" id="menu_element_{ID}_url" name="menu_element_{ID}_url">
				<input class="form-control menu-control" placeholder="{L_IMAGE}" type="text" value="{RELATIVE_IMG}" id="menu_element_{ID}_image" name="menu_element_{ID}_image" onblur="image_preview(this,menu_element_{ID}_image_preview)">
				<div class="input-group-btn">
					<a class="btn btn-info" href="" title="{L_MORE}" id="menu_element_{ID}_more_image" onclick="toggleProperties({ID});return false;"><i class="fa fa-cog"></i></a>
					<a class="btn btn-danger" href="" title="{L_DELETE}" id="menu_element_{ID}_delete_image" style="cursor:pointer;" onclick="deleteElement('menu_element_{ID}');return false;"><i class="fa fa-delete"></i></a>
				</div>
			</div>
			<script>
			<!--
				jQuery(document).ready(function() {
					image_preview(this,menu_element_{ID}_image_preview);
				});
			-->
			</script>
			<span class="preview"><img src="# IF C_IMG #{REL_IMG}# ENDIF #" id="menu_element_{ID}_image_preview" /></span>
		</div>
		<div class="clearfix"></div>
		<fieldset id="menu_element_{ID}_properties"# IF C_AUTH_MENU_HIDDEN # style="display:none;"# ENDIF #>
			<legend>{L_PROPERTIES}</legend>
			<div class="form-group">
				<label class="col-sm-4">{L_AUTHORIZATIONS}</label>
				<div class="col-sm-8">{AUTH_FORM}</div>
			</div>
		</fieldset>
        <hr/>
		<ul class="sortable-block" id="menu_element_{ID}_list">
    		# START elements #
    			{elements.DISPLAY}
    		# END elements #
		</ul>
		<p class="text-center">
			<button class="btn btn-info btn-sm" type="button" id="menu_element_{ID}_add_sub_element" name="menu_element_{ID}_add_sub_element" onclick="addSubElement('menu_element_{ID}');">{L_ADD_SUB_ELEMENT}</button>
            <button class="btn btn-info btn-sm" type="button" id="menu_element_{ID}_add_sub_menu" name="menu_element_{ID}_add_sub_menu" onclick="addSubMenu('menu_element_{ID}');">{L_ADD_SUB_MENU}</button>
		</p>
	</li>
# ENDIF #

# IF C_LINK #
    <li class="sortable-element" id="menu_element_{ID}" data-id="{ID}">
		<div class="sortable-selector" title="${LangLoader::get_message('position.move', 'common')}"></div>
   		<div class="sortable-title">
			<div class="input-group">
				<div class="input-group-btn">
					<span class="btn btn-default">
						<i class="fa fa-globe"></i>
					</span>
				</div>
				<input class="form-control menu-control" placeholder="{L_NAME}" type="text" value="{TITLE}" id="menu_element_{ID}_name" name="menu_element_{ID}_name">
				<input class="form-control menu-control" placeholder="{L_URL}" type="text" value="{RELATIVE_URL}" id="menu_element_{ID}_url" name="menu_element_{ID}_url">
				<input class="form-control menu-control" placeholder="{L_IMAGE}" type="text" value="{RELATIVE_IMG}" id="menu_element_{ID}_image" name="menu_element_{ID}_image" onblur="image_preview(this,menu_element_{ID}_image_preview)">
				<div class="input-group-btn">
					<a class="btn btn-info" href="" title="{L_MORE}" id="menu_element_{ID}_more_image" onclick="toggleProperties({ID});return false;"><i class="fa fa-cog"></i></a>
					<a class="btn btn-danger" href="" title="{L_DELETE}" id="menu_element_{ID}_delete_image" style="cursor:pointer;" onclick="deleteElement('menu_element_{ID}');return false;"><i class="fa fa-delete"></i></a>
				</div>
			</div>
		</div>
		<script>
		<!--
			jQuery(document).ready(function() {
				image_preview(this,menu_element_{ID}_image_preview);
			});
		-->
		</script>
		<span class="preview"><img src="# IF C_IMG #{REL_IMG}# ENDIF #" id="menu_element_{ID}_image_preview" /></span>
		<div class="clearfix"></div>
		<fieldset id="menu_element_{ID}_properties"# IF C_AUTH_MENU_HIDDEN # style="display:none;"# ENDIF #>
			<legend>{L_PROPERTIES}</legend>
			<div class="form-element">
				<label class="col-sm-4">{L_AUTHORIZATIONS}</label>
				<div class="col-sm-8">{AUTH_FORM}</div>
			</div>
		</fieldset>
    </li>
# ENDIF #
