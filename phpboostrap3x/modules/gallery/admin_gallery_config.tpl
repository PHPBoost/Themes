		<script>
		<!--
		function check_form(){
			if(document.getElementById('max_height').value == "") {
				alert("{L_REQUIRE_MAX_HEIGHT}");
				return false;
			}
			if(document.getElementById('max_width').value == "") {
				alert("{L_REQUIRE_MAX_WIDTH}");
				return false;
			}
			if(document.getElementById('mini_max_height').value == "") {
				alert("{L_REQUIRE_MINI_MAX_HEIGHT}");
				return false;
			}
			if(document.getElementById('mini_max_width').value == "") {
				alert("{L_REQUIRE_MINI_MAX_WIDTH}");
				return false;
			}
			if(document.getElementById('max_weight').value == "") {
				alert("{L_REQUIRE_MAX_WEIGHT}");
				return false;
			}
			if(document.getElementById('quality').value == "") {
				alert("{L_REQUIRE_QUALITY}");
				return false;
			}
			if(document.getElementById('categories_number_per_page').value == "") {
				alert("{L_REQUIRE_CAT_P}");
				return false;
			}
			if(document.getElementById('columns_number').value == "") {
				alert("{L_REQUIRE_ROW}");
				return false;
			}
			if(document.getElementById('pics_number_per_page').value == "") {
				alert("{L_REQUIRE_IMG_P}");
				return false;
			}

			return true;
		}
		-->
		</script>

		<nav id="admin-quick-menu">
			<a href="" class="js-menu-button" onclick="open_submenu('admin-quick-menu');return false;" title="{L_GALLERY_MANAGEMENT}">
				<i class="fa fa-bars"></i> {L_GALLERY_MANAGEMENT}
			</a>
			<ul>
				<li>
					<a href="admin_gallery.php" class="quick-link">{L_GALLERY_MANAGEMENT}</a>
				</li>
				<li>
					<a href="admin_gallery_add.php" class="quick-link">{L_GALLERY_PICS_ADD}</a>
				</li>
				<li>
					<a href="admin_gallery_config.php" class="quick-link">{L_GALLERY_CONFIG}</a>
				</li>
				<li>
					<a href="${relative_url(GalleryUrlBuilder::documentation())}" class="quick-link">${LangLoader::get_message('module.documentation', 'admin-modules-common')}</a>
				</li>
			</ul>
		</nav>

		<div id="admin-contents">
			<form action="admin_gallery_config.php" method="post" onsubmit="return check_form();" class="form-horizontal">
				<p class="center">{L_REQUIRE}</p>
				<fieldset>
					<legend>{L_CONFIG_CONFIG}</legend>
					<div class="fieldset-inset">
						<div class="form-group">
							<label class="control-label col-sm-4" for="max_width">* {L_MAX_WIDTH} ({L_UNIT_PX}) <span class="help-block">{L_MAX_WIDTH_EXPLAIN}</span></label>
							<div class="col-sm-8">
								<input class="form-control" type="number" min="1" id="max_width" name="max_width" value="{MAX_WIDTH}" /></div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-4" for="max_height">* {L_MAX_HEIGHT} ({L_UNIT_PX}) <span class="help-block">{L_MAX_HEIGHT_EXPLAIN}</span></label>
							<div class="col-sm-8"><input class="form-control" type="number" min="1" id="max_height" name="max_height" value="{MAX_HEIGHT}" /></div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-4" for="mini_max_height">* {L_MINI_MAX_HEIGHT} ({L_UNIT_PX}) <span class="help-block">{L_MINI_MAX_HEIGHT_EXPLAIN}</span></label>
							<div class="col-sm-8"><input class="form-control" type="number" min="1" id="mini_max_height" name="mini_max_height" value="{MINI_MAX_HEIGHT}" /></div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-4" for="mini_max_width">* {L_MINI_MAX_WIDTH} ({L_UNIT_PX}) <span class="help-block">{L_MINI_MAX_WIDTH_EXPLAIN}</span></label>
							<div class="col-sm-8"><input class="form-control" type="number" min="1" id="mini_max_width" name="mini_max_width" value="{MINI_MAX_WIDTH}" /></div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-4" for="max_weight">* {L_MAX_WEIGHT} ({L_UNIT_KO}) <span class="help-block">{L_MAX_WEIGHT_EXPLAIN}</span></label>
							<div class="col-sm-8"><input class="form-control" type="number" min="1" id="max_weight" name="max_weight" value="{MAX_WEIGHT}" /></div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-4" for="quality">* {L_QUALITY_THUMB} (%) <span class="help-block">{L_QUALITY_THUMB_EXPLAIN}</span></label>
							<div class="col-sm-8"><input class="form-control" type="number" min="1" max="100" id="quality" name="quality" value="{QUALITY}" /></div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-4" for="categories_number_per_page">* ${LangLoader::get_message('config.categories_number_per_page', 'admin-common')}</label>
							<div class="col-sm-8"><input class="form-control" type="number" min="1" max="50" id="categories_number_per_page" name="categories_number_per_page" value="{CATEGORIES_NUMBER_PER_PAGE}" /></div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-4" for="columns_number">* {L_COLUMNS_NUMBER} ({L_COLUMN}) <span class="help-block">{L_COLUMNS_NUMBER_EXPLAIN}</span></label>
							<div class="col-sm-8"><input class="form-control" type="number" min="1" max="4" id="columns_number" name="columns_number" value="{COLUMNS_NUMBER}" /></div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-4" for="pics_number_per_page">* {L_PICS_NUMBER_PER_PAGE}</label>
							<div class="col-sm-8"><input class="form-control" type="number" min="1" max="100" id="pics_number_per_page" name="pics_number_per_page" value="{PICS_NUMBER_PER_PAGE}" /></div>
						</div>
					</div>
				</fieldset>

				<fieldset>
					<legend>{L_DISPLAY_OPTION}</legend>
					<div class="fieldset-inset">
						<div class="form-group">
							<label class="col-sm-4" for="pics_enlargement_mode">{L_DISPLAY_MODE}</label>
							<div class="col-sm-8">
								<input type="radio" # IF C_DISPLAY_PICS_NEW_PAGE #checked="checked" # ENDIF #name="pics_enlargement_mode" id="pics_enlargement_mode" value="{NEW_PAGE}" />
								{L_NEW_PAGE}
								<div class="clearfix"></div>
								<input type="radio" # IF C_DISPLAY_PICS_RESIZE #checked="checked" # ENDIF #name="pics_enlargement_mode" id="pics_enlargement_mode_2" value="{RESIZE}" />
								{L_RESIZE}
								<div class="clearfix"></div>
								<input type="radio" # IF C_DISPLAY_PICS_POPUP #checked="checked" # ENDIF #name="pics_enlargement_mode" id="pics_enlargement_mode_3" value="{POPUP}" />
								{L_POPUP}
								<div class="clearfix"></div>
								<input type="radio" # IF C_DISPLAY_PICS_FULL_SCREEN #checked="checked" # ENDIF #name="pics_enlargement_mode" id="pics_enlargement_mode_4" value="{FULL_SCREEN}">
								{L_POPUP_FULL}
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-4" for="title_enabled">{L_TITLE_ENABLED} <span class="help-block">{L_TITLE_ENABLED_EXPLAIN}</span></label>
							<div class="col-sm-8">
								<input type="radio" # IF C_TITLE_ENABLED #checked="checked" # ENDIF #name="title_enabled" id="activ_title" value="1">
								{L_ENABLED}
								<div class="clearfix"></div>
								<input type="radio" # IF NOT C_TITLE_ENABLED #checked="checked" # ENDIF #name="title_enabled" id="activ_title_2" value="0">
								{L_DISABLED}
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-4" for="author_displayed">{L_AUTHOR_DISPLAYED} <span class="help-block">{L_AUTHOR_DISPLAYED_EXPLAIN}</span></label>
							<div class="col-sm-8">
								<input type="radio" # IF C_AUTHOR_DISPLAYED #checked="checked" # ENDIF #name="author_displayed" id="author_displayed" value="1">
								{L_ENABLED}
								<div class="clearfix"></div>
								<input type="radio" # IF NOT C_AUTHOR_DISPLAYED #checked="checked" # ENDIF #name="author_displayed" id="author_displayed_2" value="0">
								{L_DISABLED}
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-4" for="views_counter_enabled">{L_VIEWS_COUNTER_ENABLED} <span class="help-block">{L_VIEWS_COUNTER_ENABLED_EXPLAIN}</span></label>
							<div class="col-sm-8">
								<input type="radio" # IF C_VIEWS_COUNTER_ENABLED #checked="checked" # ENDIF #name="views_counter_enabled" id="views_counter_enabled" value="1">
								{L_ENABLED}
								<div class="clearfix"></div>
								<input type="radio" # IF NOT C_VIEWS_COUNTER_ENABLED #checked="checked" # ENDIF #name="views_counter_enabled" id="views_counter_enabled_2" value="0">
								{L_DISABLED}
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-4" for="notes_number_displayed">{L_NOTES_NUMBER_DISPLAYED}</label>
							<div class="col-sm-8">
									<input type="radio" # IF C_NOTES_NUMBER_DISPLAYED #checked="checked" # ENDIF #name="notes_number_displayed" id="notes_number_displayed" value="1" />
									{L_YES}
									<div class="clearfix"></div>
									<input type="radio" # IF NOT C_NOTES_NUMBER_DISPLAYED #checked="checked" # ENDIF #name="notes_number_displayed" id="notes_number_displayed_2" value="0" />
									{L_NO}
							</div>
						</div>
					</div>
				</fieldset>

				<fieldset>
					<legend>{L_THUMBNAILS_SCROLLING}</legend>
					<div class="fieldset-inset">
						<div class="form-group">
							<label class="control-label col-sm-4" for="scroll_type">{L_SCROLL_TYPE}</label>
							<div class="col-sm-8">
								<select class="form-control" name="scroll_type" id="scroll_type">
									{SCROLL_TYPES}
								</select>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-4" for="pics_number_in_mini">{L_PICS_NUMBER_IN_MINI}</label>
							<div class="col-sm-8"><input class="form-control" type="number" min="1" name="pics_number_in_mini" id="pics_number_in_mini" value="{PICS_NUMBER_IN_MINI}"></div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-4" for="mini_pics_speed">{L_MINI_PICS_SPEED} <span class="help-block">{L_MINI_PICS_SPEED_EXPLAIN}</span></label>
							<div class="col-sm-8">
								<select class="form-control" name="mini_pics_speed" id="mini_pics_speed">
								{MINI_PICS_SPEED}
								</select>
							</div>
						</div>
					</div>
				</fieldset>

				<fieldset>
					<legend>{L_IMG_PROTECT}</legend>
					<div class="fieldset-inset">
						<div class="form-group">
							<label class="col-sm-4" for="logo_enabled">{L_LOGO_ENABLED} <span class="help-block">{L_LOGO_ENABLED_EXPLAIN}</span></label>
							<div class="col-sm-8">
								<input type="radio" # IF C_LOGO_ENABLED #checked="checked" # ENDIF #name="logo_enabled" id="logo_ENABLED" value="1" />
								{L_ENABLED}
								<div class="clearfix"></div>
								<input type="radio" # IF NOT C_LOGO_ENABLED #checked="checked" # ENDIF #name="logo_enabled" id="logo_ENABLED_2" value="0" />
								{L_DISABLED}
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-4" for="logo">{L_LOGO_URL} <span class="help-block">{L_LOGO_URL_EXPLAIN}</span></label>
							<div class="col-sm-8"><input class="form-control" type="text" name="logo" id="logo" value="{LOGO}"></div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-4" for="logo_transparency">{L_LOGO_TRANSPARENCY} (%) <span class="help-block">{L_LOGO_TRANSPARENCY_EXPLAIN}</span></label>
							<div class="col-sm-8"><input class="form-control" type="number" min="1" max="100" name="logo_transparency" id="logo_transparency" value="{LOGO_TRANSPARENCY}"></div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-4" for="logo_horizontal_distance">{L_WIDTH_BOTTOM_RIGHT} ({L_UNIT_PX}) <span class="help-block">{L_WIDTH_BOTTOM_RIGHT_EXPLAIN}</span></label>
							<div class="col-sm-8"><input class="form-control" type="number" min="1" name="logo_horizontal_distance" id="logo_horizontal_distance" value="{LOGO_HORIZONTAL_DISTANCE}"></div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-4" for="logo_vertical_distance">{L_HEIGHT_BOTTOM_RIGHT} ({L_UNIT_PX}) <span class="help-block">{L_HEIGHT_BOTTOM_RIGHT_EXPLAIN}</span></label>
							<div class="col-sm-8"><input class="form-control" type="number" min="1" name="logo_vertical_distance" id="logo_vertical_distance" value="{LOGO_VERTICAL_DISTANCE}"></div>
						</div>
					</div>
				</fieldset>

				<fieldset>
					<legend>{L_UPLOAD_PICS}</legend>
					<div class="fieldset-inset">
						<div class="form-group">
							<label class="control-label col-sm-4" for="member_max_pics_number">{L_MEMBER_MAX_PICS_NUMBER} <span class="help-block">{L_MEMBER_MAX_PICS_NUMBER_EXPLAIN}</span></label>
							<div class="col-sm-8"><input class="form-control" type="number" min="0" name="member_max_pics_number" id="member_max_pics_number" value="{MEMBER_MAX_PICS_NUMBER}"></div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-4" for="moderator_max_pics_number">{L_MODERATOR_MAX_PICS_NUMBER} <span class="help-block">{L_MODERATOR_MAX_PICS_NUMBER_EXPLAIN}</span></label>
							<div class="col-sm-8"><input class="form-control" type="number" min="0" name="moderator_max_pics_number" id="moderator_max_pics_number" value="{MODERATOR_MAX_PICS_NUMBER}"></div>
						</div>
					</div>
				</fieldset>

				<fieldset>
					<legend>${LangLoader::get_message('authorizations', 'common')}</legend>
					<div class="fieldset-inset">
						<p class="fieldset-description">${LangLoader::get_message('config.authorizations.explain', 'admin-common')}</p>
						<div class="form-group">
							<label class="col-sm-4">{L_AUTH_READ}</label>
							<div class="col-sm-8">{AUTH_READ}</div>
						</div>
						<div class="form-group">
							<label class="col-sm-4">{L_AUTH_WRITE}</label>
							<div class="col-sm-8">{AUTH_WRITE}</div>
						</div>
						<div class="form-group">
							<label class="col-sm-4">{L_AUTH_MODERATION}</label>
							<div class="col-sm-8">{AUTH_MODERATION}</div>
						</div>
						<div class="form-group">
							<label class="col-sm-4">${LangLoader::get_message('authorizations.categories_management', 'common')}</label>
							<div class="col-sm-8">{AUTH_MANAGE_CATEGORIES}</div>
						</div>
					</div>
				</fieldset>

				<p class="text-center">
					<input type="hidden" name="token" value="{TOKEN}">
					<button type="submit" name="valid" value="true" class="btn btn-primary">{L_UPDATE}</button>
					<button type="reset" value="true" class="btn btn-default">{L_RESET}</button>
				</p>
			</form>
			<form action="admin_gallery_config.php" name="form" method="post" class="form-horizontal">

				<fieldset>
					<legend>{L_CACHE} <i class="fa fa-refresh"></i></legend>
					<div class="form-group">
						<label class="col-sm-8">
							 {L_EXPLAIN_GALLERY_CACHE}
						</label>
						<div class="col-sm-4 text-right">
							<input type="hidden" name="token" value="{TOKEN}">
							<button type="submit" name="gallery_cache" value="true" class="btn btn-pbt">{L_EMPTY}</button>
						</div>
					</div>
				</fieldset>
			</form>
		</div>
