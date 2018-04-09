# INCLUDE UPLOAD_FORM #
<form action="{REWRITED_SCRIPT}" method="post" class="fieldset-content">
	<input type="hidden" name="token" value="{TOKEN}">
	# INCLUDE MSG #
	<fieldset>
		<legend>{@themes.themes_available}</legend>
		<div class="fieldset-inset">
		# IF C_THEME_INSTALL #
			<div class="table-responsive">
				<table class="table table-bordered table-hover">
					<caption>{@themes.themes_available}</caption>
					<thead>
						<tr>
							<th>{@themes.name}</th>
							<th>{@themes.description}</th>
							<th>{@themes.authorization}</th>
							<th>${LangLoader::get_message('enable', 'common')}</th>
							<th>{@themes.install_theme}</th>
						</tr>
					</thead>
					<tbody>
						# START themes_not_installed #
						<tr>
							<td>
								<span id="theme-{themes_not_installed.ID}"></span>
								<strong>{themes_not_installed.NAME}</strong> <em>({themes_not_installed.VERSION})</em>
								<div class="clearfix"></div>
								# IF themes_not_installed.C_PICTURES #
									<a href="{themes_not_installed.MAIN_PICTURE}" data-lightbox="{themes_not_installed.ID}" data-rel="lightcase:collection" title="{themes_not_installed.NAME}">
										<img src="{themes_not_installed.MAIN_PICTURE}" alt="{themes_not_installed.NAME}" class="picture-table" />
										<br/>
										{@themes.view_real_preview}
									</a>
									# START themes_not_installed.pictures #
										<a href="{themes_not_installed.pictures.URL}" data-lightbox="{themes_not_installed.ID}" data-rel="lightcase:collection" title="{themes_not_installed.NAME}"></a>
									# END themes_not_installed.pictures #
								# ENDIF #
							</td>
							<td>
								<div id="desc_explain{themes_not_installed.ID}" class="text-left">
									<strong>{@themes.author} :</strong>
									<div class="clearfix"></div>
									<div class="btn-group btn-group-xs">
										<a class="btn btn-pbt" href="mailto:{themes_not_installed.AUTHOR_EMAIL}">
											<i class="fa fa-fw fa-at"></i> {themes_not_installed.AUTHOR_NAME}
										</a>
										# IF themes_not_installed.C_AUTHOR_WEBSITE #
										<a href="{themes_not_installed.AUTHOR_WEBSITE}" class="btn btn-info">
											<i class="fa fa-fw fa-globe"></i> Web
										</a>
										# ENDIF #
									</div>
									<div class="clearfix"></div>
									<strong>{@themes.description} :</strong> {themes_not_installed.DESCRIPTION}
									<div class="clearfix"></div>
									<strong>{@themes.compatibility} :</strong> PHPBoost {themes_not_installed.COMPATIBILITY}
									<div class="clearfix"></div>
									<strong>{@themes.html_version} :</strong> {themes_not_installed.HTML_VERSION}
									<div class="clearfix"></div>
									<strong>{@themes.css_version} :</strong> {themes_not_installed.CSS_VERSION}
									<div class="clearfix"></div>
									<strong>{@themes.main_color} :</strong> {themes_not_installed.MAIN_COLOR}
									<div class="clearfix"></div>
									<strong>{@themes.width} :</strong> {themes_not_installed.WIDTH}
								</div>
							</td>
							<td class="text-left">
								<div id="authorizations_explain-{themes_not_installed.ID}">
									{themes_not_installed.AUTHORIZATIONS}
								</div>
							</td>
							<td class="input-radio">
								<label for="activated-{themes_not_installed.ID}">
									<input id="activated-{themes_not_installed.ID}" type="radio" name="activated-{themes_not_installed.ID}" value="1" checked="checked">
									${LangLoader::get_message('yes', 'common')}
								</label>
								<div class="clearfix"></div>
								<label for="activated-{themes_not_installed.ID}2">
									<input id="activated-{themes_not_installed.ID}2" type="radio" name="activated-{themes_not_installed.ID}" value="0">
									${LangLoader::get_message('no', 'common')}
								</label>
							</td>
							<td>
								<button type="submit" class="btn btn-success" name="add-{themes_not_installed.ID}" value="true">{@themes.install_theme}</button>
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
