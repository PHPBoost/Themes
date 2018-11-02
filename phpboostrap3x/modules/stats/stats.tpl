	<section id="module-stats">

		<header>
			<h1>{L_STATS}</h1>
		</header>

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
							<a href="{PATH_TO_ROOT}/stats/stats{U_STATS_SITE}#stats" title="{L_SITE}">
								<i class="fa fa-home"></i> <span class="visible-xs">{L_SITE}</span>
							</a>
						</li>
						<li>
							<a href="{PATH_TO_ROOT}/stats/stats{U_STATS_USERS}#stats" title="{L_USERS}">
								<i class="fa fa-users"></i> <span class="visible-xs">{L_USERS}</span>
							</a>
						</li>
						<li>
							<a href="{PATH_TO_ROOT}/stats/stats{U_STATS_VISIT}#stats" title="{L_VISITS}">
								<i class="fa fa-eye"></i> <span class="visible-xs">{L_VISITS}</span>
							</a>
						</li>
						<li>
							<a href="{PATH_TO_ROOT}/stats/stats{U_STATS_PAGES}#stats" title="{L_PAGES}">
								<i class="fa fa-file-o"></i> <span class="visible-xs">{L_PAGES}</span>
							</a>
						</li>
						<li>
							<a href="{PATH_TO_ROOT}/stats/stats{U_STATS_BROWSER}#stats" title="{L_BROWSERS}">
								<i class="fa fa-globe"></i> <span class="visible-xs">{L_BROWSERS}</span>
							</a>
						</li>
						<li>
							<a href="{PATH_TO_ROOT}/stats/stats{U_STATS_OS}#stats" title="{L_OS}">
								<i class="fa fa-laptop"></i> <span class="visible-xs">{L_OS}</span>
							</a>
						</li>
						<li>
							<a href="{PATH_TO_ROOT}/stats/stats{U_STATS_LANG}#stats" title="{L_LANG}">
								<i class="fa fa-flag-o"></i> <span class="visible-xs">{L_LANG}</span>
							</a>
						</li>
						<li>
							<a href="{PATH_TO_ROOT}/stats/stats{U_STATS_REFERER}#stats" title="{L_REFERER}">
								<i class="fa fa-share-square-o"></i> <span class="visible-xs">{L_REFERER}</span>
							</a>
						</li>
						<li>
							<a href="{PATH_TO_ROOT}/stats/stats{U_STATS_KEYWORD}#stats" title="{L_KEYWORD}">
								<i class="fa fa-key"></i> <span class="visible-xs">{L_KEYWORD}</span>
							</a>
						</li>
					</ul>
				</div>
			</div>
		</nav>

		# IF C_STATS_SITE #
		<article>
			<header>
				<h2>{L_SITE}</h2>
			</header>
			<div class="table-responsive">
				<table class="table">
					<thead>
						<tr>
							<th>
								{L_START}
							</th>
							<th>
								{L_VERSION} PHPBoost
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
		</article>
		# ENDIF #

		# IF C_STATS_USERS #
		<article>
			<header>
				<h2>{L_USERS}</h2>
			</header>
			<div class="table-responsive">
				<table class="table">
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

			<h2>{L_TEMPLATES}</h2>
			<div class="row">
				<div class="col-sm-6">
					{GRAPH_RESULT_THEME}
				</div>
				<div class="col-sm-6">
					<div class="table-responsive">
						<table class="table">
							<thead>
								<tr>
									<th>
										{L_TEMPLATES}
									</th>
									<th>
										{L_USERS}
									</th>
								</tr>
							</thead>
							<tbody>
								# START templates #
								<tr>
									<td class="text-left">
										<div class="stats-color-square" style="background-color:{templates.COLOR};"></div>
										{templates.THEME} <small>{templates.PERCENT}%</small>
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
			</div>


			# IF C_DISPLAY_SEX #
			<div class="clearfix"></div>

			<h2>{L_SEX}</h2>
			<div class="row">
				<div class="col-sm-6">
					{GRAPH_RESULT_SEX}
				</div>
				<div class="col-sm-6">
					<div class="table-responsive">
						<table class="table">
							<thead>
								<tr>
									<th>
										{L_SEX}
									</th>
									<th>
										{L_USERS}
									</th>
								</tr>
							</thead>
							<tbody>
								# START sex #
								<tr>
									<td class="text-left">
										<div class="stats-color-square" style="background-color:{sex.COLOR};"></div>
										{sex.SEX} <span class="smaller">({sex.PERCENT}%)</span>
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

			# ENDIF #
			<div class="mtb5 clearfix"></div>
			<h2>{L_TOP_TEN_POSTERS}</h2>
			<div class="table-responsive">
				<table class="table">
					<thead>
						<tr>
							<th>N&deg;</th>
							<th>{L_PSEUDO}</th>
							<th>{L_MSG}</th>
						</tr>
					</thead>
					<tbody>
						# START top_poster #
						<tr>
							<td>
								{top_poster.ID}
							</td>
							<td>
								<a href="{top_poster.U_USER_PROFILE}" class="{top_poster.USER_LEVEL_CLASS}" # IF top_poster.C_USER_GROUP_COLOR # style="color:{top_poster.USER_GROUP_COLOR}" # ENDIF #>{top_poster.LOGIN}</a>
							</td>
							<td>
								{top_poster.USER_POST}
							</td>
						</tr>
						# END top_poster #
					</tbody>
				</table>
			</div>
		</article>
		# ENDIF #

		# IF C_STATS_VISIT #
		<form action="stats.php#stats" method="get" class="form-inline">
			<article>
				<header>
					<h2>{L_VISITORS}</h2>
				</header>
				<div class="mtb15 text-center">
					<div class="btn-group">
						# IF U_YEAR #
						<span class="btn btn-default">{MONTH} {U_YEAR}</span>
						# ENDIF #
						<span class="btn btn-success">{L_TOTAL}: {VISIT_TOTAL}</span>
						<span class="btn btn-info">{L_TODAY}: {VISIT_DAY}</span>
					</div>
					<div class="clearfix"></div>
					<div class="form-group">
						<div class="input-group">
							<div class="input-group-addon"><a class="fa fa-arrow-left" href="stats{U_PREVIOUS_LINK}#stats"></a></div>
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
							<div class="input-group-addon"><a class="fa fa-arrow-right" href="stats{U_NEXT_LINK}#stats"></a></div>
						</div>
						<p>
							<input type="hidden" name="{TYPE}" value="1">
							<input type="hidden" name="token" value="{TOKEN}">
							<button type="submit" name="date" value="true" class="btn btn-primary">{L_SUBMIT}</button>
						</p>
					</div>
				</div>
				<div class="text-center">
					# IF C_STATS_NO_GD #
					<div class="table-responsive">
						<table class="table">
							<tbody>
								<tr>
									<td></td>
									<td>
										{MAX_NBR}
									</td>

									# START values #
									<td>
										<table>
											<tbody>
												# START values.head #
												<tr>
													<td class="table-values-head">
													</td>
												</tr>
												# END values.head #
												<tr>
													<td class="table-values" style="height: {values.HEIGHT}px;">
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
					{GRAPH_RESULT}
					<div class="mtb15">
						<div class="btn-group">
							<span class="btn btn-success">{L_TOTAL}: {SUM_NBR}</span>
							<span class="btn btn-info">{L_AVERAGE}: {MOY_NBR}</span>
						</div>
					</div>
					<button class="btn btn-pbt">{U_VISITS_MORE}</button>
				</div>

				<div class="table-responsive">
					<table class="table">
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
			</article>
		</form>
		# ENDIF #

		# IF C_STATS_BROWSERS #
		<article>
			<header>
				<h2>{L_BROWSERS}</h2>
			</header>
			<div class="col-sm-6">
				{GRAPH_RESULT}
			</div>
			<div class="col-sm-6">
				<div class="table-responsive">
					<table class="table">
						<thead>
							<tr>
								<th>{L_PERCENTAGE}</th>
								<th>{L_BROWSERS}</th>
							</tr>
						</thead>
						<tbody>
							# START list #
							<tr>
								<td class="text-left">
									<div class="stats-color-square" style="background-color:{list.COLOR};"></div> {list.L_NAME} <span class="smaller">({list.PERCENT}%)</span>
								</td>
								<td>
									{list.IMG}
								</td>
							</tr>
							# END list #
						</tbody>
					</table>
				</div>
			</div>
			<div class="clearfix"></div>
		</article>
		# ENDIF #

		# IF C_STATS_OS #
		<article>
			<header>
				<h2>{L_OS}</h2>
			</header>
			<div class="col-md-6">
				{GRAPH_RESULT}
			</div>
			<div class="col-md-6">
				<div class="table-responsive">
					<table class="table">
						<thead>
							<tr>
								<th>{L_PERCENTAGE}</th>
								<th>{L_OS}</th>
							</tr>
						</thead>
						<tbody>
							# START list #
							<tr>
								<td class="text-left">
									<div class="stats-color-square" style="background-color:{list.COLOR};"></div> {list.L_NAME} <span class="smaller">({list.PERCENT}%)</span>
								</td>
								<td>
									{list.IMG}
								</td>
							</tr>
							# END list #
						</tbody>
					</table>
				</div>

			</div>
			<div class="clearfix"></div>
		</article>

		# ENDIF #

		# IF C_STATS_LANG #
		<article>
			<header>
				<h2>{L_LANG}</h2>
			</header>
			<div class="col-md-6">
				{GRAPH_RESULT}
			</div>
			<div class="col-md-6">
				<div class="table-responsive">
					<table class="table">
						<thead>
							<tr>
								<th>{L_PERCENTAGE}</th>
								<th>{L_LANG}</th>
							</tr>
						</thead>
						<tbody>
							# START list #
							<tr>
								<td class="text-left">
									<div class="stats-color-square" style="background-color:{list.COLOR}"></div> {list.L_NAME} <span class="smaller">({list.PERCENT}%)</span>
								</td>
								<td>
									{list.IMG}
								</td>
							</tr>
							# END list #
						</tbody>
					</table>
				</div>
			</div>
			<div class="clearfix"></div>
		</article>
		# ENDIF #

		# IF C_STATS_REFERER #
		<script>
		<!--
		function XMLHttpRequest_referer(divid)
		{
			if ( document.getElementById('url' + divid).style.display != 'none' )
			{
				jQuery('#url' + divid).fadeToggle();
				document.getElementById('img-url-' + divid).className = 'fa fa-plus-square-o';
			}
			else
			{
				var xhr_object = null;
				var filename = '{PATH_TO_ROOT}/stats/ajax/stats_xmlhttprequest.php?token={TOKEN}&stats_referer=1&id=' + divid;
				var data = null;

				if (window.XMLHttpRequest) // Firefox
				   xhr_object = new XMLHttpRequest();
				else if (window.ActiveXObject) // Internet Explorer
				   xhr_object = new ActiveXObject("Microsoft.XMLHTTP");
				else // XMLHttpRequest non support? par le navigateur
					return;

				document.getElementById('load' + divid).innerHTML = '<i class="fa fa-spinner fa-spin"></i>';

				xhr_object.open("POST", filename, true);
				xhr_object.onreadystatechange = function()
				{
					if ( xhr_object.readyState == 4 && xhr_object.status == 200 && xhr_object.responseText != '' )
					{
						jQuery('#url' + divid).fadeToggle();
						document.getElementById('url' + divid).innerHTML = xhr_object.responseText;
						document.getElementById('load' + divid).innerHTML = '';
						document.getElementById('img-url-' + divid).className = 'fa fa-minus-square-o';
					}
					else if ( xhr_object.readyState == 4 && xhr_object.responseText == '' )
						document.getElementById('load' + divid).innerHTML = '';
				}
				xmlhttprequest_sender(xhr_object, null);
			}
		}
		-->
		</script>

		<article>
			<header>
				<h2>{L_REFERER}</h2>
			</header>
			<div class="table-responsive">
				<table class="table" id="table">
					<thead>
						<tr>
							<th>
								{L_REFERER}
							</th>
							<th class="total-head">
								{L_TOTAL_VISIT}
							</th>
							<th class="average-head">
								{L_AVERAGE_VISIT}
							</th>
							<th class="last-update-head">
								{L_LAST_UPDATE}
							</th>
							<th class="trend-head">
								{L_TREND}
							</th>
						</tr>
					</thead>
					<tbody>
						# START referer_list #
						<tr>
							<td>
								<a class="fa fa-plus-square-o" style="cursor: pointer;" onclick="XMLHttpRequest_referer({referer_list.ID})" id="img-url-{referer_list.ID}"></a> <span class="smaller">({referer_list.NBR_LINKS})</span> <a href="{referer_list.URL}">{referer_list.URL}</a>	<span id="load{referer_list.ID}"></span>
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
							<td colspan="5" class="stats-referer">
								<div id="url{referer_list.ID}" style="display:none;width:100%;"></div>
							</td>
						</tr>
						# END referer_list #
						# IF NOT C_REFERERS #
						<tr>
							<td colspan="5" class="stats-referer">
							{L_NO_REFERER}
							</td>
						</tr>
						# ENDIF #
					</tbody>
					# IF C_PAGINATION #
					<tfoot>
						<tr>
							<td colspan="5">
								# INCLUDE PAGINATION #
							</td>
						</tr>
					</tfoot>
					# ENDIF #
				</table>
			</div>

		</article>
		# ENDIF #

		# IF C_STATS_KEYWORD #
		<script>
		<!--
		function XMLHttpRequest_referer(divid)
		{
			if ( document.getElementById('url' + divid).style.display != 'none' )
			{
				jQuery('#url' + divid).fadeToggle();
				document.getElementById('img-url-' + divid).className = 'fa fa-plus-square-o';
			}
			else
			{
				document.getElementById('load' + divid).innerHTML = '<i class="fa fa-spinner fa-spin"></i>';
				var xhr_object = xmlhttprequest_init('{PATH_TO_ROOT}/stats/ajax/stats_xmlhttprequest.php?token={TOKEN}&stats_keyword=1&id=' + divid);
				xhr_object.onreadystatechange = function()
				{
					if ( xhr_object.readyState == 4 && xhr_object.status == 200 && xhr_object.responseText != '' )
					{
						jQuery('#url' + divid).fadeToggle();
						document.getElementById('url' + divid).innerHTML = xhr_object.responseText;
						document.getElementById('load' + divid).innerHTML = '';
						document.getElementById('img-url-' + divid).className = 'fa fa-minus-square-o';
					}
					else if ( xhr_object.readyState == 4 && xhr_object.responseText == '' )
						document.getElementById('load' + divid).innerHTML = '';
				}
				xmlhttprequest_sender(xhr_object, null);
			}
		}
		-->
		</script>

		<article>
			<header>
				<h2>{L_KEYWORD}</h2>
			</header>
			<div class="table-responsive">
				<table class="table">
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
					<tbody>
						# START keyword_list #
						<tr>
							<td>
								<a class="fa fa-plus-square-o" style="cursor: pointer;" onclick="XMLHttpRequest_referer({keyword_list.ID})" id="img-url-{keyword_list.ID}"></a> <span class="smaller">({keyword_list.NBR_LINKS})</span> {keyword_list.KEYWORD} <span id="load{keyword_list.ID}"></span>
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
					# IF C_PAGINATION #
					<tfoot>
						<tr>
							<td colspan="5">
								# INCLUDE PAGINATION #
							</td>
						</tr>
					</tfoot>
					# ENDIF #
				</table>
			</div>

		</article>
		# ENDIF #
	</section>
	<script>
		<!--
			function open_submenu(myid)
			{
				jQuery('#' + myid).toggleClass('active');
			}
		-->
	</script>
