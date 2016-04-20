# INCLUDE UPLOAD_FORM #
<form action="{REWRITED_SCRIPT}" method="post" class="fieldset-content">
	# INCLUDE MSG #
	<table>
		<caption>{@themes.themes_available}</caption>
		# IF C_THEME_INSTALL #
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
					<span class="text-strong">{themes_not_installed.NAME}</span> <span class="text-italic">({themes_not_installed.VERSION})</span>
					<br /><br />
					# IF themes_not_installed.C_PICTURES #
						<a href="{themes_not_installed.MAIN_PICTURE}" data-lightbox="{themes_not_installed.ID}" data-rel="lightcase:collection" title="{themes_not_installed.NAME}">
							<img src="{themes_not_installed.MAIN_PICTURE}" alt="{themes_not_installed.NAME}" style="vertical-align:top; max-height:180px;" />
							<br/>
							{@themes.view_real_preview}
						</a>
						# START themes_not_installed.pictures #
							<a href="{themes_not_installed.pictures.URL}" data-lightbox="{themes_not_installed.ID}" data-rel="lightcase:collection" title="{themes_not_installed.NAME}"></a>
						# END themes_not_installed.pictures #
					# ENDIF #				
				</td>
				<td>
					<div id="desc_explain{themes_not_installed.ID}" style="text-align:left;">
						<span class="text-strong">{@themes.author} :</span> 
						<a href="mailto:{themes_not_installed.AUTHOR_EMAIL}">{themes_not_installed.AUTHOR_NAME}</a>
						# IF themes_not_installed.C_WEBSITE # 
						<a href="{themes_not_installed.AUTHOR_WEBSITE}" class="basic-button smaller">Web</a>
						# ENDIF #
						<br />
						<span class="text-strong">{@themes.description} :</span> {themes_not_installed.DESCRIPTION}<br />
						<span class="text-strong">{@themes.compatibility} :</span> PHPBoost {themes_not_installed.COMPATIBILITY}<br />
						<span class="text-strong">{@themes.html_version} :</span> {themes_not_installed.HTML_VERSION}<br />
						<span class="text-strong">{@themes.css_version} :</span> {themes_not_installed.CSS_VERSION}<br />
						<span class="text-strong">{@themes.main_color} :</span> {themes_not_installed.MAIN_COLOR}<br />
						<span class="text-strong">{@themes.width} :</span> {themes_not_installed.WIDTH}<br />
					</div>
				</td>
				<td>
					<div id="authorizations_explain-{themes_not_installed.ID}">
						{themes_not_installed.AUTHORIZATIONS}
					</div>
				</td>
				<td class="input-radio">
					<label><input type="radio" name="activated-{themes_not_installed.ID}" value="1" checked="checked"> ${LangLoader::get_message('yes', 'common')}</label>
					<label><input type="radio" name="activated-{themes_not_installed.ID}" value="0"> ${LangLoader::get_message('no', 'common')}</label>
				</td>
				<td>
					<button type="submit" class="submit" name="add-{themes_not_installed.ID}" value="true">{@themes.install_theme}</button>
				</td>
			</tr>
			# END themes_not_installed #
		</tbody>
	</table>
		# ELSE #
	</table>
	<div class="notice message-helper-small">${LangLoader::get_message('no_item_now', 'common')}</div>
		# ENDIF #
		
	<fieldset class="fieldset-submit">
		<legend>{L_SUBMIT}</legend>
		<input type="hidden" name="token" value="{TOKEN}">
	</fieldset>
</form>