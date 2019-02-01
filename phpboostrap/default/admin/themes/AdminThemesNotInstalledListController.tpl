# INCLUDE UPLOAD_FORM #
<form action="{REWRITED_SCRIPT}" method="post" class="fieldset-content">
	<input type="hidden" name="token" value="{TOKEN}">
	# INCLUDE MSG #
	<section id="not-installed-themes-container">
		<header><h1>{@themes.available_themes}</h1></header>
		# IF C_THEME_AVAILABLE #
		<div class="row grid-columns">
			# START themes_not_installed #
			<div class="col-md-6 col-lg-4">
				<div class="panel panel-default">
					<div class="panel-heading">
						<div class="row">
							<h4 class="col-xs-8">
								{themes_not_installed.NAME}
							</h4>
							<div class="col-xs-4">
								<div class="input-group">
									# IF C_MORE_THAN_ONE_THEME_AVAILABLE #
									# IF themes_not_installed.C_COMPATIBLE #
										<div class="input-group-addon">
											<input type="checkbox" class="multiple-checkbox add-checkbox" id="multiple-checkbox-{themes_not_installed.THEME_NUMBER}" name="add-checkbox-{themes_not_installed.THEME_NUMBER}"/>
										</div>
									# ENDIF #
									# ENDIF #
									<div class="input-group-btn">
										# IF themes_not_installed.C_COMPATIBLE #
											<button type="submit" class="btn btn-success" name="add-{themes_not_installed.ID}" value="true">${LangLoader::get_message('install', 'admin-common')}</button>
										# ELSE #
											<button type="button" class="btn btn-danger">${LangLoader::get_message('not_compatible', 'admin-common')}</span>
										# ENDIF #
									</div>
								</div>
							</div>
						</div>
					</div>
					<table class="table">
						<tbody>
							<tr>
								<td>{themes_not_installed.VERSION}</td>
								<td>{themes_not_installed.AUTHOR}</td>
								# IF themes_not_installed.C_AUTHOR_EMAIL #<td><a href="mailto:{themes_not_installed.AUTHOR_EMAIL}">@</a></td># ENDIF #
								# IF themes_not_installed.C_AUTHOR_WEBSITE #<td><a href="{themes_not_installed.AUTHOR_WEBSITE}">Web</a></td># ENDIF #
							</tr>
						</tbody>
					</table>
					# IF themes_not_installed.C_PICTURES #
						<div class="panel-body panel-picture">
							<a href="{themes_not_installed.MAIN_PICTURE}" data-lightbox="{themes_not_installed.ID}" data-rel="lightcase:collection" title="{themes_not_installed.NAME}">
								{@themes.view_real_preview}
								<img src="{themes_not_installed.MAIN_PICTURE}" alt="{themes_not_installed.NAME}" />
							</a>
							# START themes_not_installed.pictures #
							<a href="{themes_not_installed.pictures.URL}" data-lightbox="{themes_not_installed.ID}" data-rel="lightcase:collection" title="{themes_not_installed.NAME}"></a>
							# END themes_not_installed.pictures #
						</div>
					# ENDIF #
					<ul class="list-group">
						<li class="list-group-item">${LangLoader::get_message('description', 'main')} : {themes_not_installed.DESCRIPTION}</li>
						<li class="list-group-item# IF NOT themes_not_installed.C_COMPATIBLE # alert alert-danger# ENDIF #">${LangLoader::get_message('compatibility', 'admin-common')} : PHPBoost {themes_not_installed.COMPATIBILITY}</li>
						<li class="list-group-item">{@themes.html_version} : {themes_not_installed.HTML_VERSION}</li>
						<li class="list-group-item">{@themes.css_version} : {themes_not_installed.CSS_VERSION}</li>
						<li class="list-group-item">{@themes.main_color} : {themes_not_installed.MAIN_COLOR}</li>
						<li class="list-group-item">{@themes.width} : {themes_not_installed.WIDTH}</li>
						# IF themes_not_installed.C_COMPATIBLE #
							<li class="list-group-item">{themes_not_installed.AUTHORIZATIONS}</li>
						# ENDIF #
					</ul>
				</div>
			</div>
			# END themes_not_installed #
		</div>
		# ELSE #
			<div class="alert alert-info">${LangLoader::get_message('no_item_now', 'common')}</div>
		# ENDIF #
		<footer></footer>
	</section>
	# IF C_MORE_THAN_ONE_THEME_AVAILABLE #
		<div class="multiple-select-menu-container">
			<div class="input-group">
				<span class="input-group-addon">
					<input type="checkbox" class="check-all" id="add-all-checkbox" name="add-all-checkbox" onclick="multiple_checkbox_check(this.checked, {THEMES_NUMBER});" aria-label="{@themes.select_all_themes}" />
				</span>
				<div class="input-group-btn">
					<button type="submit" name="add-selected-themes" value="true" class="btn btn-primary">${LangLoader::get_message('multiple.install_selection', 'admin-common')}</button>
				</div>
			</div>
		</div>
	# ENDIF #
</form>
