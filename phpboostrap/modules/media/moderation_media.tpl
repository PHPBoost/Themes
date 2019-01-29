		# IF C_DISPLAY #
		<form action="moderation_media.php" method="post" class="form-group">
			<fieldset>
				<legend>{L_FILTER}</legend>
				<div id="form" class="row">
					<div class="col-sm-12">
						<div class="input-group">
							<span class="input-group-addon">{L_DISPLAY_FILE}</span>
							<select name="state" id="state" class="form-control" onchange="change_order()">
									<option value="all"{SELECTED_ALL}>{L_ALL}</option>
									<option value="visible"{SELECTED_VISIBLE}>{L_FVISIBLE}</option>
									<option value="unvisible"{SELECTED_UNVISIBLE}>{L_FUNVISIBLE}</option>
									<option value="unaprobed"{SELECTED_UNAPROBED}>{L_FUNAPROBED}</option>
							</select>
						</div>
						<div class="input-group">
							<span class="input-group-addon">{L_INCLUDE_SUB_CATS}</span>
							<span class="input-group-addon">
								<input type="checkbox" name="sub_cats" value="1"{SUB_CATS}>
							</span>
						</div>
					</div>
					<div class="text-center">
						<input type="hidden" name="token" value="{TOKEN}">
						<button type="submit" name="filter" value="true" class="btn btn-primary">{L_SUBMIT}</button>
						<button type="reset" value="true" class="btn btn-default">{L_RESET}</button>
					</div>
				</div>
			</fieldset>
		</form>

		<script>
			<!--
			function check_all (type)
			{
				var item = new Array({JS_ARRAY});

				if (type == "delete")
				{
					if (confirm ('{L_CONFIRM_DELETE_ALL}'))
					{
						for (var i=0; i < item.length; i++)
							document.getElementById(type + item[i]).checked = 'checked';
					}
				}
				else
				{
					for (var i=0; i < item.length; i++)
						document.getElementById(type + item[i]).checked = 'checked';
				}
			}

			function pointer (id)
			{
				document.getElementById(id).style.cursor = 'pointer';
			}
			-->
		</script>
		<form action="moderation_media.php" method="post" class="form-group">
			<fieldset>
				<legend>{L_MODO_PANEL}</legend>
				<div class="table-responsive">
					<table class="table">
						<thead>
							<tr>
								<th>
									{L_NAME}
								</th>
								<th>
									${LangLoader::get_message('category', 'categories-common')}
								</th>
								<th style="width: 50px" onclick="check_all('visible');" onmouseover="pointer('visible');" id="visible">
									{L_VISIBLE}
								</th>
								<th style="width: 50px" onclick="check_all('unvisible');" onmouseover="pointer('unvisible');" id="unvisible">
									{L_UNVISIBLE}
								</th>
								<th style="width: 50px">
									{L_UNAPROBED}
								</th>
								<th style="width: 50px" onclick="check_all('delete');" onmouseover="pointer('delete');" id="delete">
									${LangLoader::get_message('delete', 'common')}
								</th>
							</tr>
						</thead>
						<tbody>
							# IF C_NO_MODERATION #
							<tr>
								<td colspan="6">{L_NO_MODERATION}</td>
							</tr>
							# ELSE #
							# START files #
							<tr>
								<td class="{files.COLOR}">
									<a href="{files.U_FILE}">{files.NAME}</a>
									<a href="{files.U_EDIT}" title="${LangLoader::get_message('edit', 'common')}" class="fa fa-edit"></a>
								</td>
								<td class="{files.COLOR}">
									<a href="{files.U_CAT}">{files.CAT}</a>
								</td>
								<td class="{files.COLOR}">
									<input type="radio" id="visible{files.ID}" name="action[{files.ID}]" value="visible"{files.SHOW}>
								</td>
								<td class="{files.COLOR}">
									<input type="radio" id="unvisible{files.ID}" name="action[{files.ID}]" value="unvisible"{files.HIDE}>
								</td>
								<td class="{files.COLOR}">
									<input type="radio" name="action[{files.ID}]" value="unaprobed"{files.UNAPROBED} # IF NOT files.UNAPROBED #disabled="disabled" # ENDIF #/>
								</td>
								<td class="{files.COLOR}">
									<input type="radio" id="delete{files.ID}" name="action[{files.ID}]" value="delete" data-confirmation="delete-element">
								</td>
							</tr>
							# END files #
							# ENDIF #
						</tbody>
						# IF C_PAGINATION #
						<tfoot>
							<tr>
								<td colspan="6">
									# INCLUDE PAGINATION #
								</td>
							</tr>
						</tfoot>
						# ENDIF #
					</table>
				</div>
				<div class="table-responsive">
					<table class="table">
						<thead>
							<tr>
								<th colspan="3">{L_LEGEND}</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="bkgd-color-unaprobed">
									{L_FILE_UNAPROBED}
								</td>
								<td class="bkgd-color-unvisible">
									{L_FILE_UNVISIBLE}
								</td>
								<td class="bkgd-color-visible">
									{L_FILE_VISIBLE}
								</td>
							</tr>
						</tbody>
					</table>
				</div>

			</fieldset>
			<div class="text-center">
				<input type="hidden" name="token" value="{TOKEN}">
				<button type="submit" name="submit" value="true" class="btn btn-primary">{L_SUBMIT}</button>
				<button type="reset" value="true" class="btn btn-default">{L_RESET}</button>
			</div>
		</form>
		# ENDIF #
