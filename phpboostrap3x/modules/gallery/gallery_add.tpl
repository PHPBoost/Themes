		<form class="form-horizontal" action="{U_GALLERY_ACTION_ADD}" method="post" enctype="multipart/form-data">
			<section id="module-gallery-add">
				<header>
					<h1>{L_GALLERY} - {L_ADD_IMG}</h1>
					<div class="right">
						{PAGINATION}
					</div>
				</header>
				<div class="row">
					<div class="col-sm-12 mb15">
						# INCLUDE message_helper #
						# START image_up #
						<div class="alert alert-success">{image_up.L_SUCCESS_UPLOAD}</div>
						<p class="text-center">{image_up.NAME}</p>
						<p class="text-center">
							<a href="gallery.php?cat={image_up.ID_CAT}&amp;id={image_up.ID}#pics_max"><img src="pics/{image_up.PATH}" alt="{image_up.NAME}" /></a>
						</p>
						<div class="alert alert-info text-center"><a href="gallery.php?cat={image_up.ID_CAT}">{image_up.CAT_NAME}</a></div>
						# END image_up #
					</div>
					<div class="col-sm-12">
						<ul class="list-group">
							<li class="list-group-item active">
								# START image_quota #
									{image_quota.L_IMAGE_QUOTA}
								# END image_quota #
							</li>
							<li class="list-group-item">{L_IMG_FORMAT}: {IMG_FORMAT}</li>
							<li class="list-group-item">{L_WIDTH_MAX}: {WIDTH_MAX} {L_UNIT_PX}</li>
							<li class="list-group-item">{L_HEIGHT_MAX}: {HEIGHT_MAX} {L_UNIT_PX}</li>
							<li class="list-group-item">{L_WEIGHT_MAX}: {WEIGHT_MAX} {L_UNIT_KO}</li>
						</ul>
					</div>
					<div class="col-sm-12">
						{CATEGORIES_TREE}
					</div>
					<label class="col-sm-4 control-label">{L_NAME}</label>
					<div class="col-sm-8 mb15">
						<input class="form-control" type="text" name="name">
					</div>
					<label class="col-sm-4 control-label">*</label>
					<div class="col-sm-8 mb15">
						<input type="file" name="gallery" class="file" />
					</div>
					<p class="text-center">
						<input type="hidden" name="max_file_size" value="2000000">
						<input type="hidden" name="token" value="{TOKEN}">
						<button type="submit" name="vupload" value="true" class="btn btn-primary">{L_UPLOAD}</button>
					</p>
				</div>
				<footer>
					{PAGINATION}
				</footer>
			</section>
		</form>
