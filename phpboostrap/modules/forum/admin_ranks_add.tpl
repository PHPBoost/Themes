		<script>
		<!--
			function check_form_rank_add()
			{
				if(document.getElementById('name').value == "") {
					alert("{L_REQUIRE_RANK_NAME}");
					return false;
			    }
				if(document.getElementById('msg').value == "") {
					alert("{L_REQUIRE_NBR_MSG_RANK}");
					return false;
			    }
				return true;
			}

			function img_change(id, url)
			{
				if( document.getElementById(id) && url != '' )
				{
					document.getElementById(id).style.display = 'inline';
					document.getElementById(id).src = url;
				}
				else
					document.getElementById(id).style.display = 'none';
			}
		-->
		</script>

		<nav id="admin-quick-menu">
			<a href="" class="js-menu-button" onclick="open_submenu('admin-quick-menu');return false;" title="{L_FORUM_MANAGEMENT}">
				<i class="fa fa-bars"></i> {L_FORUM_MANAGEMENT}
			</a>
			<ul>
					<a href="admin_ranks.php" class="quick-link">{L_FORUM_RANKS_MANAGEMENT}</a>
				</li>
				<li>
					<a href="admin_ranks_add.php" class="quick-link">{L_FORUM_ADD_RANKS}</a>
				</li>
				<li>
					<a href="${relative_url(ForumUrlBuilder::configuration())}" class="quick-link">${LangLoader::get_message('configuration', 'admin-common')}</a>
				</li>
			</ul>
		</nav>

		<div id="admin-contents">

			# INCLUDE message_helper #

			<form action="admin_ranks_add.php" method="post" enctype="multipart/form-data" class="form-horizontal">
				<fieldset>
					<legend>{L_UPLOAD_RANKS}</legend>
					<div class="fieldset-inset">
						<div class="form-group">
							<label class="col-sm-4" for="upload_ranks">{L_UPLOAD_RANKS}<br />{L_UPLOAD_FORMAT}</label>
							<div class="col-sm-8">
								<div class="row">
									<div class="col-sm-8">
										<input type="hidden" name="max_file_size" value="2000000">
										<input type="file" id="upload_ranks" name="upload_ranks" class="file">
									</div>
									<div class="col-sm-4 text-right">
										<button type="submit" name="upload" value="true" class="btn btn-primary">{L_UPLOAD}</button>
										<input type="hidden" name="token" value="{TOKEN}">
									</div>
								</div>

							</div>
						</div>
					</div>
				</fieldset>
			</form>

			<form action="admin_ranks_add.php" method="post" onsubmit="return check_form_rank_add();" class="form-horizontal">
				<p class="center">{L_REQUIRE}</p>
				<fieldset>
					<legend>{L_ADD_RANKS}</legend>
					<div class="fieldset-inset">
						<div class="form-group">
							<label class="control-label col-sm-4" for="name">* {L_RANK_NAME}</label>
							<div class="col-sm-8">
								<input class="form-control" type="text" id="name" name="name">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-4" for="msg">* {L_NBR_MSG}</label>
							<div class="col-sm-8">
								<input class="form-control" type="number" min="0" id="msg" name="msg">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-4" for="icon">{L_IMG_ASSOC}</label>
							<div class="col-sm-8">
								<select class="form-control" name="icon" id="icon" onchange="img_change('img_icon', '{PATH_TO_ROOT}/forum/templates/images/ranks/' + this.options[selectedIndex].value)">
									{RANK_OPTIONS}
								</select>
								<img src="{PATH_TO_ROOT}/forum/templates/images/ranks/rank_0.png" id="img_icon" alt="rank_0.png" style="display:none;" />
							</div>
						</div>
					</div>
				</fieldset>

				<p class="text-center">
					<input type="hidden" name="idc" value="{NEXT_ID}">
					<input type="hidden" name="token" value="{TOKEN}">
					<button type="submit" name="add" value="true" class="btn btn-primary">{L_ADD}</button>
					<button type="reset" value="true" class="btn btn-default">{L_RESET}</button>
				</p>
			</form>
		</div>
