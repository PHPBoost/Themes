		# START auth #
		<form action="action.php" method="post" class="form-horizontal">
			<fieldset>
				<legend>{auth.L_TITLE}</legend>
				<div class="mb15">
					<p>
						{L_EXPLAIN_DEFAULT}
					</p>
					<p class="text-center">
						<button type="submit" name="default" value="true" class="btn btn-primary">{L_DEFAULT}</button>
					</p>
				</div>
				<p>
					{EXPLAIN_WIKI_GROUPS}
				</p>
				<div class="form-group">
					<label class="col-sm-4 control-label">{L_RESTORE_ARCHIVE}</label>
					<div class="col-sm-8"><label>{SELECT_RESTORE_ARCHIVE}</label></div>
				</div>
				<div class="form-group">
					<label class="col-sm-4 control-label">{L_DELETE_ARCHIVE}</label>
					<div class="col-sm-8"><label>{SELECT_DELETE_ARCHIVE}</label></div>
				</div>
				<div class="form-group">
					<label class="col-sm-4 control-label">{L_EDIT}</label>
					<div class="col-sm-8"><label>{SELECT_EDIT}</label></div>
				</div>
				<div class="form-group">
					<label class="col-sm-4 control-label">{L_DELETE}</label>
					<div class="col-sm-8"><label>{SELECT_DELETE}</label></div>
				</div>
				<div class="form-group">
					<label class="col-sm-4 control-label">{L_RENAME}</label>
					<div class="col-sm-8"><label>{SELECT_RENAME}</label></div>
				</div>
				<div class="form-group">
					<label class="col-sm-4 control-label">{L_REDIRECT}</label>
					<div class="col-sm-8"><label>{SELECT_REDIRECT}</label></div>
				</div>
				<div class="form-group">
					<label class="col-sm-4 control-label">{L_MOVE}</label>
					<div class="col-sm-8"><label>{SELECT_MOVE}</label></div>
				</div>
				<div class="form-group">
					<label class="col-sm-4 control-label">{L_STATUS}</label>
					<div class="col-sm-8"><label>{SELECT_STATUS}</label></div>
				</div>
				<div class="form-group">
					<label class="col-sm-4 control-label">{L_COM}</label>
					<div class="col-sm-8"><label>{SELECT_COM}</label></div>
				</div>
			</fieldset>

			<p class="text-center">
				<button type="submit" name="valid" value="true" class="btn btn-primary">{L_UPDATE}</button>
				<button type="reset" value="true" class="btn btn-default">{L_RESET}</button>
				<input type="hidden" name="id_auth" value="{auth.ID}">
				<input type="hidden" name="token" value="{TOKEN}">
			</p>
		</form>
		# END auth #


		# START status #
		<script>
		<!--
			status = new Array();
			# START status.status_array #
			status[{status.status_array.ID}] = "{status.status_array.TEXT}";
			# END status.status_array #

			function show_status()
			{
				if( document.getElementById('radio_undefined').checked )
					change_type(-1);

				//Si il s'agit d'un statut pr�d�fini
				if( document.getElementById('id_status').value > 0 && status[document.getElementById('id_status').value] != "" )
				{
					document.getElementById('current_status').innerHTML = status[parseInt(document.getElementById('id_status').value)];
				}
				else if( document.getElementById('id_status').value == 0 )
				{
					document.getElementById('current_status').innerHTML = "{status.NO_STATUS}";
				}
			}
			function change_type(id)
			{
				if( id < 0 )
				{
					document.getElementById('current_status').innerHTML = "{L_UNDEFINED_STATUS}";
					document.getElementById('radio_undefined').checked = true;
					document.getElementById('radio_defined').checked = false;
					document.getElementById('contents').disabled = false;
					document.getElementById('contents').style.color = "";
					document.getElementById('id_status').disabled = true;
				}
				else
				{
					show_status();
					document.getElementById('radio_undefined').checked = false;
					document.getElementById('radio_defined').checked = true;
					document.getElementById('contents').disabled = true;
					document.getElementById('contents').style.color = "grey";
					document.getElementById('id_status').disabled = false;
				}
			}
		-->
		</script>

		<form action="action.php" method="post" class="fieldset-content">
			<fieldset>
				<legend>{status.L_TITLE}</legend>

				<span class="formatter-blockquote">{L_CURRENT_STATUS} :</span>
				<div id="current_status" class="alert alert-notice">{status.CURRENT_STATUS}</div>

				<div class="form-group">
					<label class="control-label col-sm-4">{L_STATUS}</label>
					<div class="col-sm-8">
						<div class="input-group">
							<span class="input-group-addon">
								<input type="radio" name="status" id="radio_defined" value="radio_defined" {status.DEFINED} onclick="javascript: change_type(0);" {status.SELECTED_DEFINED}>
							</span>
							<span class="input-group-addon">
								{L_DEFINED_STATUS}
							</span>
							<select id="id_status" name="id_status" {status.SELECTED_SELECT} class="form-control" onchange="javascript:show_status();">
							# START status.list #
								<option value="{status.list.ID_STATUS}" {status.list.SELECTED}>{status.list.L_STATUS}</option>
							# END status.list #
							</select>
						</div>
						<div class="input-group">
							<span class="input-group-addon">
								<input type="radio" name="status" id="radio_undefined" value="radio_undefined" {status.UNDEFINED} onclick="javascript: change_type(-1);" {status.SELECTED_UNDEFINED}>
							</span>
							<span class="input-group-addon">
								{L_UNDEFINED_STATUS}
							</span>
						</div>
					</div>
					<div class="col-sm-12">
						{KERNEL_EDITOR}
						<textarea class="form-control mb15" rows="15" cols="66" id="contents" name="contents" {status.SELECTED_TEXTAREA}>{status.UNDEFINED_STATUS}</textarea>
					</div>
				</div>
			</fieldset>
			<p class="text-center">
				<input type="hidden" name="id_change_status" value="{status.ID_ARTICLE}">
				<input type="hidden" name="token" value="{TOKEN}">
				<button type="submit" value="true" class="btn btn-primary">{L_SUBMIT}</button>
				<button onclick="XMLHttpRequest_preview();jQuery('#xmlhttprequest_result').fadeOut();" type="button" class="btn btn-default">{L_PREVIEW}</button>
				<button type="reset" class="btn btn-default">{L_RESET}</button>
			</p>
		</form>
		# END status #


		# START move #

		<script>
		<!--
			var path = '{PICTURES_DATA_PATH}';
			var selected_cat = {move.SELECTED_CAT};
		-->
		</script>
		<script src="{PICTURES_DATA_PATH}/js/wiki.js"></script>

		# INCLUDE message_helper #

		<form action="action.php" method="post" onsubmit="return check_form_post();" class="form-horizontal">
			<fieldset>
				<legend>{move.L_TITLE}</legend>
				<div class="form-group">
					<label class="col-sm-4">{L_CURRENT_CAT}</label>
					<div class="col-sm-8">
						<input type="hidden" name="new_cat" id="id_cat" value="{move.ID_CAT}">
						<div id="selected_cat">{move.CURRENT_CAT}</div>
					</div>
				</div>
				<div class="form-group explorer">
					<label class="col-sm-4">{L_SELECT_CAT}</label>
					<div class="col-sm-8">
						<ul>
							<li>
								<a id="class-0" class="{move.CAT_0}" href="javascript:select_cat(0);"><i class="fa fa-folder"></i> {L_DO_NOT_SELECT_ANY_CAT}</a>
								{move.CATS}
							</li>
						</ul>
					</div>
				</div>
			</fieldset>

			<p class="text-center">
				<input type="hidden" name="id_to_move" value="{move.ID_ARTICLE}">
				<input type="hidden" name="token" value="{TOKEN}">
				<button type="submit" value="true" class="btn btn-primary">{L_SUBMIT}</button>
			</p>
		</form>
		# END move #


		# START rename #
		<script>
		<!--
			function check_form_post(){
				if(document.getElementById('new_title').value == "") {
					alert("{L_ALERT_TITLE}");
					return false;
				}
				return true;
			}
		-->
		</script>
		# INCLUDE message_helper #

		<form action="action.php" method="post" onsubmit="return check_form_post();" class="form-horizontal">
			<fieldset>
				<legend>{rename.L_TITLE}</legend>
				<p class="center">
					{rename.L_RENAMING_ARTICLE}
				</p>
				<br />
				<div class="form-group">
					<label class="control-label col-sm-4" for="new_title">{L_NEW_TITLE}</label>
					<div class="col-sm-8">
						<input type="text" name="new_title" id="new_title" class="form-control" value="{rename.FORMER_NAME}">
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-4" for="create_redirection_while_renaming">{rename.L_CREATE_REDIRECTION}</label>
					<div class="col-sm-8">
						<input type="checkbox" name="create_redirection_while_renaming" id="create_redirection_while_renaming" checked="checked">
					</div>
				</div>
			</fieldset>

			<p class="text-center">
				<input type="hidden" name="id_to_rename" value="{rename.ID_ARTICLE}">
				<input type="hidden" name="token" value="{TOKEN}">
				<button type="submit" value="true" class="btn btn-primary">{L_SUBMIT}</button>
			</p>
		</form>
		# END rename #


		# START redirect #
		{redirect.L_TITLE}
		<div class="table-responsive">
			<table class="table">
				<thead>
					<tr>
						<th>
							{L_REDIRECTION_NAME}
						</th>
						<th>
							{L_REDIRECTION_ACTIONS}
						</th>
					</tr>
				</thead>
				<tbody>
					# START redirect.list #
					<tr>
						<td>
							{redirect.list.REDIRECTION_NAME}
						</td>
						<td>
							<a href="{redirect.list.U_REDIRECTION_DELETE}" class="fa fa-delete" title="{REDIRECTION_DELETE}" data-confirmation="{L_ALERT_DELETE_REDIRECTION}"></a>
						</td>
					</tr>
					# END redirect.list #
					# IF NO_REDIRECTION #
					<tr>
						<td colspan="2">
							{L_NO_REDIRECTION}
						</td>
					</tr>
					# ENDIF #
				</tbody>
				<tfoot>
					<tr>
						<td colspan="2">
							<a href="{U_CREATE_REDIRECTION}" title="{L_CREATE_REDIRECTION}"><i class="fa fa-fast-forward"></i> {L_CREATE_REDIRECTION}</a>
						</td>
					</tr>
				</tfoot>
			</table>
		</div>

		# END redirect #


		# START create #
		<script>
		<!--
			function check_form_post(){
				if(document.getElementById('title').value == "") {
					alert("{L_ALERT_TITLE}");
					return false;
				}
				return true;
			}
		-->
		</script>
		# INCLUDE message_helper #

		<form action="action.php" method="post" onsubmit="return check_form_post();" class="form-horizontal">
			<fieldset class="mb15">
				<legend>{create.L_TITLE}</legend>
				<label class="control-label col-sm-4" for="redirection_title">{L_REDIRECTION_NAME}</label>
				<div class="col-sm-8">
					<input type="text" name="redirection_title" id="redirection_title" class="form-control" value="">
				</div>
			</fieldset>

			<p class="text-center">
				<input type="hidden" name="create_redirection" value="{create.ID_ARTICLE}">
				<input type="hidden" name="token" value="{TOKEN}">
				<button type="submit" value="true" class="btn btn-primary">{L_SUBMIT}</button>
			</fieldset>
		</form>
		# END create #

		# START remove #
		<script>
		<!--
			var path = '{PICTURES_DATA_PATH}';
			var selected_cat = {remove.SELECTED_CAT};
		-->
		</script>
		<script src="{PICTURES_DATA_PATH}/js/wiki.js"></script>

		# INCLUDE message_helper #

		<form action="action.php" method="post" onsubmit="return confirm('{L_ALERT_REMOVING_CAT}');" class="form-horizontal">
			<fieldset>
				<legend>{remove.L_TITLE}</legend>
				<div class="form-group">
					<label class="col-sm-12" for="action">{L_EXPLAIN_REMOVE_CAT}</label>
					<div class="col-sm-12">
						<div class="input-group">
							<span class="input-group-addon">
								<input id="action" name="action" value="remove_all" type="radio">
							</span>
							<span class="input-group-addon">
								{remove.L_REMOVE_ALL_CONTENTS}
							</span>
						</div>
						<div class="input-group">
							<span class="input-group-addon">
								<input name="action" value="move_all" type="radio" checked="checked">
							</span>
							<span class="input-group-addon">
								{remove.L_MOVE_ALL_CONTENTS}
							</span>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-4">{L_FUTURE_CAT}</label>
					<div class="col-sm-8">
						<input type="hidden" name="report_cat" value="{remove.ID_CAT}" id="id_cat">
						<div id="selected_cat">{remove.CURRENT_CAT}</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-4">{L_SELECT_CAT}</label>
					<div class="col-sm-8">
						<div class="futur-cat-pages">
							<a href="javascript:select_cat(0);">
								<i class="fa fa-folder"></i> <span id="class-0" class="{remove.CAT_0}">{L_DO_NOT_SELECT_ANY_CAT}</span>
							</a>
						</div>
						{remove.CATS}
					</div>
				</div>
			</fieldset>

			<p class="text-center">
				<input type="hidden" name="id_to_remove" value="{remove.ID_ARTICLE}">
				<input type="hidden" name="token" value="{TOKEN}">
				<button type="submit" value="true" class="btn btn-primary">{L_SUBMIT}</button>
			</p>
		</form>
		# END remove #

		# IF C_COMMENTS #
		{COMMENTS}
		# ENDIF #
