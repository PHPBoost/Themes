		<script>
		<!--
		function check_form_add_mbr(){
			if(document.getElementById('login_mbr').value == "") {
				alert("{L_REQUIRE_PSEUDO}");
				return false;
		    }
			return true;
		}

		function check_form(){
			if(document.getElementById('name').value == "") {
				alert("{L_REQUIRE_NAME}");
				return false;
		    }
			return true;
		}

		function img_change(url)
		{
			if( document.images && url != '' )
			{
				document.getElementById('img_group_change').style.display = 'inline';
				document.getElementById('img_group_change').src = "{PATH_TO_ROOT}/images/group/" + url;
			}
			else
				document.getElementById('img_group_change').style.display = 'none';
		}
		function XMLHttpRequest_search()
		{
			var login = jQuery('#login').val();
			if( login != "" )
			{
				jQuery('#search_img').append('<i class="fa fa-spinner fa-spin"></i>');

				jQuery.ajax({
					url: '{PATH_TO_ROOT}/kernel/framework/ajax/member_xmlhttprequest.php?token={TOKEN}&insert_member=1',
					type: "post",
					dataType: "html",
					data: {'login': login},
					success: function(returnData){
						jQuery('#xmlhttprequest-result-search').html(returnData);
						jQuery('#xmlhttprequest-result-search').fadeIn();
					},
					error: function(e){
						jQuery('#search_img').children("i").remove();
					}
				});
			}
			else
				alert("{L_REQUIRE_LOGIN}");
		}
		</script>

		<nav id="admin-quick-menu">
			<a href="" class="js-menu-button" onclick="open_submenu('admin-quick-menu');return false;" title="{L_GROUPS_MANAGEMENT}">
				<i class="fa fa-bars"></i> {L_GROUPS_MANAGEMENT}
			</a>
			<ul>
				<li>
					<a href="admin_groups.php" class="quick-link">{L_GROUPS_MANAGEMENT}</a>
				</li>
				<li>
					<a href="admin_groups.php?add=1" class="quick-link">{L_ADD_GROUPS}</a>
				</li>
			</ul>
		</nav>

		<div id="admin-contents">
			# IF C_EDIT_GROUP #
			<form action="admin_groups.php" method="post" onsubmit="return check_form();" class="form-horizontal">
				<p class="center">{L_REQUIRE}</p>
				<fieldset>
					<legend>{L_GROUPS_MANAGEMENT}</legend>
					<div class="fieldset-inset">
						<div class="form-group">
							<label class="control-label col-sm-4" for="name">* {L_NAME}</label>
							<div class="col-sm-8">
								<input class="form-control" type="text" id="name" name="name" value="{NAME}">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-4" for="auth_flood">{L_AUTH_FLOOD}</label>
							<div class="col-sm-8">
								<label for="auth_flood">
									<input type="radio" {AUTH_FLOOD_ENABLED} name="auth_flood" id="auth_flood" value="1" />
									{L_YES}
								</label>
								<div class="clearfix"></div>
								<label for="auth_flood_1">
									<input type="radio" {AUTH_FLOOD_DISABLED} name="auth_flood" id="auth_flood_1" value="0" />
									{L_NO}
								</label>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-4" for="pm_group_limit">{L_PM_GROUP_LIMIT} <span class="help-block">{L_PM_GROUP_LIMIT_EXPLAIN}</span></label>
							<div class="col-sm-8">
								<input class="form-control" type="text" name="pm_group_limit" id="pm_group_limit" value="{PM_GROUP_LIMIT}">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-4" for="data_group_limit">{L_DATA_GROUP_LIMIT} <span class="help-block">{L_DATA_GROUP_LIMIT_EXPLAIN}</span></label>
							<div class="col-sm-8">
								<input class="form-control" type="text" name="data_group_limit" id="data_group_limit" value="{DATA_GROUP_LIMIT}">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-4" for="color_group">{L_COLOR_GROUP}</label>
							<div class="col-sm-8">
								<input class="form-control" type="color" name="color_group" id="color_group" value="{COLOR_GROUP}" pattern="#[A-Fa-f0-9]{6}" placeholder="#000000">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-4" for="delete_group_color">{L_DELETE_GROUP_COLOR}</label>
							<div class="col-sm-8">
								<input type="checkbox" name="delete_group_color" id="delete_group_color">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-4" for="img_group">{L_IMG_ASSOC_GROUP} <span class="help-block">{L_IMG_ASSOC_GROUP_EXPLAIN}</span></label>
							<div class="col-sm-8">
								<select class="form-control" name="img" id="img_group" onchange="img_change(this.options[selectedIndex].value)">
									{IMG_GROUPS}
								</select>
								<img src="{PATH_TO_ROOT}/images/group/{IMG}" id="img_group_change" alt="{IMG}" style="display:none" />
							</div>
						</div>
					</div>
				</fieldset>

				<p class="text-center">
					<input type="hidden" name="id" value="{GROUP_ID}" class="update">
					<button type="submit" class="btn btn-primary" name="valid" value="true">{L_UPDATE}</button>
					<button type="reset" class="btn btn-default" value="true">{L_RESET}</button>
					<input type="hidden" name="token" value="{TOKEN}">
				</p>
			</form>

			# INCLUDE message_helper #

			<form action="admin_groups.php?id={GROUP_ID}" method="post" onsubmit="return check_form_add_mbr();" class="form-horizontal">
				<p class="center">{L_REQUIRE}</p>
				<fieldset>
					<legend>{L_ADD_MBR_GROUP}</legend>
					<div class="fieldset-inset">
						<div class="form-group">
							<label class="control-label col-sm-4" for="login">* {L_PSEUDO}</label>
							<div class="col-sm-8">
								<div class="input-group">
									<input class="form-control" type="text" id="login" value="{LOGIN}" name="login_mbr">
									<div class="input-group-btn">
										<button class="btn btn-info" onclick="XMLHttpRequest_search();" type="button">{L_SEARCH}</button>
									</div>
								</div>


								<div id="xmlhttprequest-result-search" style="display:none;" class="xmlhttprequest-result-search"></div>
							</div>
						</div>
					</div>
				</fieldset>
				<p class="text-center">
					<button type="submit" class="btn btn-primary" name="add_mbr" value="true">{L_ADD}</button>
					<input type="hidden" value="{TOKEN}" name="token">
				</p>
			</form>

			<div class="table-responsive">
				<table class="table table-bordered table-hover">
					<caption>
						{L_MBR_GROUP}
					</caption>
					<thead>
						<tr>
							<th>
								{L_PSEUDO}
							</th>
							<th>
								{L_DELETE}
							</th>
						</tr>
					</thead>
					<tbody>
						# START member #
						<tr>
							<td>
								<a href="{member.U_PROFILE}" class="{member.LEVEL_CLASS}" # IF member.C_GROUP_COLOR # style="color:{member.GROUP_COLOR}" # ENDIF #>{member.LOGIN}</a>
							</td>
							<td>
								<a href="admin_groups.php?del_mbr=1&amp;id={GROUP_ID}&amp;user_id={member.USER_ID}&amp;token={TOKEN}" class="fa fa-delete" data-confirmation="delete-element"></a>
							</td>
						</tr>
						# END member #
						# IF C_NO_MEMBERS #
						<tr>
							<td colspan="2">
								{NO_MEMBERS}
							</td>
						</tr>
						# ENDIF #
					</tbody>
				</table>
			</div>

			# ENDIF #

			# IF C_ADD_GROUP #

			# INCLUDE message_helper #

			<form action="admin_groups.php?add=1" method="post" enctype="multipart/form-data" class="fieldset-content">
				<fieldset>
					<legend>{L_UPLOAD_GROUPS}</legend>
					<div class="fieldset-inset">
						<div class="form-group">
							<label class=" control-label col-sm-4" for="upload_groups">{L_UPLOAD_GROUPS} <span class="help-block">{L_UPLOAD_FORMAT}</span></label>
							<div class="col-sm-8">
								<div class="row">
									<div class="col-sm-8">
										<input type="hidden" name="max_file_size" value="2000000">
										<input type="file" id="upload_groups" name="upload_groups" class="file">
									</div>
									<div class="col-sm-4 text-right">
										<button type="submit" class="btn btn-primary" name="valid" value="true">{L_UPLOAD}</button>
										<input type="hidden" value="{TOKEN}" name="token">
									</div>
								</div>
							</div>
						</div>
					</div>
				</fieldset>
			</form>

			<form action="admin_groups.php" method="post" onsubmit="return check_form();" class="form-horizontal">
				<p class="text-center">{L_REQUIRE}</p>
				<fieldset>
					<legend>{L_ADD_GROUPS}</legend>
					<div class="fieldset-inset">
						<div class="form-group">
							<label class="control-label col-sm-4" for="name">* {L_NAME}</label>
							<div class="col-sm-8">
								<input class="form-control" type="text" id="name" name="name" value="">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-4" for="auth_flood">{L_AUTH_FLOOD}</label>
							<div class="col-sm-8">
								<label for="auth_flood">
									<input type="radio" name="auth_flood" id="auth_flood" checked="checked" value="1" />
									{L_YES}
								</label>
								<div class="clearfix"></div>
								<label for="auth_flood_1">
									<input type="radio" name="auth_flood" id="auth_flood_1" value="0" />
									{L_NO}
								</label>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-4" for="pm_group_limit">{L_PM_GROUP_LIMIT} <span class="help-block">{L_PM_GROUP_LIMIT_EXPLAIN}</span></label>
							<div class="col-sm-8">
								<input class="form-control" type="text" name="pm_group_limit" id="pm_group_limit" value="75">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-4" for="data_group_limit">{L_DATA_GROUP_LIMIT} <span class="help-block">{L_DATA_GROUP_LIMIT_EXPLAIN}</span></label>
							<div class="col-sm-8">
								<input class="form-control" type="text" name="data_group_limit" id="data_group_limit" value="5">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-4" for="color_group">{L_COLOR_GROUP}</label>
							<div class="col-sm-8">
								<input class="form-control" type="color" name="color_group" id="color_group" value="{COLOR_GROUP}" pattern="#[A-Fa-f0-9]{6}" placeholder="#000000">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-4" for="img_group">{L_IMG_ASSOC_GROUP} <span class="help-block">{L_IMG_ASSOC_GROUP_EXPLAIN}</span></label>
							<div class="col-sm-8"><label>
								<select class="form-control" name="img" id="img_group" onchange="img_change(this.options[selectedIndex].value)">
									{IMG_GROUPS}
								</select>
								<img src="{PATH_TO_ROOT}/images/group/{IMG}" id="img_group_change" alt="{IMG}" style="display:none" />
							</label></div>
						</div>
					</div>
				</fieldset>
				<p class="text-center">
					<input type="hidden" name="add" value="1">
					<button type="submit" class="btn btn-primary" name="valid" value="true">{L_ADD}</button>
					<input type="hidden" value="{TOKEN}" name="token">
				</p>
			</form>
			# ENDIF #
		</div>
