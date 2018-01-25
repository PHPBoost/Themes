<nav id="admin-quick-menu">
			<a href="" class="js-menu-button" onclick="open_submenu('admin-quick-menu');return false;" title="{L_STATS}">
				<i class="fa fa-bars"></i> {L_STATS}
				</a>
				<ul>
					<li>
					<a href="${relative_url(StatsUrlBuilder::documentation())}" class="quick-link">${LangLoader::get_message('module.documentation', 'admin-modules-common')}</a>
					</li>
				</ul>
			</nav>
	<div id="admin-contents" style="margin-left:0;padding:10px">
		<fieldset>
			<legend>{L_STATS}</legend>
			<div class="fieldset-inset">
				<nav class="navbar navbar-default">
					<div class="container-fluid">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#statistics" aria-expanded="false">
						        <span class="sr-only">${LangLoader::get_message('categories', 'categories-common')}</span>
						        <i class="fa fa-bars"></i>
						      </button>
						      <a class="navbar-brand" href="#">${LangLoader::get_message('categories', 'categories-common')}</a>
						</div>
						<div class="collapse navbar-collapse" id="statistics">
							<ul class="nav navbar-nav navbar-right">
								<li>
									<a href="admin_stats.php?site=1#stats" title="{L_SITE}">
										<i class="fa fa-home"></i>
									</a>
								</li>
								<li>
									<a href="admin_stats.php?members=1#stats" title="{L_USERS}">
										<i class="fa fa-users"></i>
									</a>
								</li>
								<li>
									<a href="admin_stats.php?visit=1#stats" title="{L_VISITS}">
										<i class="fa fa-eye"></i>
									</a>
								</li>
								<li>
									<a href="admin_stats.php?pages=1#stats" title="{L_PAGES}">
										<i class="fa fa-file-o"></i>
									</a>
								</li>
								<li>
									<a href="admin_stats.php?browser=1#stats" title="{L_BROWSERS}">
										<i class="fa fa-globe"></i>
									</a>
								</li>
								<li>
									<a href="admin_stats.php?os=1#stats" title="{L_OS}">
										<i class="fa fa-laptop"></i>
									</a>
								</li>
								<li>
									<a href="admin_stats.php?lang=1#stats" title="{L_LANG}">
										<i class="fa fa-flag-o"></i>
									</a>
								</li>
								<li>
									<a href="admin_stats.php?referer=1#stats" title="{L_REFERER}">
										<i class="fa fa-share-square-o"></i>
									</a>
								</li>
								<li>
									<a href="admin_stats.php?keyword=1#stats" title="{L_KEYWORD}">
										<i class="fa fa-key"></i>
									</a>
								</li>
								<li>
									<a href="admin_stats.php?bot=1#stats" title="{L_ROBOTS}">
										<i class="fa fa-search"></i>
									</a>
								</li>
							</ul>
						</div>
					</div>
				</nav>
			</div>
		</fieldset>

		# IF C_STATS_SITE #
		<div class="table-responsive">
			<table class="table table-bordered table-hover">
				<thead>
					<tr>
						<th>
							{L_START}
						</th>
						<th>
							{L_KERNEL_VERSION}
						</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
							{START}
						</td>
						<td>
							{VERSION}
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		# ENDIF #


		# IF C_STATS_USERS #
		<div class="table-responsive">
			<table class="table table-bordered table-hover">
				<thead>
					<tr>
						<th>
							{L_USERS}
						</th>
						<th>
							{L_LAST_USER}
						</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
							{USERS}
						</td>
						<td>
							<a href="{U_LAST_USER_PROFILE}" class="{LAST_USER_LEVEL_CLASS}" # IF C_LAST_USER_GROUP_COLOR # style="color:{LAST_USER_GROUP_COLOR}" # ENDIF #>{LAST_USER}</a>
						</td>
					</tr>
				</tbody>
			</table>
		</div>

		<br /><br />
		<fieldset>
			<legend>{L_TEMPLATES}</legend>
			<div class="row mb15">
				<div class="col-sm-6">
					<img class="fieldset-img" src="display_stats.php?theme=1" alt="{L_TEMPLATES}" />
				</div>
				<div class="col-sm-6">
					<table class="table table-bordered table-hover">
						<thead>
							<tr>
								<th>
									{L_TEMPLATES}
								</th>
								<th>
									{L_COLORS}
								</th>
								<th>
									{L_USERS}
								</th>
							</tr>
						</thead>
						<tbody>
							<tr colspan="3">
							</tr>
							# START templates #
							<tr>
								<td>
									{templates.THEME} <span class="small">({templates.PERCENT}%)</span>
								</td>
								<td>
									<div style="margin:auto;width:10px;margin:auto;height:10px;background:{templates.COLOR};border:1px solid black;"></div>
								</td>
								<td>
									{templates.NBR_THEME}
								</td>
							</tr>
							# END templates #
						</tbody>
					</table>
				</div>
			</div>
		</fieldset>
		# IF C_DISPLAY_SEX #
		<fieldset class="mb15">
			<legend>{L_SEX}</legend>
			<div class="row">
				<div class="col-sm-6"><div class="bargraph">{GRAPH_RESULT_SEX}</div></div>
				<div class="col-sm-6">
					<div class="table-responsive">
						<table class="table table-bordered table-hover">
							<thead>
								<tr>
									<th>
										{L_SEX}
									</th>
									<th>
										{L_COLORS}
									</th>
									<th>
										{L_USERS}
									</th>
								</tr>
							</thead>
							<tbody>
								<tr colspan="3">
								</tr>
								# START sex #
								<tr>
									<td>
										{sex.SEX} <span class="small">({sex.PERCENT}%)</span>
									</td>
									<td>
										<div style="margin:auto;width:10px;margin:auto;height:10px;background:{sex.COLOR};border:1px solid black;"></div>
									</td>
									<td>
										{sex.NBR_MBR}
									</td>
								</tr>
								# END sex #
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</fieldset>
		# ENDIF #
		<div class="table-responsive">
			<table class="table table-bordered table-hover">
				<caption>{L_TOP_TEN_POSTERS}</caption>
				<thead>
					<tr>
						<th>
							{L_PSEUDO}
						</th>
						<th>
							N&deg;
						</th>
						<th>
							{L_MSG}
						</th>
					</tr>
				</thead>
				<tbody>
					# START top_poster #
					<tr>
						<td>
							<a href="{top_poster.U_USER_PROFILE}" class="{top_poster.USER_LEVEL_CLASS}" # IF top_poster.C_USER_GROUP_COLOR # style="color:{top_poster.USER_GROUP_COLOR}" # ENDIF #>{top_poster.LOGIN}</a>
						</td>
						<td>
							{top_poster.ID}
						</td>
						<td>
							{top_poster.USER_POST}
						</td>
					</tr>
					# END top_poster #
				</tbody>
			</table>
		</div>

		# ENDIF #


		# IF C_STATS_VISIT #
		<form action="admin_stats.php#stats" method="get" class="form-inline">
			<fieldset>
				<legend>{L_VISITORS} {MONTH} {U_YEAR}</legend>
				<div class="fieldset-inset">
					<div class="col-sm-6 mb15 text-center">
						<div class="btn-group">
							<span class="btn btn-success">{L_TOTAL}: {VISIT_TOTAL}</span>
							<span class="btn btn-info">{L_TODAY}: {VISIT_DAY}</span>
						</div>
						<div class="clearfix"></div>
						<div class="input-group">
							<div class="input-group-addon"><a class="fa fa-arrow-left" href="admin_stats{U_PREVIOUS_LINK}#stats"></a></div>
							# IF C_STATS_DAY #
							<select class="form-control date-picker" name="d">
								{STATS_DAY}
							</select>
							# ENDIF #
							# IF C_STATS_MONTH #
							<select class="form-control date-picker" name="m">
								{STATS_MONTH}
							</select>
							# ENDIF #
							# IF C_STATS_YEAR #
							<select class="form-control date-picker" name="y">
								{STATS_YEAR}
							</select>
							# ENDIF #
							<div class="input-group-addon"><a class="fa fa-arrow-right" href="admin_stats{U_NEXT_LINK}#stats"></a></div>
						</div>
						<div class="clearfix"></div>
						<input type="hidden" name="{TYPE}" value="1">
						<button type="submit" name="date" value="true" class="btn btn-primary">{L_SUBMIT}</button>
						<input type="hidden" name="token" value="{TOKEN}">
					</div>
					<div class="col-sm-6">
						# IF C_STATS_NO_GD #
						<div class="table-responsive">
							<table class="table table-bordered table-hover">
								<tbody>
									<tr>
										<td></td>
										<td>
											{MAX_NBR}
										</td>

										# START values #
										<td>
											<table class="table">
												<tbody>
													# START head #
													<tr>
														<td style="margin-left:2px;width:10px;height:4px;background-image: url({PATH_TO_ROOT}/stats/templates/images/stats2.png); background-repeat:no-repeat;">
														</td>
													</tr>
													# END head #
													<tr>
														<td style="margin-left:2px;width:10px;height:{values.HEIGHT}px;background-image: url({PATH_TO_ROOT}/stats/templates/images/stats.png);background-repeat:repeat-y;padding:0px">
														</td>
													</tr>
												</tbody>
											</table>
										</td>
										# END values #

										# START end_td #
											{end_td.END_TD}
										# END end_td #
									</tr>
									<tr>
										<td></td>
										<td>
											0
										</td>
										# START legend #
										<td>
											{legend.LEGEND}
										</td>
										# END legend #
									</tr>
									<tr>
										<td colspan="{COLSPAN}"></td>
									</tr>
								</tbody>
							</table>
						</div>

						# ENDIF #
						<br />
						<div class="bargraph mb15">{GRAPH_RESULT}</div>
						<p class="text-center">
							<span class="btn-group">
								<span class="btn btn-success">{L_TOTAL}: {SUM_NBR}</span>
								<span class="btn btn-info">{L_AVERAGE}: {MOY_NBR}</span>
							</span>

						</p>
					</div>
					<p class="text-center">
						<span class="btn btn-pbt">{U_VISITS_MORE}</span>
					</p>
				</div>
			</fieldset>
		</form>

		<br /><br />

		<div class="table-responsive">
			<table class="table table-bordered table-hover">
				<thead>
					<tr>
						<th>
							{L_DAY}
						</th>
						<th>
							{L_VISITS_DAY}
						</th>
					</tr>
				</thead>
				<tbody>
					# START value #
					<tr>
						<td>
							{value.U_DETAILS}
						</td>
						<td>
							{value.NBR}
						</td>
					</tr>
					# END value #
				</tbody>
			</table>
		</div>

		# ENDIF #


		# IF C_STATS_BROWSERS #
		<fieldset>
			<legend>{L_BROWSERS}</legend>
			<div class="fieldset-inset">
				<div class="col-sm-6">
					<div class="bargraph">{GRAPH_RESULT}</div>
				</div>
				<div class="col-sm-6">
					<div class="table-responsive">
						<table class="table table-bordered table-hover">
							<thead>
								<tr>
									<th>{L_BROWSERS}</th>
									<th>{L_COLORS}</th>
									<th>{L_PERCENTAGE}</th>
								</tr>
							</thead>
							<tbody>
								# START list #
								<tr>
									<td>
										{list.IMG}
									</td>
									<td>
										<div style="margin:auto;width:10px;height:10px;margin:auto;background:{list.COLOR};border:1px solid black;"></div>
									</td>
									<td>
										 {list.L_NAME} <span class="small">({list.PERCENT}%)</span>
									</td>
								</tr>
								# END list #
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</fieldset>
		# ENDIF #


		# IF C_STATS_OS #
		<fieldset>
			<legend>{L_OS}</legend>
			<div class="fieldset-inset">
				<div class="col-sm-6">
					<div class="bargraph">{GRAPH_RESULT}</div>
				</div>
				<div class="col-sm-6">
					<div class="table-responsive">
						<table class="table table-bordered table-hover">
							<thead>
								<tr>
									<th>{L_OS}</th>
									<th>{L_COLORS}</th>
									<th>{L_PERCENTAGE}</th>
								</tr>
							</thead>
							<tbody>
								# START list #
								<tr>
									<td>
										{list.IMG}
									</td>
									<td>
										<div style="margin:auto;width:10px;height:10px;background:{list.COLOR};border:1px solid black;"></div>
									</td>
									<td>
										{list.L_NAME} <span class="small">({list.PERCENT}%)</span>
									</td>
								</tr>
								# END list #
							</tbody>
						</table>
					</div>

				</div>
			</div>
		</fieldset>
		# ENDIF #


		# IF C_STATS_LANG #
		<fieldset>
			<legend>{L_LANG}</legend>
			<div class="fieldset-inset">
				<div class="col-sm-6">
					<div class="bargraph">{GRAPH_RESULT}</div>
				</div>
				<div class="col-sm-6">
					<div class="table-responsive">
						<table class="table table-bordered table-hover">
							<thead>
								<tr>
									<th>{L_LANG}</th>
									<th>{L_COLORS}</th>
									<th>{L_PERCENTAGE}</th>
								</tr>
							</thead>
							<tbody>
								# START list #
								<tr>
									<td>
										{list.IMG}
									</td>
									<td>
										<div style="margin:auto;width:10px;margin:auto;height:10px;background:{list.COLOR};border:1px solid black;"></div>
									</td>
									<td>
										{list.L_NAME} <span class="small">({list.PERCENT}%)</span>
									</td>
								</tr>
								# END list #
							</tbody>
						</table>
					</div>

				</div>
			</div>
		</fieldset>
		# ENDIF #


		# IF C_STATS_REFERER #
		<script>
		<!--
		function XMLHttpRequest_referer(divid)
		{
			if( document.getElementById('url' + divid).style.display != 'none' )
			{
				document.getElementById('img-url-' + divid).className = 'fa fa-plus-square-o';
				jQuery('#url' + divid).fadeToggle();
			}
			else
			{
				var xhr_object = null;
				var filename = '{PATH_TO_ROOT}/stats/ajax/stats_xmlhttprequest.php?token={TOKEN}&stats_referer=1&id=' + divid;
				var data = null;

				if(window.XMLHttpRequest) // Firefox
				   xhr_object = new XMLHttpRequest();
				else if(window.ActiveXObject) // Internet Explorer
				   xhr_object = new ActiveXObject("Microsoft.XMLHTTP");
				else // XMLHttpRequest non support� par le navigateur
					return;

				document.getElementById('load' + divid).innerHTML = '<i class="fa fa-spinner fa-spin"></i>';

				xhr_object.open("POST", filename, true);
				xhr_object.onreadystatechange = function()
				{
					if( xhr_object.readyState == 4 && xhr_object.status == 200 && xhr_object.responseText != '' )
					{
						jQuery('#url' + divid).fadeToggle();
						document.getElementById('url' + divid).innerHTML = xhr_object.responseText;
						document.getElementById('load' + divid).innerHTML = '';
						document.getElementById('img-url-' + divid).className = 'fa fa-minus-square-o';
					}
					else if( xhr_object.readyState == 4 && xhr_object.responseText == '' )
						document.getElementById('load' + divid).innerHTML = '';
				}
				xmlhttprequest_sender(xhr_object, null);
			}
		}
		-->
		</script>
		<div class="table-responsive">
			<table class="table table-bordered table-hover">
				<thead>
					<tr>
						<th>
							{L_REFERER}
						</th>
						<th style="width:70px;">
							{L_TOTAL_VISIT}
						</th>
						<th style="width:60px;">
							{L_AVERAGE_VISIT}
						</th>
						<th style="width:96px;">
							{L_LAST_UPDATE}
						</th>
						<th style="width:100px;">
							{L_TREND}
						</th>
					</tr>
				</thead>
				# IF C_PAGINATION #
				<tfoot>
					<tr>
						<td colspan="5">
							# INCLUDE PAGINATION #
						</td>
					</tr>
				</tfoot>
				# ENDIF #
				<tbody>
					# START referer_list #
					<tr>
						<td>
							{referer_list.IMG_MORE}
							<a class="fa fa-plus-square-o" style="cursor: pointer;" onclick="XMLHttpRequest_referer({referer_list.ID})" id="img-url-{referer_list.ID}"></a> <span class="small">({referer_list.NBR_LINKS})</span> <a href="{referer_list.URL}">{referer_list.URL}</a> <span id="load{referer_list.ID}"></span>
						</td>
						<td>
							{referer_list.TOTAL_VISIT}
						</td>
						<td>
							{referer_list.AVERAGE_VISIT}
						</td>
						<td>
							{referer_list.LAST_UPDATE}
						</td>
						<td>
							{referer_list.TREND}
						</td>
					</tr>
					<tr>
						<td colspan="5">
							<div id="url{referer_list.ID}" style="display:none;width:100%;"></div>
						</td>
					</tr>
					# END referer_list #
					# IF NOT C_REFERERS #
					<tr>
						<td colspan="5">
						{L_NO_REFERER}
						</td>
					</tr>
					# ENDIF #
				</tbody>
			</table>
		</div>

		# ENDIF #


		# IF C_STATS_KEYWORD #
		<script>
		<!--
		function XMLHttpRequest_referer(divid)
		{
			if( document.getElementById('url' + divid).style.display != 'none' )
			{
				document.getElementById('img-url-' + divid).className = 'fa fa-plus-square-o';
				jQuery('#url' + divid).fadeToggle();
			}
			else
			{
				document.getElementById('load' + divid).innerHTML = '<i class="fa fa-spinner fa-spin"></i>';
				var xhr_object = xmlhttprequest_init('{PATH_TO_ROOT}/stats/ajax/stats_xmlhttprequest.php?token={TOKEN}&stats_keyword=1&id=' + divid);
				xhr_object.onreadystatechange = function()
				{
					if( xhr_object.readyState == 4 && xhr_object.status == 200 && xhr_object.responseText != '' )
					{
						jQuery('#url' + divid).fadeToggle();
						document.getElementById('url' + divid).innerHTML = xhr_object.responseText;
						document.getElementById('load' + divid).innerHTML = '';
						document.getElementById('img-url-' + divid).className = 'fa fa-minus-square-o';
					}
					else if( xhr_object.readyState == 4 && xhr_object.responseText == '' )
						document.getElementById('load' + divid).innerHTML = '';
				}
				xmlhttprequest_sender(xhr_object, null);
			}
		}
		-->
		</script>
		<div class="table-responsive">
			<table class="table table-bordered table-hover">
				<thead>
					<tr>
						<th>
							{L_KEYWORD}
						</th>
						<th style="width:70px;">
							{L_TOTAL_VISIT}
						</th>
						<th style="width:60px;">
							{L_AVERAGE_VISIT}
						</th>
						<th style="width:96px;">
							{L_LAST_UPDATE}
						</th>
						<th style="width:100px;">
							{L_TREND}
						</th>
					</tr>
				</thead>
				# IF C_PAGINATION #
				<tfoot>
					<tr>
						<td colspan="5">
							# INCLUDE PAGINATION #
						</td>
					</tr>
				</tfoot>
				# ENDIF #
				<tbody>
					# START keyword_list #
					<tr>
						<td>
							<a class="fa fa-plus-square-o" style="cursor:pointer;" onclick="XMLHttpRequest_referer({keyword_list.ID})" id="img-url-{keyword_list.ID}"></a> <span class="small">({keyword_list.NBR_LINKS})</span> {keyword_list.KEYWORD} <span id="load{keyword_list.ID}"></span>
						</td>
						<td>
							{keyword_list.TOTAL_VISIT}
						</td>
						<td>
							{keyword_list.AVERAGE_VISIT}
						</td>
						<td>
							{keyword_list.LAST_UPDATE}
						</td>
						<td>
							{keyword_list.TREND}
						</td>
					</tr>
					<tr>
						<td colspan="5">
							<div id="url{keyword_list.ID}" style="display:none;width:100%;"></div>
						</td>
					</tr>
					# END keyword_list #
					# IF NOT C_KEYWORDS #
					<tr>
						<td colspan="5">
						{L_NO_KEYWORD}
						</td>
					</tr>
					# ENDIF #
				</tbody>
			</table>
		</div>

		# ENDIF #


		# IF C_STATS_ROBOTS #
		<form class="form-horizontal" action="admin_stats.php?bot=1#stats" name="form" method="post" style="margin:auto;" onsubmit="return check_form();">
			<fieldset>
				<legend>{L_ROBOTS}</legend>
				<div class="fieldset-inset">
					# IF C_ROBOTS_DATA #
					<div class="col-sm-6">
						<img class="fieldset-img" src="display_stats.php?bot=1" alt="{L_ROBOTS}" />
					</div>
					# ENDIF #
					<div class="col-sm-6">
						<div class="table-responsive">
							<table class="table table-bordered table-hover">
								<thead>
									<tr>
										<th>
											{L_ROBOTS}
										</th>
										<th>
											{L_COLORS}
										</th>
										<th>
											{L_VIEW_NUMBER}
										</th>
									</tr>
								</thead>
								<tbody>
									# START list #
									<tr>
										<td>
											 {list.L_NAME}  <span class="small">({list.PERCENT}%)</span>
										</td>
										<td>
											<div style="margin:auto;width:10px;margin:auto;height:10px;background:{list.COLOR}"></div>
										</td>
										<td>
											{list.VIEWS}
										</td>
									</tr>
									# END list #
									# IF NOT C_ROBOTS_DATA #
									<tr>
										<td colspan="3">
										${LangLoader::get_message('no_item_now', 'common')}
										</td>
									</tr>
									# ENDIF #
								</tbody>
							</table>
						</div>

						# IF C_ROBOTS_DATA #
						<br /><br />
						<fieldset class="fieldset-submit">
							<legend>{L_ERASE_RAPPORT}</legend>
							<div class="fieldset-inset">
								<button type="submit" name="erase" value="true" class="btn btn-primary">{L_ERASE_RAPPORT}</button>
								<input type="hidden" name="token" value="{TOKEN}">
							</div>
						</fieldset>
						# ENDIF #
					</div>
				</div>
			</fieldset>
		</form>
		# ENDIF #

		<br /><br />
		<form action="admin_stats.php" method="post" class="form-horizontal">
				<fieldset>
					<legend>{L_AUTHORIZATIONS}</legend>
					<div class="fieldset-inset">
						<div class="form-group">
							<label class="col-sm-4">{L_READ_AUTHORIZATION}</label>
							<div class="col-sm-8">{READ_AUTHORIZATION}</div>
						</div>
					</div>
				</fieldset>

				<p class="text-center">
					<button type="submit" name="valid" value="true" class="btn btn-primary">{L_UPDATE}</button>
					<button type="reset" value="true" class="btn btn-default">{L_RESET}</button>
					<input type="hidden" name="token" value="{TOKEN}">
				</p>
			</form>
	</div>
