# INCLUDE UPLOAD_FORM #
<form action="{REWRITED_SCRIPT}" method="post" class="fieldset-content">
	<input type="hidden" name="token" value="{TOKEN}">
	# INCLUDE MSG #
	<section id="not-installed-langs-container">
		<header><h1>{@langs.available_langs}</h1></header>
		# IF C_LANG_AVAILABLE #
		<div class="row grid-columns">
			# START langs_not_installed #
			<div class="col-md-6 col-lg-4">
				<div class="panel panel-default">
					<div class="panel-heading">
						<div class="row">
							<h4 class="col-xs-8">
								# IF langs_not_installed.C_HAS_PICTURE #
									<img src="{langs_not_installed.PICTURE_URL}" alt="{langs_not_installed.NAME}" title="{langs_not_installed.NAME}" class="valign-middle" />
								# ENDIF #
								{langs_not_installed.NAME}
							</h4>
							<div class="col-xs-4">
								<div class="input-group">
									# IF C_MORE_THAN_ONE_LANG_AVAILABLE #
										# IF langs_not_installed.C_COMPATIBLE #
											<span class="input-group-addon">
												<input type="checkbox" class="multiple-checkbox add-checkbox" id="multiple-checkbox-{langs_not_installed.LANG_NUMBER}" name="add-checkbox-{langs_not_installed.LANG_NUMBER}"/>
											</span>
										# ENDIF #
									# ENDIF #
									<div class="input-group-btn">
										# IF langs_not_installed.C_COMPATIBLE #
											<button type="submit" class="btn btn-success" name="add-{langs_not_installed.ID}" value="true">${LangLoader::get_message('install', 'admin-common')}</button>
										# ELSE #
											<button type="button" class="btn btn-danger">${LangLoader::get_message('not_compatible', 'admin-common')}</button>
										# ENDIF #
									</div>
								</div>
							</div>
						</div>
					</div>
					<table class="table">
						<tbody>
							<tr>
								<td>{langs_not_installed.VERSION}</td>
								<td>{langs_not_installed.AUTHOR}</td>
								# IF langs_not_installed.C_AUTHOR_EMAIL #<td><a href="mailto:{langs_not_installed.AUTHOR_EMAIL}">@</a></td># ENDIF #
								# IF langs_not_installed.C_AUTHOR_WEBSITE #<td><a href="{langs_not_installed.AUTHOR_WEBSITE}">Web</a></td># ENDIF #
							</tr>
						</tbody>
					</table>
					<ul class="list-group">
						<li class="list-group-item# IF NOT langs_not_installed.C_COMPATIBLE # alert alert-danger# ENDIF #">${LangLoader::get_message('compatibility', 'admin-common')} : PHPBoost {langs_not_installed.COMPATIBILITY}</li>
						# IF langs_not_installed.C_COMPATIBLE #
							<li class="list-group-item">{langs_not_installed.AUTHORIZATIONS}</li>
						# ENDIF #
					</ul>
				</div>
			</div>
			# END langs_not_installed #
		</div>
		# ELSE #
			<div class="alert alert-info">${LangLoader::get_message('no_item_now', 'common')}</div>
		# ENDIF #
		<footer></footer>
	</section>
	# IF C_MORE_THAN_ONE_LANG_AVAILABLE #
		<div class="multiple-select-menu-container">
			<div class="input-group">
				<span class="input-group-addon">
					<input type="checkbox" class="check-all" id="add-all-checkbox" name="add-all-checkbox" onclick="multiple_checkbox_check(this.checked, {LANGS_NUMBER});" aria-label="{@langs.select_all_langs}" />
				</span>
				<div class="input-group-btn">
					<button type="submit" name="add-selected-langs" value="true" class="btn btn-primary">${LangLoader::get_message('multiple.install_selection', 'admin-common')}</button>
				</div>
			</div>
		</div>
	# ENDIF #
</form>
