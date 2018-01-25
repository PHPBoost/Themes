	# IF C_CONTRIBUTION_LIST #
	<section id="module-user-contribution-list" class="row">
		<header>
			<h1>{L_CONTRIBUTION_PANEL}</h1>
		</header>
		<div class="col-sm-12">
			<h2>{L_CONTRIBUTION_LIST}</h2>
			<br />
			# IF C_NO_CONTRIBUTION #
			<div class="success">{L_NO_CONTRIBUTION_TO_DISPLAY}</div>
			# ELSE #
			<div class="table-responsive">
				<table class="table">
					<thead>
						<tr>
							<th>
								# IF NOT C_ORDER_ENTITLED_ASC #
									<a href="{U_ORDER_ENTITLED_ASC}" class="fa fa-table-sort-up"></a>
								# ENDIF #
								{L_ENTITLED}
								# IF NOT C_ORDER_ENTITLED_DESC #
									<a href="{U_ORDER_ENTITLED_DESC}" class="fa fa-table-sort-down"></a>
								# ENDIF #
							</th>
							<th>
								# IF NOT C_ORDER_MODULE_ASC #
									<a href="{U_ORDER_MODULE_ASC}" class="fa fa-table-sort-up"></a>
								# ENDIF #
								{L_MODULE}
								# IF NOT C_ORDER_MODULE_DESC #
									<a href="{U_ORDER_MODULE_DESC}" class="fa fa-table-sort-down"></a>
								# ENDIF #
							</th>
							<th>
								# IF NOT C_ORDER_STATUS_ASC #
									<a href="{U_ORDER_STATUS_ASC}" class="fa fa-table-sort-up"></a>
								# ENDIF #
								{L_STATUS}
								# IF NOT C_ORDER_STATUS_DESC #
									<a href="{U_ORDER_STATUS_DESC}" class="fa fa-table-sort-down"></a>
								# ENDIF #
							</th>
							<th>
								# IF NOT C_ORDER_CREATION_DATE_ASC #
									<a href="{U_ORDER_CREATION_DATE_ASC}" class="fa fa-table-sort-up"></a>
								# ENDIF #
								{L_CREATION_DATE}
								# IF NOT C_ORDER_CREATION_DATE_DESC #
									<a href="{U_ORDER_CREATION_DATE_DESC}" class="fa fa-table-sort-down"></a>
								# ENDIF #
							</th>
							<th>
								# IF NOT C_ORDER_FIXING_DATE_ASC #
									<a href="{U_ORDER_FIXING_DATE_ASC}" class="fa fa-table-sort-up"></a>
								# ENDIF #
								{L_FIXING_DATE}
								# IF NOT C_ORDER_FIXING_DATE_DESC #
									<a href="{U_ORDER_FIXING_DATE_DESC}" class="fa fa-table-sort-down"></a>
								# ENDIF #
							</th>
							<th>
								# IF NOT C_ORDER_POSTER_ASC #
									<a href="{U_ORDER_POSTER_ASC}" class="fa fa-table-sort-up"></a>
								# ENDIF #
								{L_POSTER}
								# IF NOT C_ORDER_POSTER_DESC #
									<a href="{U_ORDER_POSTER_DESC}" class="fa fa-table-sort-down"></a>
								# ENDIF #
							</th>
							<th>
								# IF NOT C_ORDER_FIXER_ASC #
									<a href="{U_ORDER_FIXER_ASC}" class="fa fa-table-sort-up"></a>
								# ENDIF #
								{L_FIXER}
								# IF NOT C_ORDER_FIXER_DESC #
									<a href="{U_ORDER_FIXER_DESC}" class="fa fa-table-sort-down"></a>
								# ENDIF #
							</th>
						</tr>
					</thead>
					# IF C_PAGINATION #
					<tfoot>
						<tr>
							<td colspan="7">
								# INCLUDE PAGINATION #
							</td>
						</tr>
					</tfoot>
					# ENDIF #
					<tbody>
						# START contributions #
						<tr>
							<td>
								<a href="{contributions.U_CONSULT}">{contributions.ENTITLED}</a>
							</td>
							<td >
								{contributions.MODULE}
							</td>
							# IF contributions.C_FIXED #
								<td class="bg-success">
									{contributions.STATUS}
								</td>
							# ELSE #
								# IF contributions.C_PROCESSING #
								<td class="bg-warning">
									{contributions.STATUS}
								</td>
								# ELSE #
								<td class="bg-danger">
									{contributions.STATUS}
								</td>
								# ENDIF #
							# ENDIF #
							<td >
								{contributions.CREATION_DATE}
							</td>
							<td >
								# IF contributions.C_FIXED #
								{contributions.FIXING_DATE}
								# ELSE #
								-
								# ENDIF #
							</td>
							<td >
								<a href="{contributions.U_POSTER_PROFILE}" class="{contributions.POSTER_LEVEL_CLASS}" # IF contributions.C_POSTER_GROUP_COLOR # style="color:{contributions.POSTER_GROUP_COLOR}" # ENDIF #>{contributions.POSTER}</a>
							</td>
							<td >
								# IF contributions.C_FIXED #
								<a href="{contributions.U_FIXER_PROFILE}" class="{contributions.FIXER_LEVEL_CLASS}" # IF contributions.C_FIXER_GROUP_COLOR # style="color:{contributions.FIXER_GROUP_COLOR}" # ENDIF #>{contributions.FIXER}</a>
								# ELSE #
								-
								# ENDIF #
							</td>
						</tr>
						# END contributions #
					</tbody>
				</table>
			</div>
			# ENDIF #

			<hr>

			<h2>{L_CONTRIBUTE}</h2>
			# IF NOT C_NO_MODULE_IN_WHICH_CONTRIBUTE #
			<p>{L_CONTRIBUTE_EXPLAIN}</p>

				# START row #
					# START row.module #
						<div class="col-sm-3 text-center">
							<a href="{row.module.U_MODULE_LINK}" title="{row.module.LINK_TITLE}">
								<img src="{PATH_TO_ROOT}/{row.module.MODULE_ID}/{row.module.MODULE_ID}.png" alt="{row.module.LINK_TITLE}" />
								<p>
									{row.module.MODULE_NAME}
								</p>
							</a>
						</div>
					# END row.module #
					<div class="clearfix"></div>
				# END row #
			# ELSE #
				<div class="alert alert-warning">{L_NO_MODULE_IN_WHICH_CONTRIBUTE}</div>
			# ENDIF #
		</div>
		<footer></footer>
	</section>
	# ENDIF #

	# IF C_CONSULT_CONTRIBUTION #
	<section id="module-user-consult-contribution" classs="row">
		<header>
			# IF C_WRITE_AUTH #
			<div class="pull-right text-right">
				<div class="btn-group btn-group-xs">
					<a href="{U_UPDATE}" title="{L_UPDATE}" class="btn btn-info">
						<i class="fa fa-edit"></i>
					</a>
				<a href="{U_DELETE}" title="{L_DELETE}" class="btn btn-danger" data-confirmation="delete-element">
					<i class="fa fa-delete"></i>
				</a>
				</div>

			</div>
			# ENDIF #
			<h1>
			{ENTITLED}
			</h1>
		</header>
		<div class="col-sm-12">
			# IF C_WRITE_AUTH #
				# IF C_UNPROCESSED_CONTRIBUTION #
				<div class="text-center">
					<div class="btn btn-group btn-group-sm">
						<a class="btn btn-default" href="{FIXING_URL}" title="{L_PROCESS_CONTRIBUTION}">
							<i class="fa fa-wrench fa-fw"></i> {L_PROCESS_CONTRIBUTION}
						</a>
						<a class="btn btn-default" href="{U_UPDATE}" title="{L_UPDATE} {L_STATUS}">
							<i class="fa fa-check fa-fw"></i> {L_UPDATE} {L_STATUS}
						</a>
					</div>
				</div>
				# ENDIF #
			# ENDIF #

			<fieldset class="row">
				<legend>{L_CONTRIBUTION}</legend>
				<div class="col-sm-12">
					<label class="col-sm-4 control-label">{L_ENTITLED}</label>
					<div class="col-sm-8">
						{ENTITLED}
					</div>
				</div>
				<div class="col-sm-12">
					<label class="col-sm-4 control-label">{L_DESCRIPTION}</label>
					<div class="col-sm-8">{DESCRIPTION}</div>
				</div>
				<div class="col-sm-12">
					<label class="col-sm-4 control-label">{L_STATUS}</label>
					<div class="col-sm-8">{STATUS}</div>
				</div>
				<div class="col-sm-12">
					<label class="col-sm-4 control-label">{L_CONTRIBUTOR}</label>
					<div class="col-sm-8"><a href="{U_CONTRIBUTOR_PROFILE}" class="{CONTRIBUTOR_LEVEL_CLASS}" # IF C_CONTRIBUTOR_GROUP_COLOR # style="color:{CONTRIBUTOR_GROUP_COLOR}" # ENDIF #>{CONTRIBUTOR}</a></div>
				</div>
				<div class="col-sm-12">
					<label class="col-sm-4 control-label">{L_CREATION_DATE}</label>
					<div class="col-sm-8">{CREATION_DATE}</div>
				</div>
				# IF C_CONTRIBUTION_FIXED #
				<div class="col-sm-12">
					<label class="col-sm-4 control-label">{L_FIXER}</label>
					<div class="col-sm-8"><a href="{U_FIXER_PROFILE}" class="{FIXER_LEVEL_CLASS}" # IF C_FIXER_GROUP_COLOR # style="color:{FIXER_GROUP_COLOR}" # ENDIF #>{FIXER}</a></div>
				</div>
				<div class="col-sm-12">
					<label class="col-sm-4 control-label">{L_FIXING_DATE}</label>
					<div class="col-sm-8">{FIXING_DATE}</div>
				</div>
				# ENDIF #
				<div class="col-sm-12">
					<label class="col-sm-4 control-label">{L_MODULE}</label>
					<div class="col-sm-8">{MODULE}</div>
				</div>
			</fieldset>

		</div>
		<footer class="mtb5">{COMMENTS}</footer>
	</section>

	# ENDIF #

	# IF C_EDIT_CONTRIBUTION #
	<section id="module-user-edit-contribution" class="row">
		<header>
			<h1>{ENTITLED}</h1>
		</header>
		<div class="col-sm-12">
			<form action="contribution_panel.php" method="post" class="form-horizontal">
				<fieldset>
					<legend>{L_CONTRIBUTION}</legend>
					<div class="form-group">
						<label class="col-sm-4 control-label" for="entitled">{L_ENTITLED}</label>
						<div class="col-sm-8">
							<input class="form-control" type="text" name="entitled" id="entitled" value="{ENTITLED}">
						</div>
					</div>
					<div class="form-group">
						<label for="contents">{L_DESCRIPTION}</label>
						{EDITOR}
						<textarea class="form-control" rows="15" id="contents" name="contents">{DESCRIPTION}</textarea>
					</div>
					<div class="form-group">
						<label class="col-sm-4 control-label" for="status">{L_STATUS}</label>
						<div class="col-sm-8">
							<select class="form-control" name="status" id="status">
								<option value="0"{EVENT_STATUS_UNREAD_SELECTED}>{L_CONTRIBUTION_STATUS_UNREAD}</option>
								<option value="1"{EVENT_STATUS_BEING_PROCESSED_SELECTED}>{L_CONTRIBUTION_STATUS_BEING_PROCESSED}</option>
								<option value="2"{EVENT_STATUS_PROCESSED_SELECTED}>{L_CONTRIBUTION_STATUS_PROCESSED}</option>
							</select>
						</div>
					</div>
				</fieldset>
				<p class="text-center">
					<input type="hidden" name="idedit" value="{CONTRIBUTION_ID}">
					<input type="hidden" name="token" value="{TOKEN}">
					<button type="submit" value="true" class="btn btn-primary">{L_SUBMIT}</button>
					<button class="btn btn-default" type="button" name="preview" onclick="XMLHttpRequest_preview();">{L_PREVIEW}</button>
					<button class="btn btn-default" type="reset">{L_RESET}</button>
				</p>
			</form>
		</div>
		<footer></footer>
	</section>
	# ENDIF #
