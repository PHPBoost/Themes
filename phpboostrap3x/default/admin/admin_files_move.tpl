

		<nav id="admin-quick-menu">
			<a href="" class="js-menu-button" onclick="open_submenu('admin-quick-menu');return false;" title="{L_FILES_MANAGEMENT}">
				<i class="fa fa-bars"></i> {L_FILES_MANAGEMENT}
			</a>
			<ul>
				<li>
					<a href="admin_files.php" class="quick-link">{L_FILES_MANAGEMENT}</a>
				</li>
				<li>
					<a href="${relative_url(AdminFilesUrlBuilder::configuration())}" class="quick-link">{L_CONFIG_FILES}</a>
				</li>
			</ul>
		</nav>

		<div id="admin-contents">
			<fieldset>
				<legend>{L_FILES_MANAGEMENT}</legend>
				<div class="fieldset-inset">
					<div class="well well-sm">
						<a href="admin_files.php"><i class="fa fa-home"></i> {L_ROOT}</a> {URL}
					</div>

					# INCLUDE message_helper #
					<form class="form-group" action="{TARGET}" method="post">
						<div class="upload-elements-container">
							# START folder #
								<div class="col-sm-4">
									<i class="fa fa-folder fa-2x"></i> {folder.NAME}
								</div>
							# END folder #

							# START file #
								<div class="col-sm-4">

									<ul class="list-group">
										<li class="list-group-item text-center">
											# IF file.C_DISPLAY_REAL_IMG #
												<img src="{PATH_TO_ROOT}/upload/{file.FILE_ICON}" alt="{file.NAME}" />
											# ELSE #
												<i class="fa {file.FILE_ICON}"></i>
											# ENDIF #
										</li>
										<li class="list-group-item">{file.NAME}</li>
										<li class="list-group-item">{file.FILETYPE}</li>
										<li class="list-group-item">{file.SIZE}</li>
									</ul>
								</div>
							# END file #

							<div class="col-sm-4 text-center">
								<strong>{L_MOVE_TO}</strong>
								<br />
								<i class="fa fa-arrow-right fa-2x"></i>
							</div>
							<div class="col-sm-4">
									<script src="{PATH_TO_ROOT}/kernel/lib/js/phpboost/upload.js"></script>
									<script>
									<!--
										var path = '{PATH_TO_ROOT}/templates/{THEME}';
										var selected_cat = {SELECTED_CAT};
									-->
									</script>
									<span><a href="javascript:select_cat(0);"><i class="fa fa-home"></i> <span id="class-0" class="{CAT_0}">{L_ROOT}</span></a></span>
									<br />
									{FOLDERS}
							</div>
						</div>
						<div class="clearfix"></div>
						<p class="text-center">
							<input type="hidden" name="new_cat" id="id_cat" value="{SELECTED_CAT}">
							<button type="submit" class="btn btn-primary" value="true" name="valid">{L_SUBMIT}</button>
							<input type="hidden" name="token" value="{TOKEN}">
						</p>
					</form>
				</div>
			</fieldset>
		</div>
