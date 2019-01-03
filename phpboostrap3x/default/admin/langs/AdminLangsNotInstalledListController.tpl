# INCLUDE UPLOAD_FORM #
<form action="{REWRITED_SCRIPT}" method="post" class="fieldset-content">
	<input type="hidden" name="token" value="{TOKEN}">
	# INCLUDE MSG #
	<fieldset>
		<legend>{@langs}</legend>
		<div class="fieldset-inset">
		# IF C_LANG_INSTALL #
		<div class="table-responsive">
			<table class="table table-bordered table-hover">
				<caption>{@langs}</caption>
				<thead>
					<tr>
						<th>{@langs.name}</th>
						<th>{@langs.description}</th>
						<th>{@langs.authorizations}</th>
						<th>${LangLoader::get_message('enable', 'common')}</th>
						<th>{@langs.install_lang}</th>
					</tr>
				</thead>
				<tbody>
					# START langs_not_installed #
					<tr>
						<td>
							<span id="lang-{langs_not_installed.ID}"></span>
							<strong>{langs_not_installed.NAME}</strong> <em>({langs_not_installed.VERSION})</em>
						</td>
						<td class="text-left">
							<div id="desc_explain{langs_not_installed.ID}">
								<strong>{@langs.author} :</strong>
								<div class="clearfix"></div>
								<div class="btn-group btn-group-xs">
									<a href="mailto:{langs_not_installed.AUTHOR_EMAIL}" class="btn btn-pbt" title="Email">
										<i class="fa fa-fw fa-at"></i> {langs_not_installed.AUTHOR_NAME}
									</a>
									# IF langs_not_installed.C_WEBSITE #
									<a href="{langs_not_installed.AUTHOR_WEBSITE}" class="btn btn-info" title="Web">
										<i class="fa fa-fw fa-globe"></i>
									</a>
									# ENDIF #
								</div>
								<div class="clearfix"></div>
								<strong>{@langs.compatibility} :</strong> PHPBoost {langs_not_installed.COMPATIBILITY}
							</div>
						</td>
						<td class="text-left">
							<div id="authorizations_explain-{langs_not_installed.ID}">{langs_not_installed.AUTHORIZATIONS}</div>
						</td>
						<td>
							<label for="activated-{langs_not_installed.ID}">
								<input id="activated-{langs_not_installed.ID}" type="radio" name="activated-{langs_not_installed.ID}" value="1" checked="checked" />
								${LangLoader::get_message('yes', 'common')}
							</label>
							<div class="clearfix"></div>
							<label for="activated-{langs_not_installed.ID}2">
								<input id="activated-{langs_not_installed.ID}2" type="radio" name="activated-{langs_not_installed.ID}" value="0" />
								${LangLoader::get_message('no', 'common')}
							</label>
						</td>
						<td>
							<button type="submit" class="btn btn-success" name="add-{langs_not_installed.ID}" value="true">{@langs.install_lang}</button>
						</td>
					</tr>
				# END themes_not_installed #
				</tbody>
			</table>
		</div>

		# ELSE #
			<div class="alert alert-notice">${LangLoader::get_message('no_item_now', 'common')}</div>
		# ENDIF #
		</div>
	</fieldset>
</form>
