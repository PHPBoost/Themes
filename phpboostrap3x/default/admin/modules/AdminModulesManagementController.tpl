<script>
<!--
function display_description(id){
	var SHOW = ${escapejs(LangLoader::get_message('display', 'common'))};
	var HIDE = ${escapejs(LangLoader::get_message('hide', 'common'))};

	jQuery('#desc-explain-' + id).toggle(300, function(){
		if (jQuery(this).css('display') == 'block'){
			jQuery('#picture-desc-' + id).attr('title', HIDE);
		}
		else{
			jQuery('#picture-desc-' + id).attr('title', SHOW);
		}
		jQuery('#picture-desc-' + id).children().toggleClass('fa-minus');
		jQuery('#picture-desc-' + id).children().toggleClass('fa-plus');
	});
}
-->
</script>

# START errors #
	# INCLUDE errors.MSG #
# END errors #

<form action="{REWRITED_SCRIPT}" method="post" class="form-horizontal">
	<div class="table-responsive">
		<table class="table table-bordered table-hover">
			<caption>{@modules.installed_not_activated_modules}</caption>
			# IF C_MODULES_NOT_ACTIVATED #
			<thead>
				<tr>
					<th>{@modules.name}</th>
					<th>{@modules.description}</th>
					<th>${LangLoader::get_message('enabled', 'common')}</th>
					<th>${LangLoader::get_message('delete', 'common')}</th>
				</tr>
			</thead>
			<tbody>
				# START modules_not_activated #
				<tr>
					<td>
						<span id="m{modules_not_activated.ID}"></span>
						<img src="{PATH_TO_ROOT}/{modules_not_activated.ICON}/{modules_not_activated.ICON}.png" alt="{modules_not_activated.NAME}" /><br />
						<strong>{modules_not_activated.NAME}</strong> <em>({modules_not_activated.VERSION})</em>
					</td>
					<td>
						<div id="desc-explain-{modules_not_activated.ID}" class="text-left" style="display: none;">
							<strong>{@modules.author} :</strong>
							<div class="clearfix"></div>
							<div class="btn-group btn-group-xs">
								# IF modules_not_activated.C_AUTHOR_EMAIL #
									<a class="btn btn-pbt" href="mailto:{modules_not_activated.AUTHOR_EMAIL}">
										<i class="fa fa-fw fa-at"></i> {modules_not_activated.AUTHOR}
									</a>
								# ELSE #
									<span class="btn btn-default">
										{modules_not_activated.AUTHOR}
									</span>
								# ENDIF #
								# IF modules_not_activated.C_AUTHOR_WEBSITE #
									<a class="btn btn-info" href="{modules_not_activated.AUTHOR_WEBSITE}">
										<i class="fa fa-fw fa-globe"></i> Web
									</a>
								# ENDIF #
							</div>
							<div class="clearfix"></div>
							<strong>{@modules.description} :</strong> {modules_not_activated.DESCRIPTION}
							<div class="clearfix"></div>
							<strong>{@modules.compatibility} :</strong> PHPBoost {modules_not_activated.COMPATIBILITY}
							<div class="clearfix"></div>
							<strong>{@modules.php_version} :</strong> {modules_not_activated.PHP_VERSION}
						</div>
						<div class="text-center">
							<a href="" onclick="javascript:display_description('{modules_not_activated.ID}'); return false;" id="picture-desc-{modules_not_activated.ID}" class="btn btn-info" title="${LangLoader::get_message('display', 'common')}"><i class="fa fa-plus"></i></a>
						</div>
					</td>
					<td class="input-radio">
						<label for="activated-{modules_not_activated.ID}">
							<input id="activated-{modules_not_activated.ID}" type="radio" name="activated-{modules_not_activated.ID}" value="1" # IF modules_not_activated.C_MODULE_ACTIVE # checked="checked" # ENDIF #>
							${LangLoader::get_message('yes', 'common')}
						</label>
						<div class="clearfix"></div>
						<label for="activated-{modules_not_activated.ID}2">
							<input id="activated-{modules_not_activated.ID}2" type="radio" name="activated-{modules_not_activated.ID}" value="0" # IF NOT modules_not_activated.C_MODULE_ACTIVE # checked="checked" # ENDIF # />
							${LangLoader::get_message('no', 'common')}
						</label>
					</td>
					<td>
						<button type="submit" class="btn btn-danger" name="delete-{modules_not_activated.ID}" value="true" />${LangLoader::get_message('delete', 'common')}</button>
					</td>
				</tr>
				# END modules_not_activated #
			</tbody>
		</table>
			# ELSE #
		</table>
		<div class="alert alert-notice">${LangLoader::get_message('no_item_now', 'common')}</div>
			# ENDIF #
	</div>

	<div class="table-responsive">
		<table class="table table-bordered table-hover">
			<caption>{@modules.installed_activated_modules}</caption>
			# IF C_MODULES_ACTIVATED #
			<thead>
				<tr>
					<th>{@modules.name}</th>
					<th>{@modules.description}</th>
					<th>${LangLoader::get_message('enabled', 'common')}</th>
					<th>${LangLoader::get_message('delete', 'common')}</th>
				</tr>
			</thead>
			<tbody>
				# START modules_activated #
				<tr>
					<td>
						<span id="m{modules_activated.ID}"></span>
						<img src="{PATH_TO_ROOT}/{modules_activated.ICON}/{modules_activated.ICON}.png" alt="{modules_activated.NAME}" /><br />
						<strong>{modules_activated.NAME}</strong> <em>({modules_activated.VERSION})</em>
					</td>
					<td>
						<div id="desc-explain-{modules_activated.ID}" class="text-left" style="display: none;">
							<strong>{@modules.name} :</strong>
							<div class="clearfix"></div>
							<div class="btn-group btn-group-xs">
								# IF modules_activated.C_AUTHOR_EMAIL #
									<a class="btn btn-pbt" href="mailto:{modules_activated.AUTHOR_EMAIL}">
										{modules_activated.AUTHOR}
									</a>
								# ELSE #
									<span class="btn btn-default">
										{modules_activated.AUTHOR}
									</span>
								# ENDIF #
								# IF modules_activated.C_AUTHOR_WEBSITE #
									<a href="{modules_activated.AUTHOR_WEBSITE}" class="btn btn-info">
										<i class="fa fa-fw fa-globe"></i> Web
									</a>
								# ENDIF #
							</div>
							<div class="clearfix"></div>
							<strong>{@modules.description} :</strong> {modules_activated.DESCRIPTION}
							<div class="clearfix"></div>
							<strong>{@modules.compatibility} :</strong> PHPBoost {modules_activated.COMPATIBILITY}
							<div class="clearfix"></div>
							<strong>{@modules.php_version} :</strong> {modules_activated.PHP_VERSION}
						</div>
						<div class="text-center"><a href="" onclick="javascript:display_description('{modules_activated.ID}'); return false;" id="picture-desc-{modules_activated.ID}" class="btn btn-info" title="${LangLoader::get_message('display', 'common')}"><i class="fa fa-plus"></i></a></div>
					</td>
					<td class="input-radio">
						<label for="activated-{modules_activated.ID}">
							<input id="activated-{modules_activated.ID}" type="radio" name="activated-{modules_activated.ID}" value="1" # IF modules_activated.C_MODULE_ACTIVE # checked="checked" # ENDIF #>
							${LangLoader::get_message('yes', 'common')}
						</label>
						<div class="clearfix"></div>
						<label for="activated-{modules_activated.ID}2">
							<input id="activated-{modules_activated.ID}2" type="radio" name="activated-{modules_activated.ID}" value="0" # IF NOT modules_activated.C_MODULE_ACTIVE # checked="checked" # ENDIF #>
							${LangLoader::get_message('no', 'common')}
						</label>
					</td>
					<td>
						<button type="submit" class="btn btn-danger" name="delete-{modules_activated.ID}" value="true">${LangLoader::get_message('delete', 'common')}</button>
					</td>
				</tr>
				# END modules_activated #
			</tbody>
		</table>
			# ELSE #
		</table>
		<div class="alert alert-notice">${LangLoader::get_message('no_item_now', 'common')}</div>
			# ENDIF #
	</div>


	<p class="text-center">
		<button type="submit" class="btn btn-primary" name="update_modules_configuration" value="true">${LangLoader::get_message('update', 'main')}</button>
		<input type="hidden" name="token" value="{TOKEN}">
		<input type="hidden" name="update" value="true">
	</p>
</form>
