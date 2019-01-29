		<script>
			<!--
			function check_form_conf()
			{
				if(document.getElementById('cookie_lenght').value == "") {
					alert("{L_REQUIRE}");
					return false;
				}
				if(document.getElementById('cookie_name').value == "") {
					alert("{L_REQUIRE}");
					return false;
				}
				return true;
			}
			function select_displayed_polls_in_mini(id, status)
			{
				var i;

				for(i = 0; i < {NBR_POLL}; i++)
				{
					if( document.getElementById(id + i) )
						document.getElementById(id + i).selected = status;
				}
			}
			-->
			</script>

		<nav id="admin-quick-menu">
			<a href="" class="js-menu-button" onclick="open_submenu('admin-quick-menu');return false;" title="{L_POLL_MANAGEMENT}">
				<i class="fa fa-bars"></i> {L_POLL_MANAGEMENT}
			</a>
			<ul>
				<li>
					<a href="admin_poll.php" class="quick-link">{L_POLL_MANAGEMENT}</a>
				</li>
				<li>
					<a href="admin_poll_add.php" class="quick-link">{L_POLL_ADD}</a>
				</li>
				<li>
					<a href="admin_poll_config.php" class="quick-link">{L_POLL_CONFIG}</a>
				</li>
				<li>
					<a href="${relative_url(PollUrlBuilder::documentation())}" class="quick-link">${LangLoader::get_message('module.documentation', 'admin-modules-common')}</a>
				</li>
			</ul>
		</nav>

		<div class="admin-module-poll" id="admin-contents">
			<form action="admin_poll_config.php" method="post" class="form-horizontal" onsubmit="check_form_conf()">
				<p class="center">{L_REQUIRE}</p>

				<fieldset>
					<legend>{L_POLL_CONFIG_MINI}</legend>
					<div class="fieldset-inset">
						<div class="form-group">
							<label class="col-sm-4" for="displayed_in_mini_module_list">{L_DISPLAYED_IN_MINI_MODULE_LIST} <span class="help-block">{L_DISPLAYED_IN_MINI_MODULE_LIST_EXPLAIN}</span></label>
							<div class="col-sm-8">
								<select class="form-control" id="displayed_in_mini_module_list" name="displayed_in_mini_module_list[]" multiple="multiple">
									{POLL_LIST}
								</select>
								<div class="btn-group btn-group-xs">
									<a class="btn btn-default" href="javascript:select_displayed_polls_in_mini('displayed_in_mini_module_list', true);">{L_SELECT_ALL}</a>
									<a class="btn btn-default" href="javascript:select_displayed_polls_in_mini('displayed_in_mini_module_list', false);">{L_SELECT_NONE}</a>
								</div>


							</div>
						</div>
					</div>
				</fieldset>

				<fieldset>
					<legend>{L_POLL_CONFIG_ADVANCED}</legend>
					<div class="fieldset-inset">
						<div class="form-group">
							<label class="control-label col-sm-4" for="cookie_name">* {L_COOKIE_NAME}</label>
							<div class="col-sm-8"><input class="form-control" type="text" name="cookie_name" id="cookie_name" value="{COOKIE_NAME}"></div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-4" for="cookie_lenght">* {L_COOKIE_LENGHT} <span class="help-block">{L_DAYS}</span></label>
							<div class="col-sm-8"><input class="form-control" type="text" name="cookie_lenght" id="cookie_lenght" value="{COOKIE_LENGHT}"></div>
						</div>
						<div class="form-group">
							<label class="col-sm-4" for="display_results_before_polls_end">{L_DISPLAY_RESULTS_BEFORE_POLLS_END}</label>
							<div class="col-sm-8">
								<input id="poll-results" type="checkbox" name="display_results_before_polls_end"# IF C_DISPLAY_RESULTS_BEFORE_POLLS_END # checked="checked"# ENDIF #>
							</div>
						</div>
					</div>
				</fieldset>

				<fieldset>
					<legend>{L_AUTHORIZATIONS}</legend>
					<div class="fieldset-inset">
						<div class="form-group">
							<label class="col-sm-4">
								{L_READ_AUTHORIZATION}
							</label>
							<div class="col-sm-8">
								{READ_AUTHORIZATION}
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-4">
								{L_WRITE_AUTHORIZATION}
							</label>
							<div class="col-sm-8">
								{WRITE_AUTHORIZATION}
							</div>
						</div>
					</div>
				</fieldset>

				<p class="text-center">
					<button type="submit" name="valid" value="true" class="btn btn-primary">{L_UPDATE}</button>
					<button type="reset" value="true" class="btn btn-default">{L_RESET}</button>
					<input type="hidden" name="token" value="{TOKEN}">
				</p>
			</form>
		</div>
