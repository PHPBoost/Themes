<form action="{REWRITED_SCRIPT}" method="post">
	<div class="table-responsive">
		<table class="table table-bordered table-hover">
			<caption>{@themes.installed_theme}</caption>
			<thead>
				<tr>
					<th>{@themes.name}</th>
					<th>{@themes.description}</th>
					<th>{@themes.authorization}</th>
					<th>${LangLoader::get_message('enabled', 'common')}</th>
					<th>${LangLoader::get_message('delete', 'common')}</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td colspan="5" class="bg-warning">
						# INCLUDE MSG #
						<strong>{@themes.default_theme_explain}</strong>
					</td>
				</tr>
				# START themes_installed #
					<tr>
						<td>
							<span id="theme-{themes_installed.ID}"></span>
							<strong>{themes_installed.NAME}</strong> <em>({themes_installed.VERSION})</em>
							<div class="clearfix"></div>
							# IF themes_installed.C_PICTURES #
								<a href="{themes_installed.MAIN_PICTURE}" data-lightbox="{themes_installed.ID}" data-rel="lightcase:collection" title="{themes_installed.NAME}">
									<img src="{themes_installed.MAIN_PICTURE}" alt="{themes_installed.NAME}" class="picture-table" />
									<span class="clearfix"></span>
									{@themes.view_real_preview}
								</a>
								# START themes_installed.pictures #
									<a href="{themes_installed.pictures.URL}" data-lightbox="{themes_installed.ID}" data-rel="lightcase:collection" title="{themes_installed.NAME}"></a>
								# END themes_installed.pictures #
							# ENDIF #

						</td>
						<td class="text-left">
							<div id="desc_explain{themes_installed.ID}">
								<strong>{@themes.author} :</strong>
								<div class="clearfix"></div>
								<div class="btn-group btn-group-xs">
									# IF themes_installed.C_AUTHOR_EMAIL #<a href="mailto:{themes_installed.AUTHOR_EMAIL}" class="btn btn-pbt">
										<i class="fa fa-fw fa-at"></i># ENDIF # {themes_installed.AUTHOR}
									# IF themes_installed.C_AUTHOR_EMAIL #</a># ENDIF #
									# IF themes_installed.C_AUTHOR_WEBSITE #
									<a href="{themes_installed.AUTHOR_WEBSITE}" class="btn btn-info">
										<i class="fa fa-fw fa-globe"></i> Web
									</a>
									# ENDIF #
								</div>
								<div class="clearfix"></div>
								<strong>{@themes.description} :</strong> {themes_installed.DESCRIPTION}
								<div class="clearfix"></div>
								<strong>{@themes.compatibility} :</strong> PHPBoost {themes_installed.COMPATIBILITY}
								<div class="clearfix"></div>
								<strong>{@themes.html_version} :</strong> {themes_installed.HTML_VERSION}
								<div class="clearfix"></div>
								<strong>{@themes.css_version} :</strong> {themes_installed.CSS_VERSION}
								<div class="clearfix"></div>
								<strong>{@themes.main_color} :</strong> {themes_installed.MAIN_COLOR}
								<div class="clearfix"></div>
								<strong>{@themes.width} :</strong> {themes_installed.WIDTH}
							</div>
						</td>
						<td>
							# IF NOT themes_installed.C_IS_DEFAULT_THEME #
								<div class="text-left" id="authorizations_explain-{themes_installed.ID}">{themes_installed.AUTHORIZATIONS}</div>
							# ELSE #
								${LangLoader::get_message('visitor', 'user-common')}
							# ENDIF #
						</td>

						# IF NOT themes_installed.C_IS_DEFAULT_THEME #
						<td class="input-radio">
							<label for="activated-{themes_installed.ID}">
								<input id="activated-{themes_installed.ID}" type="radio" name="activated-{themes_installed.ID}" value="1" # IF themes_installed.C_IS_ACTIVATED # checked="checked" # ENDIF #>
								${LangLoader::get_message('yes', 'common')}
							</label>
							<div class="clearfix"></div>
							<label for="activated-{themes_installed.ID}2">
								<input id="activated-{themes_installed.ID}2" type="radio" name="activated-{themes_installed.ID}" value="0" # IF NOT themes_installed.C_IS_ACTIVATED # checked="checked" # ENDIF #>
								${LangLoader::get_message('no', 'common')}
							</label>
						</td>
						<td>
							<button type="submit" class="btn btn-danger" name="delete-{themes_installed.ID}" value="true">${LangLoader::get_message('delete', 'common')}</button>
						</td>
						# ELSE #
						<td>
							${LangLoader::get_message('yes', 'common')}
						</td>
						<td>
						</td>
						# ENDIF #
					</tr>
				# END themes_installed #
			</tbody>
		</table>
	</div>


	<p class="text-center">
		<button type="submit" class="btn btn-primary" name="update_themes_configuration" value="true">{L_UPDATE}</button>
		<input type="hidden" name="token" value="{TOKEN}">
		<input type="hidden" name="update" value="true">
		<button type="reset" class="btn btn-default" value="true">{L_RESET}</button>
	</p>
</form>
