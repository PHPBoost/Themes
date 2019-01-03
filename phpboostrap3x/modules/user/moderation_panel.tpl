		<section id="module-user-moderation-panel">
			<header>
				<h1>{L_MODERATION_PANEL}</h1>
			</header>
			<div class="row text-center mb15">
			# IF C_MODO_PANEL_USER #
				<div class="col-sm-4">
					<a href="{U_WARNING}" title="{L_USERS_WARNING}">
						<p>
							<i class="fa fa-warning fa-2x"></i>
						</p>
						{L_USERS_WARNING}
					</a>
				</div>
				<div class="col-sm-4">
					<a href="{U_PUNISH}" title="{L_USERS_PUNISHMENT}">
						<p>
							<i class="fa fa-error fa-2x"></i>
						</p>
						{L_USERS_PUNISHMENT}
					</a>
				</div>
				<div class="col-sm-4">
					<a href="{U_BAN}" title="{L_USERS_BAN}">
						<p>
							<i class="fa fa-forbidden fa-2x"></i>
						</p>
						{L_USERS_BAN}
					</a>
				</div>
			</div>
			<div class="row">

				# IF C_MODO_PANEL_USER_LIST #
				<script>
				<!--
					function XMLHttpRequest_search()
					{
						var login = jQuery('#login').val();
						if( login != "" )
						{
							jQuery.ajax({
								url: '{PATH_TO_ROOT}/kernel/framework/ajax/member_xmlhttprequest.php?token={TOKEN}&{U_XMLHTTPREQUEST}=1',
								type: "post",
								dataType: "html",
								data: {'login': login},
								success: function(returnData){
									jQuery('#xmlhttprequest-result-search').html(returnData);
									jQuery('#xmlhttprequest-result-search').fadeIn();
								}
							});
						}
						else
							alert("{L_REQUIRE_LOGIN}");
					}
					-->
				</script>

				<form action="{U_ACTION}" method="post" class="form-horizontal">
					<label class="col-sm-4 control-label" for="login">{L_SEARCH_USER} <span class="help-block">{L_JOKER}</span></label>
					<div class="col-sm-8 input-group">
						<input class="form-control" type="text" id="login" value="" name="login">
						<span class="input-group-btn">
							<button class="btn btn-primary" onclick="XMLHttpRequest_search(this.form);" type="button">{L_SEARCH}</button>
						</span>
					</div>
					<input type="hidden" name="token" value="{TOKEN}">
					<div id="xmlhttprequest-result-search" style="display:none;" class="well well-sm"></div>
				</form>

				<div class="table-responsive">
					<table class="table">
						<thead>
							<tr>
								<th>{L_LOGIN}</th>
								<th>{L_INFO}</th>
								<th>{L_ACTION_USER}</th>
								<th>{L_PM}</th>
							</tr>
						</thead>
						<tbody>
							# START member_list #
							<tr>
								<td>
									<a href="{member_list.U_PROFILE}" class="{member_list.USER_LEVEL_CLASS}" # IF member_list.C_USER_GROUP_COLOR # style="color:{member_list.USER_GROUP_COLOR}" # ENDIF #>{member_list.LOGIN}</a>
								</td>
								<td>
									{member_list.INFO}
								</td>
								<td>
									{member_list.U_ACTION_USER}
								</td>
								<td>
									<a href="{member_list.U_PM}" class="btn btn-pbt btn-xs">MP</a>
								</td>
							</tr>
							# END member_list #

							# IF C_EMPTY_LIST #
							<tr>
								<td colspan="4">
									{L_NO_USER}
								</td>
							</tr>
							# ENDIF #
						</tbody>
					</table>
				</div>
				# ENDIF #



				# IF C_MODO_PANEL_USER_INFO #
				<script>
				<!--
				function change_textarea_level(replace_value, regex)
				{
					var contents = document.getElementById('action_contents').value;
					{REPLACE_VALUE}
					document.getElementById('action_contents').value = contents;

					# IF C_TINYMCE_EDITOR # setTinyMceContent(contents); # ENDIF #
				}
				-->
				</script>

				<form action="{U_ACTION_INFO}" method="post">
					<fieldset class="text-left col-sm-12">
						<legend>{L_ACTION_INFO}</legend>
						<div class="form-group">
							<label class="control-label col-sm-4">{L_LOGIN}</label>
							<div class="col-sm-8">
								<a href="{U_PROFILE}" class="{USER_LEVEL_CLASS}" # IF C_USER_GROUP_COLOR # style="color:{USER_GROUP_COLOR}" # ENDIF #>{LOGIN}</a>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-4">{L_PM}</label>
							<div class="col-sm-8">
								<a href="{U_PM}" class="btn btn-pbt">MP</a>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="form-group">
							<label for="action_contents">{L_ALTERNATIVE_PM}</label>
							{KERNEL_EDITOR}
							<textarea class="form-control" name="action_contents" id="action_contents" rows="12">{ALTERNATIVE_PM}</textarea>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-4">{L_INFO_EXPLAIN}</label>
							<div class="col-sm-8">
								<div class="input-group">
									<span  class="input-group-addon" id="action_info">{INFO}</span>
									<select class="form-control" name="new_info" onchange="change_textarea_level(this.options[this.selectedIndex].value, {REGEX})">
										{SELECT}
									</select>
								</div>

							</div>
						</div>
					</fieldset>
					<p>
						<input type="hidden" name="token" value="{TOKEN}">
						<button type="submit" name="valid_user" value="true" class="btn btn-primary">{L_CHANGE_INFO}</button>
					</p>

				</form>
				# ENDIF #

				# IF C_MODO_PANEL_USER_BAN #
				<form action="{U_ACTION_INFO}" method="post">
					<fieldset>
						<legend>{L_ACTION_INFO}</legend>

						<div class="form-group">
							<label class="control-label col-sm-4">{L_LOGIN}</label>
							<div class="col-sm-8">
								<a href="{U_PROFILE}" class="{USER_LEVEL_CLASS}" # IF C_USER_GROUP_COLOR # style="color:{USER_GROUP_COLOR}" # ENDIF #>{LOGIN}</a>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="form-element">
							<label class="control-label col-sm-4">{L_PM}</label>
							<div class="col-sm-8">
								<a href="{U_PM}" class="btn btn-pbt">MP</a>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-4">{L_DELAY_BAN}</label>
							<div class="col-sm-8">
								<select class="form-control" name="user_ban">
								# START select_ban #
									{select_ban.TIME}
								# END select_ban #
								</select>
							</div>
						</div>
					</fieldset>

					<p>
						<input type="hidden" name="token" value="{TOKEN}">
						<button type="submit" name="valid_user" value="true" class="btn btn-primary">{L_BAN}</button>
					</p>

				</form>
				# ENDIF #
			# ENDIF #
				</div>
			<footer></footer>
		</section>
