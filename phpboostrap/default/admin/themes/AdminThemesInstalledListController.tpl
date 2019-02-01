{@H|themes.warning_before_install}
<form action="{REWRITED_SCRIPT}" method="post">
	<section id="installed-themes-container">
		<header><h1>{@themes.installed_theme}</h1>{@themes.installed_theme}</header>
		<div class="row grid-columns">
			# START themes_installed #
			<div class="col-md-6 col-lg-4">
				<div class="panel panel-default">
					<div class="panel-heading">
						<div class="row">
							<h4 class="col-xs-6">
								{themes_installed.NAME}
							</h4>
							<div class="col-xs-6">
								<div class="input-group">
									# IF C_MORE_THAN_ONE_THEME_INSTALLED #
										# IF themes_installed.C_COMPATIBLE #
											<span class="input-group-addon">
												<input type="checkbox" class="multiple-checkbox delete-checkbox" id="multiple-checkbox-{themes_installed.THEME_NUMBER}" name="delete-checkbox-{themes_installed.THEME_NUMBER}"# IF themes_installed.C_IS_DEFAULT_THEME # disabled="disabled"# ENDIF # />
											</span>
										# ENDIF #
									# ENDIF #
									<div class="input-group-btn">
										# IF themes_installed.C_IS_DEFAULT_THEME #
											<a href="#" class="btn btn-info">{@themes.default}</a>
										# ELSE #
											<button type="button"  data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
												class="btn dropdown-toggle# IF themes_installed.C_COMPATIBLE ## IF themes_installed.C_IS_ACTIVATED # btn-success# ELSE # btn-warning# ENDIF ## ELSE # btn-danger# ENDIF #">
												# IF themes_installed.C_COMPATIBLE #
													# IF themes_installed.C_IS_ACTIVATED #
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
												# IF themes_installed.C_COMPATIBLE #
													<li class="admin-menu-element"><button type="submit" class="submit" name="default-{themes_installed.ID}" value="true">${LangLoader::get_message('set_to_default', 'admin-common')}</button></li>
													# IF themes_installed.C_IS_ACTIVATED #
														<li class="admin-menu-element"><button type="submit" class="submit" name="disable-{themes_installed.ID}" value="true">${LangLoader::get_message('disable', 'common')}</button></li>
													# ELSE #
														<li class="admin-menu-element"><button type="submit" class="submit" name="enable-{themes_installed.ID}" value="true">${LangLoader::get_message('enable', 'common')}</button></li></li>
													# ENDIF #
												# ENDIF #
												<li class="admin-menu-element"><button type="submit" class="submit alt" name="delete-{themes_installed.ID}" value="true">${LangLoader::get_message('uninstall', 'admin-common')}</button></li>
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
								<td>{themes_installed.VERSION}</td>
								<td>{themes_installed.AUTHOR}</td>
								# IF themes_installed.C_AUTHOR_EMAIL #<td><a href="mailto:{themes_installed.AUTHOR_EMAIL}">@</a></td># ENDIF #
								# IF themes_installed.C_AUTHOR_WEBSITE #<td><a href="{themes_installed.AUTHOR_WEBSITE}">Web</a></td># ENDIF #
							</tr>
						</tbody>
					</table>
					# IF themes_installed.C_PICTURES #
						<div class="panel-body panel-picture">
							<a href="{themes_installed.MAIN_PICTURE}" data-lightbox="{themes_installed.ID}" data-rel="lightcase:collection" title="{themes_installed.NAME}">
								{@themes.view_real_preview}
								<img src="{themes_installed.MAIN_PICTURE}" alt="{themes_installed.NAME}" />
							</a>
							# START themes_installed.pictures #
								<a href="{themes_installed.pictures.URL}" data-lightbox="{themes_installed.ID}" data-rel="lightcase:collection" title="{themes_installed.NAME}"></a>
							# END themes_installed.pictures #
						</div>
					# ENDIF #
					<ul class="list-group">
						<li class="list-group-item">${LangLoader::get_message('description', 'main')} : {themes_installed.DESCRIPTION}</li>
						<li class="list-group-item# IF NOT themes_installed.C_COMPATIBLE # alert alert-danger# ENDIF #">${LangLoader::get_message('compatibility', 'admin-common')} : PHPBoost {themes_installed.COMPATIBILITY}</li>
						<li class="list-group-item">{@themes.html_version} : {themes_installed.HTML_VERSION}</li>
						<li class="list-group-item">{@themes.css_version} : {themes_installed.CSS_VERSION}</li>
						<li class="list-group-item">{@themes.main_color} : {themes_installed.MAIN_COLOR}</li>
						<li class="list-group-item">{@themes.width} : {themes_installed.WIDTH}
						<li class="list-group-item">
							# IF themes_installed.C_COMPATIBLE #
								# IF themes_installed.C_IS_DEFAULT_THEME #
									<i class="fa fa-user-shield" aria-hidden="true"></i><span class="sr-only">{@themes.default_theme_visibility}</span>
								# ELSE #
									{themes_installed.AUTHORIZATIONS}
								# ENDIF #
							# ENDIF #
						</li>
					</ul>
				</div>
			</div>
			# END themes_installed #
		</div>
		<footer>
			<fieldset class="fieldset-submit">
				<button type="submit" class="btn btn-primary" name="update_themes_configuration" value="true">${LangLoader::get_message('save.authorizations', 'admin-common')}</button>
				<input type="hidden" name="token" value="{TOKEN}">
				<input type="hidden" name="update" value="true">
			</fieldset>
		</footer>
	</section>

	# IF C_MORE_THAN_ONE_THEME_INSTALLED #
	<div class="multiple-select-menu-container">
		<div class="input-group">
			<span class="input-group-addon">
				<input type="checkbox" class="check-all" id="delete-all-checkbox" name="delete-all-checkbox" onclick="multiple_checkbox_check(this.checked, {THEMES_NUMBER}, {DEFAULT_THEME_NUMBER});" aria-label="{@themes.select_all_themes}" />
			</span>
			<div class="input-group-btn dropup">
				<button type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="btn dropdown-toggle btn-primary">
					${LangLoader::get_message('multiple.select', 'admin-common')}
					<span class="caret"></span>
				</button>
				<ul class="dropdown-menu dropdown-menu-right">
					<li class="admin-menu-element"><button type="submit" name="delete-selected-themes" value="true" class="submit alt" id="delete-all-button">${LangLoader::get_message('multiple.uninstall_selection', 'admin-common')}</button></li>
					<li class="admin-menu-element"><button type="submit" name="deactivate-selected-themes" value="true" class="submit" id="deactivate-all-button">${LangLoader::get_message('multiple.deactivate_selection', 'admin-common')}</button></li>
					<li class="admin-menu-element"><button type="submit" name="activate-selected-themes" value="true" class="submit" id="activate-all-button">${LangLoader::get_message('multiple.activate_selection', 'admin-common')}</button></li>
				</ul>
			</div>
		</div>
	</div>
	# ENDIF #
</form>
