		# IF C_IMG #
		<script>
			function unselect_all_pictures() {
				# START list #
				jQuery('#' + '{list.ID}activ').prop('checked', false);
				# END list #
				jQuery('#change_all_pictures_selection_top').attr('onclick', "select_all_pictures();return false;");
				jQuery('#change_all_pictures_selection_top').text("{L_SELECT_ALL_PICTURES}");
				jQuery('#change_all_pictures_selection_bottom').attr('onclick', "select_all_pictures();return false;");
				jQuery('#change_all_pictures_selection_bottom').text("{L_SELECT_ALL_PICTURES}");
			};

			function select_all_pictures() {
				# START list #
				jQuery('#' + '{list.ID}activ').prop('checked', 'checked');
				# END list #
				jQuery('#change_all_pictures_selection_top').attr('onclick', "unselect_all_pictures();return false;");
				jQuery('#change_all_pictures_selection_top').text("{L_UNSELECT_ALL_PICTURES}");
				jQuery('#change_all_pictures_selection_bottom').attr('onclick', "unselect_all_pictures();return false;");
				jQuery('#change_all_pictures_selection_bottom').text("{L_UNSELECT_ALL_PICTURES}");
			};
		</script>
		# ENDIF #

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

			# INCLUDE message_helper #

			<form action="admin_gallery_add.php" method="post" enctype="multipart/form-data" class="form-horizontal">
				<fieldset>
					<legend>{L_ADD_IMG}</legend>
					<div class="form-group">
						<div class="col-sm-8">
							# START image_up #
								<div class="alert alert-success">
									{image_up.L_SUCCESS_UPLOAD}
								</div>
								<div class="text-center">
									<p><strong>{image_up.NAME}</strong></p>
									<p>
										<a href="{image_up.U_IMG}"><img src="pics/{image_up.PATH}" alt="{image_up.NAME}" /></a>
									</p>
									<a href="{image_up.U_CAT}" title="{image_up.CATNAME}" class="btn btn-pbt">{image_up.CATNAME}</a>
								</div>
							# END image_up #
						</div>
						<div class="col-sm-4">
							<ul class="list-group">
								<li class="list-group-item">{L_AUTH_EXTENSION} : <strong>{AUTH_EXTENSION}</strong></li>
								<li class="list-group-item">{L_WIDTH_MAX} : <strong>{WIDTH_MAX} {L_UNIT_PX}</strong></li>
								<li class="list-group-item">{L_HEIGHT_MAX} : <strong>{HEIGHT_MAX} {L_UNIT_PX}</strong></li>
								<li class="list-group-item">{L_WEIGHT_MAX} : <strong>{WEIGHT_MAX} {L_UNIT_KO}</strong></li>
							</ul>
						</div>
					</div>

						<div class="form-group">
							<label class="control-label col-sm-4" for="category">${LangLoader::get_message('form.category', 'common')}</label>
							<div class="col-sm-8">
								<select class="form-control" name="idcat_post" id="category">
									{CATEGORIES}
								</select>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-4" for="name">{L_NAME}</label>
							<div class="col-sm-8"><input class="form-control" type="text" name="name" id="name"></div>
						</div>
						<div class="form-group">
							<label class="col-sm-4" for="gallery">{L_UPLOAD_IMG}</label>
							<div class="col-sm-8">
								<div class="row">
									<div class="col-sm-8"><input type="file" name="gallery" id="gallery"></div>
									<div class="col-sm-4 text-right">
										<input type="hidden" name="max_file_size" value="2000000">
										<input type="hidden" name="token" value="{TOKEN}">
										<button type="submit" name="" value="true" class="btn btn-primary">{L_UPLOAD_IMG}</button>
									</div>
								</div>
							</div>
						</div>
				</fieldset>
			</form>

			<form action="admin_gallery_add.php" method="post" class="form-horizontal">
				# IF C_IMG #
				<div class="text-center"><a href="" onclick="unselect_all_pictures();return false;" id="change_all_pictures_selection_top" class="btn btn-info btn-sm">{L_UNSELECT_ALL_PICTURES}</a></div>

				<div class="table-responsive">
					<table class="table table-bordered table-hover">
						<thead>
							<tr>
								<th colspan="4">{L_IMG_DISPO_GALLERY}</th>
							</tr>
						</thead>
						<tbody>
							# START list #
							# IF list.C_DISPLAY_TR_START #<tr># ENDIF #
								<td>
									<div class="small">
										<div class="thumbnail">
											<img src="pics/thumbnails/{list.NAME}" alt="{list.NAME}" />
										</div>
										<div class="clearfix"></div>
										<div>
											{L_NAME}
											<div class="clearfix"></div>
											<input class="form-control" type="text" name="{list.ID}name" value="{list.NAME}">
											<input type="hidden" name="{list.ID}uniq" value="{list.UNIQ_NAME}">
										</div>
										<div class="clearfix"></div>
										<div>
											${LangLoader::get_message('form.category', 'common')}
											<div class="clearfix"></div>
												<select class="form-control" name="{list.ID}cat" id="{list.ID}cat" class="select-cat">
													{list.CATEGORIES}
												</select>
										</div>
										<div class="clearfix"></div>
										<div class="right">
											{L_SELECT} <input type="checkbox" checked="checked" id="{list.ID}activ" name="{list.ID}activ" value="1">
											<div class="clearfix"></div>
											{L_DELETE} <input type="checkbox" name="{list.ID}del" value="1">
										</div>
									</div>
								</td>
							# IF list.C_DISPLAY_TR_END #</tr># ENDIF #
							# END list #

							# START end_td_pics #
								<td style="width:{end_td_pics.COLUMN_WIDTH_PICS}%;padding:0">&nbsp;</td>

							# IF end_td_pics.C_DISPLAY_TR_END #</tr># ENDIF #
							# END end_td_pics #
						</tbody>
					</table>
				</div>
				<div class="text-center"><a href="" onclick="unselect_all_pictures();return false;" id="change_all_pictures_selection_bottom" class="btn btn-info btn-sm">{L_UNSELECT_ALL_PICTURES}</a></div>

				<div class="clearfix"></div>

				<div class="form-group">
					<label class="control-label col-sm-4" for="root_cat">{L_GLOBAL_CAT_SELECTION} <span class="help-block">{L_GLOBAL_CAT_SELECTION_EXPLAIN}</span></span></label>
					<div class="col-sm-8">
						<select class="form-control" name="root_cat" id="root_cat">
							{ROOT_CATEGORIES}
						</select>
						<script>
						jQuery('#root_cat').on('change', function() {
							root_value = jQuery('#root_cat').val();
							# START list #
							jQuery('#' + '{list.ID}cat').val(root_value);
							# END list #
						});
						</script>
					</div>
				</div>

				<p class="text-center">
					<input type="hidden" name="nbr_pics" value="{NBR_PICS}">
					<input type="hidden" name="token" value="{TOKEN}">
					<button type="submit" name="valid" value="true" class="btn btn-primary">{L_SUBMIT}</button>
				</p>

					# ELSE #
						<div class="alert alert-notice">{L_NO_IMG}</div>
					# ENDIF #
			</form>
		</div>
