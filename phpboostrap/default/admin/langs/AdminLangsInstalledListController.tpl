{@H|langs.warning_before_install}
<form action="{REWRITED_SCRIPT}" method="post">
	<section id="installed-langs-container">
		<header><h1>{@langs.installed_langs}</h1></header>
		<div class="row grid-columns">
			# START langs_installed #
			<div class="col-md-6 col-lg-4">
				<div class="panel panel-default">
					<div class="panel-heading">
						<div class="row">
							<h4 class="col-xs-6">
								# IF langs_installed.C_HAS_PICTURE #
									<img src="{langs_installed.PICTURE_URL}" alt="{langs_installed.NAME}" title="{langs_installed.NAME}" class="valign-middle" />
								# ENDIF #
								{langs_installed.NAME}
							</h4>
							<div class="col-xs-6">
								<div class="input-group">
									# IF C_MORE_THAN_ONE_LANG_INSTALLED #
										# IF langs_installed.C_COMPATIBLE #
											<span class="input-group-addon">
												<input type="checkbox" id="multiple-checkbox-{langs_installed.LANG_NUMBER}" name="delete-checkbox-{langs_installed.LANG_NUMBER}"# IF langs_installed.C_IS_DEFAULT_LANG # disabled="disabled"# ENDIF # />
											</span>
										# ENDIF #
									# ENDIF #
									<div class="input-group-btn">
										# IF langs_installed.C_IS_DEFAULT_LANG #
											<a href="#" class="btn btn-info">{@langs.default}</a>
										# ELSE #
											<button type="button"  data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
												class="btn dropdown-toggle# IF langs_installed.C_COMPATIBLE ## IF langs_installed.C_IS_ACTIVATED # btn-success# ELSE # btn-warning# ENDIF ## ELSE # btn-danger# ENDIF #">
												# IF langs_installed.C_COMPATIBLE #
													# IF langs_installed.C_IS_ACTIVATED #
														${LangLoader::get_message('actions', 'admin-common')}
													# ELSE #
														${LangLoader::get_message('disabled', 'common')}
													# ENDIF #
												# ELSE #
													${LangLoader::get_message('not_compatible', 'admin-common')}
												# ENDIF #
												<span class="caret"></span>
											</button>
											<ul class="dropdown-menu dropdown-menu-right">
												# IF langs_installed.C_COMPATIBLE #
													<li class="admin-menu-element"><button type="submit" class="submit" name="default-{langs_installed.ID}" value="true">${LangLoader::get_message('set_to_default', 'admin-common')}</button></li>
													# IF langs_installed.C_IS_ACTIVATED #
														<li class="admin-menu-element"><button type="submit" class="submit" name="disable-{langs_installed.ID}" value="true">${LangLoader::get_message('disable', 'common')}</button></li>
													# ELSE #
														<li class="admin-menu-element"><button type="submit" class="submit" name="enable-{langs_installed.ID}" value="true">${LangLoader::get_message('enable', 'common')}</button></li></li>
													# ENDIF #
												# ENDIF #
												<li class="admin-menu-element"><button type="submit" class="submit alt" name="delete-{langs_installed.ID}" value="true">${LangLoader::get_message('uninstall', 'admin-common')}</button></li>
											</ul>
										# ENDIF #
									</div>
								</div>
							</div>
						</div>
					</div>
					<table class="table">
						<tbody>
							<tr>
								<td>{langs_installed.VERSION}</td>
								<td>{langs_installed.AUTHOR}</td>
								# IF langs_installed.C_AUTHOR_EMAIL #<td><a href="mailto:{langs_installed.AUTHOR_EMAIL}">@</a></td># ENDIF #
								# IF langs_installed.C_AUTHOR_WEBSITE #<td><a href="{langs_installed.AUTHOR_WEBSITE}">Web</a></td># ENDIF #
							</tr>
						</tbody>
					</table>
					<ul class="list-group">
						<li class="list-group-item# IF NOT langs_installed.C_COMPATIBLE # alert alert-danger# ENDIF #">${LangLoader::get_message('compatibility', 'admin-common')} : PHPBoost {langs_installed.COMPATIBILITY}</li>
						# IF langs_installed.C_COMPATIBLE #
							<li class="list-group-item">
								# IF langs_installed.C_IS_DEFAULT_LANG #
									<span class="btn btn-info" aria-label="{@langs.default_lang_visibility}"><i class="fa fa-user-shield" aria-hidden="true" title="{@langs.default_lang_visibility}"></i></span>
								# ELSE #
									{langs_installed.AUTHORIZATIONS}
								# ENDIF #
							</li>
						# ENDIF #
					</ul>
				</div>
			</div>
			# END langs_installed #
		</div>
		<footer>
			<fieldset class="fieldset-submit">
				<button type="submit" class="btn btn-primary" name="update_langs_configuration" value="true">${LangLoader::get_message('save.authorizations', 'admin-common')}</button>
				<input type="hidden" name="token" value="{TOKEN}">
				<input type="hidden" name="update" value="true">
			</fieldset>
		</footer>
	</section>

	# IF C_MORE_THAN_ONE_LANG_INSTALLED #
	<div class="multiple-select-menu-container">
		<div class="input-group">
			<span class="input-group-addon">
				<input type="checkbox" class="check-all" id="delete-all-checkbox" name="delete-all-checkbox" onclick="multiple_checkbox_check(this.checked, {LANGS_NUMBER}, {DEFAULT_LANG_NUMBER});" aria-label="{@langs.select_all_langs}" />
			</span>
			<div class="input-group-btn dropup">
				<button type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="btn dropdown-toggle btn-primary">
					${LangLoader::get_message('multiple.select', 'admin-common')}
					<span class="caret"></span>
				</button>
				<ul class="dropdown-menu dropdown-menu-right">
				<li class="admin-menu-element"><button type="submit" name="delete-selected-langs" value="true" class="submit alt" id="delete-all-button">${LangLoader::get_message('multiple.uninstall_selection', 'admin-common')}</button></li>
				<li class="admin-menu-element"><button type="submit" name="deactivate-selected-langs" value="true" class="submit" id="deactivate-all-button">${LangLoader::get_message('multiple.deactivate_selection', 'admin-common')}</button></li>
				<li class="admin-menu-element"><button type="submit" name="activate-selected-langs" value="true" class="submit" id="activate-all-button">${LangLoader::get_message('multiple.activate_selection', 'admin-common')}</button></li>
				</ul>
			</div>
		</div>
	</div>
	# ENDIF #
</form>
