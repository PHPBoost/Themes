	{HEADER}
	<script>
	<!--
	function close_popup()
	{
		opener=self;
		self.close();
	}
	-->
	</script>
	<section id="module-user-upload-move" class="col-sm-12">
		<header><h1>{L_FILES_MANAGEMENT}</h1></header>
		<div class="">
			<div class="well well-sm">
				<a href="upload.php?root=1{POPUP}"><i class="fa fa-home"></i> {L_ROOT}</a>{URL}
			</div>
			# INCLUDE message_helper #
			<form class="form-group" action="{TARGET}" method="post">
				<div class="upload-elements-container">
					# START folder #
						<div class="col-sm-4">
							<i class="fa fa-folder"></i> {folder.NAME}
						</div>
					# END folder #

					# START file #
						<div class="col-sm-4">

							<ul class="list-group">
								<li class="list-group-item text-center">
									# IF file.C_DISPLAY_REAL_IMG #
										<img src="{PATH_TO_ROOT}/upload/{file.FILE_ICON}" alt="{file.NAME}"/>
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
						<i class="fa fa-arrow-right"></i>
					</div>
					<div class="col-sm-4">
							<script src="{PATH_TO_ROOT}/kernel/lib/js/phpboost/upload.js"></script>
							<script>
							<!--
								var path = '{PATH_TO_ROOT}/templates/{THEME}';
								var selected_cat = {SELECTED_CAT};
							-->
							</script>
							<span class="upload-root-cat"><a href="javascript:select_cat(0);"><i class="fa fa-home"></i> <span id="class-0" class="{CAT_0}">{L_ROOT}</span></a></span>
							<br />
							{FOLDERS}
					</div>
				</div>
				<div class="clearfix"></div>
				<p class="text-center">
					<input type="hidden" name="new_cat" id="id_cat" value="{SELECTED_CAT}">
					<input type="hidden" name="token" value="{TOKEN}">
					<button type="submit" value="true" name="valid" class="btn btn-primary">{L_SUBMIT}</button>
				</p>
			</form>
		</div>
		<footer></footer>
	</section>
	{FOOTER}
