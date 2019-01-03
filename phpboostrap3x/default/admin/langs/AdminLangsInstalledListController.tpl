<form action="{REWRITED_SCRIPT}" method="post">
	<div class="table-responsive">
		<table class="table table-bordered table-hover">
			<caption>{@langs.installed_langs}</caption>
			<thead>
				<tr>
					<th>{@langs.name}</th>
					<th>{@langs.description}</th>
					<th>{@langs.authorizations}</th>
					<th>${LangLoader::get_message('enabled', 'common')}</th>
					<th>${LangLoader::get_message('delete', 'common')}</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td colspan="5">
						# INCLUDE MSG #
						<span class="text-strong">{@langs.default_lang_explain}</span>
					</td>
				</tr>
				# START langs_installed #
					<tr>
						<td>
							<span id="lang-{langs_installed.ID}"></span>
							<strong>{langs_installed.NAME}</strong> <em>({langs_installed.VERSION})</em>
						</td>
						<td class="text-left">
							<div id="desc_explain{langs_installed.ID}">
								<strong>{@langs.author} :</strong>
								<div class="clearfix"></div>
								<div class="btn-group btn-group-xs">
									<a href="mailto:{langs_installed.AUTHOR_EMAIL}" class="btn btn-pbt" title="Email">
										<i class="fa fa-fw fa-at"></i> {langs_installed.AUTHOR_NAME}
									</a>
									# IF langs_installed.C_WEBSITE #
									<a href="{langs_installed.AUTHOR_WEBSITE}" class="btn btn-info" title="Web">
										<i class="fa fa-fw fa-globe"></i>
									</a>
									# ENDIF #
								</div>
								<div class="clearfix"></div>
								<strong>{@langs.compatibility} :</strong> PHPBoost {langs_installed.COMPATIBILITY}
							</div>
						</td>
						<td>
							# IF NOT langs_installed.C_IS_DEFAULT_LANG #
								<div class="text-left" id="authorizations_explain-{langs_installed.ID}">{langs_installed.AUTHORIZATIONS}</div>
							# ELSE #
								${LangLoader::get_message('visitor', 'user-common')}
							# ENDIF #
						</td>
						# IF NOT langs_installed.C_IS_DEFAULT_LANG #
						<td>
							<label for="activated-{langs_installed.ID}">
								<input id="activated-{langs_installed.ID}" type="radio" name="activated-{langs_installed.ID}" value="1" # IF langs_installed.C_IS_ACTIVATED # checked="checked" # ENDIF # />
								${LangLoader::get_message('yes', 'common')}
							</label>
							<div class="clearfix"></div>
							<label for="activated-{langs_installed.ID}2">
								<input id="activated-{langs_installed.ID}2" type="radio" name="activated-{langs_installed.ID}" value="0" # IF NOT langs_installed.C_IS_ACTIVATED # checked="checked" # ENDIF # />
								${LangLoader::get_message('no', 'common')}
							</label>
						</td>
						<td>
							<button type="submit" class="btn btn-danger" name="delete-{langs_installed.ID}" value="true">${LangLoader::get_message('delete', 'common')}</button>
						</td>
						# ELSE #
						<td>
							${LangLoader::get_message('yes', 'common')}
						</td>
						<td>
						</td>
						# ENDIF #
					</tr>
				# END langs_installed #
			</tbody>
		</table>
	</div>


	<p class="text-center">
		<button type="submit" class="btn btn-primary" name="update_langs_configuration" value="true">{L_UPDATE}</button>
		<input type="hidden" name="token" value="{TOKEN}">
		<input type="hidden" name="update" value="true">
		<button type="reset" value="true" class="btn btn-default">{L_RESET}</button>
	</p>
</form>
