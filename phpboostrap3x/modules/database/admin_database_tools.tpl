		<nav id="admin-quick-menu">
				<a href="" class="js-menu-button" onclick="open_submenu('admin-quick-menu');return false;" title="{L_DATABASE_MANAGEMENT}">
					<i class="fa fa-bars"></i> {L_DATABASE_MANAGEMENT}
				</a>
				<ul>
					<li>
						<a href="admin_database.php" class="quick-link">{L_DB_TOOLS}</a>
					</li>
					<li>
						<a href="admin_database.php?query=1" class="quick-link">{L_QUERY}</a>
					</li>
					<li>
						<a href="${relative_url(DatabaseUrlBuilder::configuration())}" class="quick-link">${LangLoader::get_message('configuration', 'admin-common')}</a>
					</li>
				</ul>
		</nav>

		<div id="admin-contents">
			<div class="well well-sm">
				<a class="small" href="admin_database.php#tables">{L_DATABASE_MANAGEMENT}</a> / <a class="small" href="admin_database_tools.php?table={TABLE_NAME}&amp;action=structure">{TABLE_NAME}</a>
			</div>

			<ul class="nav nav-pills mb15">
				<li>
					<a href="admin_database_tools.php?table={TABLE_NAME}&amp;action=structure">
						<i class="fa fa-fw fa-code-fork"></i> {L_TABLE_STRUCTURE}
					</a>
				</li>
				<li>
					<a href="admin_database_tools.php?table={TABLE_NAME}&amp;action=data">
						<i class="fa fa-fw fa-laptop"></i> {L_TABLE_DISPLAY}
					</a>
				</li>
				<li>
					<a href="admin_database_tools.php?table={TABLE_NAME}&amp;action=query">
						<i class="fa fa-fw fa-wrench"></i> SQL
					</a>
				</li>
				<li>
					<a href="admin_database_tools.php?table={TABLE_NAME}&amp;action=insert">
						<i class="fa fa-fw fa-plus"></i> {L_INSERT}
					</a>
				</li>
				<li>
					<a href="admin_database.php?table={TABLE_NAME}&amp;action=backup_table">
						<i class="fa fa-fw fa-save"></i> {L_BACKUP}
					</a>
				</li>
				<li>
					<a style="color:red;" href="admin_database_tools.php?table={TABLE_NAME}&amp;action=truncate&amp;token={TOKEN}" data-confirmation="{L_CONFIRM_TRUNCATE_TABLE}">
						<i class="fa fa-fw fa-share-square-o"></i> {L_TRUNCATE}
					</a>
				</li>
				<li>
					<a style="color:red;" href="admin_database_tools.php?table={TABLE_NAME}&amp;action=drop&amp;token={TOKEN}" data-confirmation="delete-element">
						<i class="fa fa-fw fa-delete"></i> {L_DELETE}
					</a>
				</li>
			</ul>

			<div class="clearfix"></div>

			# IF C_DATABASE_TABLE_STRUCTURE #
			<div class="table-bordered">
				<table class="table table-bordered table-hover">
					<caption>{TABLE_NAME}</caption>
					<thead>
						<tr>
							<th>{L_TABLE_FIELD}</th>
							<th>{L_TABLE_TYPE}</th>
							<th>{L_TABLE_ATTRIBUTE}</th>
							<th>{L_TABLE_NULL}</th>
							<th>{L_TABLE_DEFAULT}</th>
							<th>{L_TABLE_EXTRA}</th>
						</tr>
					</thead>
					<tbody>
						# START field #
						<tr>
							<td>
								{field.FIELD_NAME}
							</td>
							<td>
								{field.FIELD_TYPE}
							</td>
							<td>
								{field.FIELD_ATTRIBUTE}
							</td>
							<td>
								{field.FIELD_NULL}
							</td>
							<td>
								{field.FIELD_DEFAULT}
							</td>
							<td>
								{field.FIELD_EXTRA}
							</td>
						</tr>
						# END field #
					</tbody>
				</table>
			</div>

			<div class="table-responsive">
				<table class="table table-bordered table-hover">
					<caption>{L_TABLE_INDEX}</caption>
					<thead>
						<tr>
							<th>{L_INDEX_NAME}</th>
							<th>{L_TABLE_TYPE}</th>
							<th>{L_TABLE_FIELD}</th>
						</tr>
					</thead>
					<tbody>
						# START index #
						<tr>
							<td>
								{index.INDEX_NAME}
							</td>
							<td>
								{index.INDEX_TYPE}
							</td>
							<td>
								{index.INDEX_FIELDS}
							</td>
						</tr>
						# END index #
					</tbody>
				</table>
			</div>

			<div class="table-responsive">
				<table class="table table-bordered table-hover">
					<caption>{L_SIZE}</caption>
					<thead>
						<tr>
							<th>
								{L_TABLE_DATA}
							</th>
							<th>
								{L_TABLE_INDEX}
							</th>
							<th>
								{L_TABLE_FREE}
							</th>
							<th>
								{L_TABLE_TOTAL}
							</th>
						# IF TABLE_FREE #
							<th>
							</th>
						# ENDIF #
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>
								{TABLE_DATA}
							</td>
							<td>
								{TABLE_INDEX}
							</td>
							<td>
								{TABLE_FREE}
							</td>
							<td>
								{TABLE_TOTAL_SIZE}
							</td>
						# IF TABLE_FREE #
							<td>
								<a class="btn btn-info" href="admin_database_tools.php?table={TABLE_NAME}&amp;action=optimize">
									<i class="fa fa-bar-chart"></i> {L_OPTIMIZE}
								</a>
						    </td>
						</tr>
						# ENDIF #
					</tbody>
				</table>
			</div>

			<div class="table-responsive">
				<table class="table table-bordered table-hover">
					<caption>{L_STATISTICS}</caption>
					<thead>
						<tr>
							<th>
								{L_TABLE_ROWS_FORMAT}
							</th>
							<th>
								{L_TABLE_ROWS}
							</th>
							<th>
								{L_TABLE_ENGINE}
							</th>
							<th>
								{L_TABLE_COLLATION}
							</th>
							<th>
								{L_SIZE}
							</th>
						# IF C_AUTOINDEX #
							<th>
								{L_AUTOINCREMENT}
							</th>
						# ENDIF #
							<th>
								{L_CREATION_DATE}
							</th>
							<th>
								{L_LAST_UPDATE}
							</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>
								{TABLE_ROW_FORMAT}
							</td>
							<td>
								{TABLE_ROWS}
							</td>
							<td>
								{TABLE_ENGINE}
							</td>
							<td>
								{TABLE_COLLATION}
							</td>
							<td>
								{TABLE_TOTAL_SIZE}
							</td>
						# IF C_AUTOINDEX #
							<td>
								{TABLE_AUTOINCREMENT}
							</td>
						# ENDIF #
							<td>
								{TABLE_CREATION_DATE}
							</td>
							<td>
								{TABLE_LAST_UPDATE}
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			# ENDIF #

			# IF C_DATABASE_TABLE_DATA #
			{L_EXECUTED_QUERY}
			<p>
				<code>{QUERY_HIGHLIGHT}</code>
			</p>
			# IF C_PAGINATION # # INCLUDE PAGINATION # # ENDIF #
			<div class="table-responsive">
				<table class="table table-bordered table-hover">
					<thead>
						<tr>
							<th>&nbsp;</th>
							# START head #
							<th>{head.FIELD_NAME}</th>
							# END head #
						</tr>
					</thead>
					<tbody>
						# START line #
						<tr>
							# START line.field #
							<td>
								{line.field.FIELD_NAME}
							</td>
							# END line.field #
						</tr>
						# END line #
					</tbody>
				</table>
			</div>
			<div class="clearfix"></div>
			# IF C_PAGINATION # # INCLUDE PAGINATION # # ENDIF #
			# ENDIF #


			# IF C_DATABASE_TABLE_QUERY #
			<script>
			<!--
			function check_form(){
				var query = document.getElementById('query').value;
				var query_lowercase = query.toLowerCase();
				var check_query = false;
				var keyword = new Array('delete', 'drop', 'truncate');

				if( query == "" ) {
					alert("{L_REQUIRE}");
					return false;
				}

				//V�rification de la requ�te => alerte si elle contient un des mots cl�s DELETE, DROP ou TRUNCATE.
				for(i = 0; i < keyword.length; i++)
				{
					if( typeof(strpos(query_lowercase, keyword[i])) != 'boolean' )
					{
						check_query = true;
						break;
					}
				}
				if( check_query )
				{
					return confirm("{L_CONFIRM_QUERY}\n" + query);
				}
				return true;
			}
			-->
			</script>

			<form class="form-horizontal" action="admin_database_tools.php?table={TABLE_NAME}&action=query&amp;token={TOKEN}#executed_query" method="post" onsubmit="return check_form();">
				<fieldset>
					<legend>{L_QUERY}</legend>
					<div class="fieldset-inset">
						<span id="errorh"></span>
						<div class="alert alert-warning">{L_EXPLAIN_QUERY}</div>
						<fieldset>
							<label for="query">* {L_EXECUTED_QUERY}</label>
							<textarea class="form-control" rows="12" id="query" name="query">{QUERY}</textarea>
						</fieldset>
						<p class="text-center">
							<button type="submit" name="submit" value="true" class="btn btn-primary">{L_EXECUTE}</button>
							<input type="hidden" name="token" value="{TOKEN}">
						</p>
					</div>
				</fieldset>
			</form>

				# IF C_QUERY_RESULT #
				<fieldset id="executed_query">
					<legend>{L_RESULT}</legend>
					{L_EXECUTED_QUERY}
					<p>
						<code>{QUERY_HIGHLIGHT}</code>
					</p>
				</fieldset>
				<div class="table-responsive">
					<table class="table table-bordered table-hover">
						<thead>
							<tr>
								# START head #
								<th>{head.FIELD_NAME}</th>
								# END head #
							</tr>
						</thead>
						<tbody>
							# START line #
							<tr>
								# START line.field #
								<td style="{line.field.STYLE}">
									{line.field.FIELD_NAME}
								</td>
								# END line.field #
							</tr>
							# END line #
						</tbody>
					</table>
				</div>
				# ENDIF #
			# ENDIF #

			# IF C_DATABASE_UPDATE_FORM #
			<form class="form-horizontal" action="admin_database_tools.php?table={TABLE_NAME}&amp;field={FIELD_NAME}&amp;value={FIELD_VALUE}&amp;action={ACTION}&amp;token={TOKEN}#executed_query" method="post" onsubmit="return check_form();">
				<div class="table-responsive">
					<table class="table table-bordered table-hover">
						<thead>
							<tr>
								<th>
									{L_FIELD_FIELD}
								</th>
								<th>
									{L_FIELD_TYPE}
								</th>
								<th>
									{L_FIELD_NULL}
								</th>
								<th>
									{L_FIELD_VALUE}
								</th>
							</tr>
						</thead>
						<tbody>
							# START fields #
							<tr>
								<td>
									{fields.FIELD_NAME}
								</td>
								<td>
									{fields.FIELD_TYPE}
								</td>
								<td>
									{fields.FIELD_NULL}
								</td>
								<td>
									# IF fields.C_FIELD_FORM_EXTEND #
									<textarea class="form-control" rows="6" cols="37" name="{fields.FIELD_NAME}">{fields.FIELD_VALUE}</textarea>
									# ELSE #
									<input class="form-control" type="text" name="{fields.FIELD_NAME}" value="{fields.FIELD_VALUE}">
									# ENDIF #
								</td>
							</tr>
							# END fields #
						</tbody>
					</table>
				</div>

				<p class="text-center">
					<button type="submit" name="submit" value="true" class="btn btn-primary">{L_EXECUTE}</button>
					<input type="hidden" name="token" value="{TOKEN}">
				</p>
			</form>
			# ENDIF #
		</div>
