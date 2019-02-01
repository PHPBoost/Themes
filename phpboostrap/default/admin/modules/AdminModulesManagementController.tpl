# INCLUDE MSG #
# START errors #
	# INCLUDE errors.MSG #
# END errors #

{@H|modules.warning_before_install}
<form action="{REWRITED_SCRIPT}" method="post">
	<section id="installed-modules-container">
		<header><h1>{@modules.installed_modules}</h1></header>
		<div class="row grid-columns">
			# START modules_installed #
			<div class="col-md-6 col-lg-4">
				<div class="panel panel-default">
					<div class="panel-heading">
						<div class="row">
							<h4 class="col-xs-8">
								<img src="{PATH_TO_ROOT}/{modules_installed.ICON}/{modules_installed.ICON}.png" alt="{modules_installed.NAME}" title="{modules_installed.NAME}" />
								{modules_installed.NAME}
							</h4>
							<div class="col-xs-4">
								<div class="input-group">
									# IF C_MORE_THAN_ONE_MODULE_INSTALLED #
										# IF modules_installed.C_COMPATIBLE #
											<span class="input-group-addon">
												<input type="checkbox" id="multiple-checkbox-{modules_installed.MODULE_NUMBER}" name="delete-checkbox-{modules_installed.MODULE_NUMBER}"/>
											</span>
										# ENDIF #
									# ENDIF #
									<div class="input-group-btn" role="group">
										<button type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
											class="btn dropdown-toggle# IF modules_installed.C_COMPATIBLE ## IF modules_installed.C_IS_ACTIVATED # btn-success# ELSE # btn-warning# ENDIF ## ELSE # btn-danger# ENDIF #">
											# IF modules_installed.C_COMPATIBLE #
												# IF modules_installed.C_IS_ACTIVATED #
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
											# IF modules_installed.C_COMPATIBLE #
												# IF modules_installed.C_IS_ACTIVATED #
													<li class="admin-menu-element"><button type="submit" class="submit" name="disable-{modules_installed.ID}" value="true">${LangLoader::get_message('disable', 'common')}</button></li>
												# ELSE #
													<li class="admin-menu-element"><button type="submit" class="submit" name="enable-{modules_installed.ID}" value="true">${LangLoader::get_message('enable', 'common')}</button></li></li>
												# ENDIF #
											# ENDIF #
											<li class="admin-menu-element"><button type="submit" class="submit alt" name="delete-{modules_installed.ID}" value="true">${LangLoader::get_message('uninstall', 'admin-common')}</button></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
					<table class="table">
						<tbody>
							<tr>
								<td>{modules_installed.VERSION}</td>
								<td>{modules_installed.AUTHOR}</td>
								# IF modules_installed.C_AUTHOR_EMAIL #<td><a href="mailto:{modules_installed.AUTHOR_EMAIL}">@</a></td># ENDIF #
								# IF modules_installed.C_AUTHOR_WEBSITE #<td><a href="{modules_installed.AUTHOR_WEBSITE}">Web</a></td># ENDIF #
							</tr>
						</tbody>
					</table>
					<ul class="list-group">
						<li class="list-group-item">${LangLoader::get_message('description', 'main')} : {modules_installed.DESCRIPTION}</li>
						<li class="list-group-item# IF NOT modules_installed.C_COMPATIBLE # alert alert-danger# ENDIF #">${LangLoader::get_message('compatibility', 'admin-common')} : PHPBoost {modules_installed.COMPATIBILITY}</li>
						<li class="list-group-item">{@modules.php_version} : {modules_installed.PHP_VERSION}</li>
						# IF modules_installed.C_DOCUMENTATION #
						<li class="list-group-item">
							<a class="basic-button smaller"href="{modules_installed.L_DOCUMENTATION}" title="{@module.documentation_of}{modules_installed.NAME}">{@module.documentation}</a>
						</li>
						# ENDIF #
					</ul>
				</div>
			</div>
			# END modules_installed #
		</div>
		<footer>
			<input type="hidden" name="token" value="{TOKEN}">
		</footer>
	</section>

	# IF C_MORE_THAN_ONE_MODULE_INSTALLED #
	<div class="multiple-select-menu-container">
		<div class="input-group">
			<span class="input-group-addon">
				<input type="checkbox" class="check-all" id="delete-all-checkbox" name="delete-all-checkbox" onclick="multiple_checkbox_check(this.checked, {MODULES_NUMBER});" aria-label="{@modules.select_all_modules}" />
			</span>
			<div class="input-group-btn dropup">
				<button type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="btn dropdown-toggle btn-primary">
					${LangLoader::get_message('multiple.select', 'admin-common')}
					<span class="caret"></span>
				</button>
				<ul class="dropdown-menu dropdown-menu-right">
					<li class="admin-menu-element"><button type="submit" name="activate-selected-modules" value="true" class="submit" id="activate-all-button">${LangLoader::get_message('multiple.activate_selection', 'admin-common')}</button></li>
					<li class="admin-menu-element"><button type="submit" name="deactivate-selected-modules" value="true" class="submit" id="deactivate-all-button">${LangLoader::get_message('multiple.deactivate_selection', 'admin-common')}</button></li>
					<li class="admin-menu-element"><button type="submit" name="delete-selected-modules" value="true" class="submit alt" id="delete-all-button">${LangLoader::get_message('multiple.uninstall_selection', 'admin-common')}</button></li>
				</ul>
			</div>
		</div>
	</div>
	# ENDIF #
</form>
