# INCLUDE UPLOAD_FORM #
<form action="{REWRITED_SCRIPT}" method="post" class="form-horizontal">
	<input type="hidden" name="token" value="{TOKEN}">
	<div class="col-sm-12"># INCLUDE MSG #</div>
	<div class="clearfix"></div>
	<fieldset>
		<legend>{@modules.modules_available}</legend>
		<div class="fieldset-inset">
		# IF C_MODULES_AVAILABLE #
			<div class="table-responsive">
				<table class="table table-bordered table-hover">
					<caption>{@modules.modules_available}</caption>
					<thead>
						<tr>
							<th>{@modules.name}</th>
							<th>{@modules.description}</th>
							<th>${LangLoader::get_message('enable', 'common')}</th>
							<th>{@modules.install_module}</th>
						</tr>
					</thead>
					<tbody>
						# START available #
						<tr>
							<td>
								<img src="{PATH_TO_ROOT}/{available.ICON}/{available.ICON}.png" alt="{available.NAME}" />
								<strong>{available.NAME}</strong>
								<em>({available.VERSION})</em>
							</td>
							<td class="text-left">
								<strong>{@modules.author} :</strong>
								<div class="clearfix"></div>
								<div class="btn-group btn-group-xs">
									<span class="btn btn-pbt">
										<i class="fa fa-fw fa-at"></i> {available.AUTHOR}
									</span>
									<span class="btn btn-info">
										<i class="fa fa-fw fa-globe"></i> {available.AUTHOR_WEBSITE}
									</span>
								</div>
								<div class="clearfix"></div>
								<strong>{@modules.description} :</strong> {available.DESCRIPTION}
								<div class="clearfix"></div>
								<strong>{@modules.compatibility} :</strong> PHPBoost {available.COMPATIBILITY}
							</td>
							<td class="input-radio">
								<label for="activated-{available.ID}">
									<input id="activated-{available.ID}" type="radio" name="activated-{available.ID}" value="1" checked="checked" />
									${LangLoader::get_message('yes', 'common')}
								</label>

								<label for="activated-{available.ID}2">
									<input id="activated-{available.ID}2" type="radio" name="activated-{available.ID}" value="0" />
									${LangLoader::get_message('no', 'common')}
								</label>
							</td>
							<td>
								<button type="submit" class="btn btn-success" name="add-{available.ID}" value="true">{@modules.install_module}</button>
							</td>
						</tr>
						# END available #
					</tbody>
				</table>
			</div>
		# ELSE #
			<div class="alert alert-notice">${LangLoader::get_message('no_item_now', 'common')}</div>
		# ENDIF #
		</div>
	</fieldset>
</form>
