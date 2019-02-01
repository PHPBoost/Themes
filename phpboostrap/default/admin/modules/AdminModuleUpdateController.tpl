# INCLUDE MSG_WARNING #
# INCLUDE MSG_SUCCESS #
# INCLUDE UPLOAD_FORM #
<form action="{REWRITED_SCRIPT}" method="post" class="fieldset-content">
	<input type="hidden" name="token" value="{TOKEN}">
	<section id="upgrade-modules-container" class="admin-elements-container modules-elements-container upgrade-elements-container">
		<header><h1>{@modules.updates_available}</h1></header>
		# IF C_UPDATES #
		<div class="row grid-columns">
			# START modules_upgradable #
			<div class="col-md-6 col-lg-4">
				<div class="panel panel-default">
					<div class="panel-heading">
						<div class="row">
							<h4 class="col-xs-8">{modules_upgradable.NAME}</h4>
							<div class="col-xs-4">
								<div class="input-group">
									# IF C_MORE_THAN_ONE_MODULE_AVAILABLE #
										# IF modules_upgradable.C_COMPATIBLE #
											<span class="input-group-addon">
												<input type="checkbox" class="multiple-checkbox upgrade-checkbox" id="multiple-checkbox-{modules_upgradable.MODULE_NUMBER}" name="upgrade-checkbox-{modules_upgradable.MODULE_NUMBER}"/>
											</span>
										# ENDIF #
									# ENDIF #
									<div class="input-group-btn">
										# IF modules_upgradable.C_COMPATIBLE #
											<button type="submit" class="btn btn-success" name="upgrade-{modules_upgradable.ID}" value="true">{@modules.upgrade_module}</button>
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
								<td>{modules_upgradable.VERSION}</td>
								<td>{modules_upgradable.AUTHOR}</td>
								# IF modules_upgradable.C_AUTHOR_EMAIL #<td><a href="mailto:{modules_upgradable.AUTHOR_EMAIL}">@</a></td># ENDIF #
								# IF modules_upgradable.C_AUTHOR_WEBSITE #<td><a href="{modules_upgradable.AUTHOR_WEBSITE}">Web</a></td># ENDIF #
							</tr>
						</tbody>
					</table>
					<ul class="list-group">
						<li class="list-group-item">${LangLoader::get_message('description', 'main')} : {modules_upgradable.DESCRIPTION}</li>
						<li class="list-group-item# IF NOT modules_upgradable.C_COMPATIBLE # alert alert-danger# ENDIF #">${LangLoader::get_message('compatibility', 'admin-common')} : PHPBoost {modules_upgradable.COMPATIBILITY}</li>
					</ul>
				</div>
			</div>
			# END modules_upgradable #
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
					<input type="checkbox" class="check-all" id="upgrade-all-checkbox" name="upgrade-all-checkbox" onclick="multiple_checkbox_check(this.checked, {MODULES_NUMBER});" aria-label="{@modules.select_all_modules}" />
				</span>
				<div class="input-group-btn">
					<button type="submit" name="upgrade-selected-modules" value="true" class="btn btn-primary">${LangLoader::get_message('multiple.upgrade_selection', 'admin-common')}</button>
				</div>
			</div>
		</div>
	# ENDIF #
</form>
