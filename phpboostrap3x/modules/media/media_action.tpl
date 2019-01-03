		# IF C_ADD_MEDIA #
		<script>
		<!--
		function check_form()
		{
			if (document.getElementById('name').value == "")
			{
				alert ("{L_REQUIRE_NAME}");
				return false;
		    }
			if (document.getElementById('u_media').value == "" || document.getElementById('u_media').value == "http://")
			{
				alert ("{L_REQUIRE_URL}");
				return false;
		    }
			return true;
		}

		function in_array(needle, haystack)
		{
			for (var i=0; i < haystack.length; i++)
				if (haystack[i] == needle)
					return true;

			return false;
		}

		function hide_width_height()
		{
			var id_music = new Array({JS_ID_MUSIC});

			if (id_music.length > 0)
				if (in_array(jQuery('#idcat').val(), id_music))
				{
					jQuery('#width_dl').hide();
					jQuery('#height_dl').hide();
				}
				else
				{
					jQuery('#width_dl').show();
					jQuery('#height_dl').show();
				}
		}

		jQuery(document).ready(function() {
			# IF C_MUSIC #
			jQuery('#width_dl').hide();
			jQuery('#height_dl').hide();
			# ENDIF #
			jQuery('#idcat').change(function() {
				hide_width_height();
			});
		});
		-->
		</script>

		<section id="module-media-action">
			<header>
				<h1>{L_PAGE_TITLE}</h1>
			</header>
			<div class="row">
				<div class="col-sm-12">
					<form action="media_action.php" method="post" onsubmit="return check_form();" class="form-horizontal">
						<p class="text-center">{L_REQUIRE}</p>
						<article>
							<header>
								<h2>{L_PAGE_TITLE}</h2>
							</header>
							<div class="form-group">
								<label class="col-sm-4 control-label" for="name">* {L_TITLE}</label>
								<div class="col-sm-8">
									<input type="text" class="form-control" id="name" name="name" value="{NAME}" />
								</div>
							</div>
							# IF C_CATEGORIES #
							<div class="form-group">
								<label class="col-sm-4 control-label" for="category">${LangLoader::get_message('form.category', 'common')}</label>
								<div class="col-sm-8">
									<select class="form-control" name="idcat" id="idcat">
										{CATEGORIES}
									</select>
								</div>
							</div>
							# ENDIF #
							<div class="form-group" id="width_dl">
								<label class="col-sm-4 control-label" for="width">{L_WIDTH}</label>
								<div class="col-sm-8">
									<input class="form-control" type="number" min="10" max="5000" id="width" name="width" value="{WIDTH}" />
								</div>
							</div>
							<div class="form-group" id="height_dl">
								<label class="col-sm-4 control-label" for="height">{L_HEIGHT}</label>
								<div class="col-sm-8">
									<input class="form-control" type="number" min="10" max="5000" id="height" name="height" value="{HEIGHT}" />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-4 control-label" for="u_media">* {L_U_MEDIA}</label>
								<div class="col-sm-8">
									<input type="text" class="form-control" id="u_media" name="u_media" value="{U_MEDIA}" placeholder="http://" /></div>
							</div>
							<div class="form-group">
								<label class="col-sm-4 control-label" for="poster">{L_POSTER}</label>
								<div class="col-sm-8# IF C_AUTH_UPLOAD # form-field-upload-file# ENDIF #">
								<div class="input-group">
									<input type="text" class="form-control" id="poster" name="poster" value="{POSTER}" />
									<div class="input-group-addon">
										# IF C_AUTH_UPLOAD #
											<a title="${LangLoader::get_message('files_management', 'main')}" href="" class="fa fa-cloud-upload" onclick="window.open('{PATH_TO_ROOT}/user/upload.php?popup=1&amp;fd=poster&amp;parse=true&amp;no_path=true', '', 'height=500,width=720,resizable=yes,scrollbars=yes');return false;"></a>
										# ENDIF #
									</div>
								</div>


								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-12 control-label" for="contents" id="preview_content">{L_CONTENTS}</label>
								<div class="col-sm-12 ">
									{KERNEL_EDITOR}
									<textarea class="form-control" rows="10" cols="90" id="contents" name="contents">{DESCRIPTION}</textarea>
								</div>
							</div>
							# IF C_APROB #
							<div class="form-group">
								<label class="col-sm-4 control-label">{L_APPROVED}</label>
								<div class="col-sm-8">
									<input type="checkbox" name="approved" id="approved"{APPROVED} />
								</div>
							</div>
							# ENDIF #
						</article>
						# IF C_CONTRIBUTION #
						<article>
							<header>
								<h2>{L_CONTRIBUTION_LEGEND}</h2>
							</header>
							<div class="well well-lg">{L_NOTICE_CONTRIBUTION}</div>
							<div class="form-group">
								<label class="col-sm-12 control-label">{L_CONTRIBUTION_COUNTERPART} <p class="help-block">{L_CONTRIBUTION_COUNTERPART_EXPLAIN}</p></label>
								<div class="col-sm-12">
									{CONTRIBUTION_COUNTERPART_EDITOR}
									<textarea class="form-control" rows="20" cols="40" id="counterpart" name="counterpart">{CONTRIBUTION_COUNTERPART}</textarea>
								</div>
							</div>
						</article>
						# ENDIF #

						<div class="text-center">
							<legend>{L_SUBMIT}</legend>
							<input type="hidden" name="idedit" value="{IDEDIT}" />
							<input type="hidden" name="contrib" value="{C_CONTRIBUTION}" />
							<input type="hidden" name="token" value="{TOKEN}" />
							<button type="submit" name="submit" value="true" class="btn btn-primary">{L_SUBMIT}</button>
							<button type="button" class="btn btn-default" onclick="XMLHttpRequest_preview(); return false;">{L_PREVIEW}</button>
							<button type="reset" value="true" class="btn btn-default">{L_RESET}</button>
						</div>
					</form>
				</div>

			</div>
			<footer></footer>
		</section>
		# ENDIF #
