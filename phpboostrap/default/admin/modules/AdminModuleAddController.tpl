# INCLUDE MSG_WARNING #
# INCLUDE MSG_SUCCESS #
# INCLUDE UPLOAD_FORM #
<form action="{REWRITED_SCRIPT}" method="post" class="fieldset-content">
	<input type="hidden" name="token" value="{TOKEN}">
	<section id="not-installed-modules-container">
		<header><h1>{@modules.available_modules}</h1></header>
		# IF C_MODULE_AVAILABLE #
		<div class="row grid-columns">
			# START modules_not_installed #
				<div class="col-md-6 col-lg-4">
					<div class="panel panel-default">
						<div class="panel-heading">
							<div class="row">
								<h4 class="col-xs-8">
									<img class="valign-middle" src="{PATH_TO_ROOT}/{modules_not_installed.ICON}/{modules_not_installed.ICON}.png" alt="{modules_not_installed.NAME}" title="{modules_not_installed.NAME}" />
									{modules_not_installed.NAME}
								</h4>
								<div class="col-xs-4">
									<div class="input-group">
										# IF C_MORE_THAN_ONE_MODULE_AVAILABLE #
											# IF modules_not_installed.C_COMPATIBLE #
												<span class="input-group-addon">
													<input type="checkbox" class="multiple-checkbox add-checkbox" id="multiple-checkbox-{modules_not_installed.MODULE_NUMBER}" name="add-checkbox-{modules_not_installed.MODULE_NUMBER}"/>
												</span>
											# ENDIF #
										# ENDIF #
										<div class="input-group-btn">
											# IF modules_not_installed.C_COMPATIBLE #
												<button type="submit" class="btn btn-success" name="add-{modules_not_installed.ID}" value="true">${LangLoader::get_message('install', 'admin-common')}</button>
											# ELSE #
												<button type="button" class="btn btn-danger" disabled="disabled">${LangLoader::get_message('not_compatible', 'admin-common')}</button>
											# ENDIF #
										</div>
									</div>
								</div>
							</div>
						</div>
						<table class="table">
							<tbody>
								<tr>
									<td>{modules_not_installed.VERSION}</td>
									<td>{modules_not_installed.AUTHOR}</td>
									# IF modules_not_installed.C_AUTHOR_EMAIL #<td><a href="mailto:{modules_not_installed.AUTHOR_EMAIL}">@</a></td># ENDIF #
									# IF modules_not_installed.C_AUTHOR_WEBSITE #<td><a href="{modules_not_installed.AUTHOR_WEBSITE}">Web</a></td># ENDIF #
								</tr>
							</tbody>
						</table>
						<ul class="list-group">
							<li class="list-group-item">${LangLoader::get_message('description', 'main')} : {modules_not_installed.DESCRIPTION}</li>
							<li class="list-group-item# IF NOT modules_not_installed.C_COMPATIBLE # alert alert-danger# ENDIF #">${LangLoader::get_message('compatibility', 'admin-common')} : PHPBoost {modules_not_installed.COMPATIBILITY}</li>
						</ul>
					</div>
				</div>
			# END modules_not_installed #
		</div>
		# ELSE #
			<div class="alert alert-info">${LangLoader::get_message('no_item_now', 'common')}</div>
		# ENDIF #
		<footer></footer>
	</section>
	# IF C_MORE_THAN_ONE_MODULE_AVAILABLE #
		<div class="multiple-select-menu-container">
			<div class="input-group">
				<span class="input-group-addon">
					<input type="checkbox" class="check-all" id="add-all-checkbox" name="add-all-checkbox" onclick="multiple_checkbox_check(this.checked, {MODULES_NUMBER});" aria-label="{@modules.select_all_modules}" />
				</span>
				<div class="input-group-btn">
					<button type="submit" name="add-selected-modules" value="true" class="btn btn-primary">${LangLoader::get_message('multiple.install_selection', 'admin-common')}</button>
				</div>
			</div>
		</div>
	# ENDIF #
</form>
