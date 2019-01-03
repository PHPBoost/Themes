<nav id="admin-quick-menu">
    <a href="" class="js-menu-button" onclick="open_submenu('admin-quick-menu');return false;" title="{L_WEBSITE_UPDATES}">
		<i class="fa fa-bars"></i> {L_WEBSITE_UPDATES}
	</a>
	<ul>
		<li>
			<a href="updates.php" class="quick-link">{L_WEBSITE_UPDATES}</a>
		</li>
		<li>
			<a href="updates.php?type=kernel" class="quick-link">{L_KERNEL}</a>
		</li>
		<li>
			<a href="updates.php?type=module" class="quick-link">{L_MODULES}</a>
		</li>
		<li>
			<a href="updates.php?type=template" class="quick-link">{L_THEMES}</a>
		</li>
	</ul>
</nav>

<div id="admin-contents">
	<fieldset>
		<legend>{L_APP_UPDATE_MESSAGE}</legend>
		<div class="fieldset-inset">
			<div style="clear:right;"></div>
			# IF C_UNEXISTING_UPDATE #
				<div class="alert alert-warning">{L_UNEXISTING_UPDATE}</div>
			# ELSE #
                <div class="table-responsive">
                    <table id="table">
    					<caption>{L_APP_UPDATE_MESSAGE}</caption>
    					<thead>
    						<tr>
    							<th>
    								${LangLoader::get_message('last_update', 'admin')}
    							</th>
    							<th>
    								${LangLoader::get_message('langs.description', 'admin-langs-common')}
    							</th>
    						</tr>
    					</thead>
    					<tbody>
    						<tr>
    							<td>
    								<div class="panel panel-default">
    									<div class="panel-heading"><span>{APP_NAME} - {APP_VERSION} ({APP_LANGUAGE})</span></div>
    									<div class="panel-body">
    										{APP_DESCRIPTION}
    										<p>{APP_PUBDATE}</p>
    									</div>
    								</div>
    								# IF C_NEW_FEATURES #
    									<div class="panel panel-default">
    										<div class="panel-heading"><span>{L_NEW_FEATURES}</span></div>
											<ul class="list-group">
                                                # START new_features #
                                                    <li class="list-group-item">{new_features.description}</li>
                                                # END new_features #
                                            </ul>
    									</div>
    								# END IF #
    								# IF C_IMPROVMENTS #
    									<div class="panel panel-default">
    										<div class="panel-heading"><span>{L_IMPROVMENTS}</span></div>
											<ul class="list-group">
                                                # START improvments #
                                                <li class="list-group-item">{improvments.description}</li>
                                                # END improvments #
                                            </ul>
    									</div>
    								# END IF #
    								<div class="panel panel-default">
    									<div class="panel-heading"><span class="{PRIORITY_CSS_CLASS}">{L_WARNING} - {APP_WARNING_LEVEL}</span></div>
    									<div class="panel-body">
    										{APP_WARNING}
    									</div>
    								</div>
    							</td>
    							<td>
    								<div class="panel panel-default">
    									<div class="panel-heading"><span>{L_DOWNLOAD}</span></div>
										<ul class="list-group">
											<li class="list-group-item"><a href="{U_APP_DOWNLOAD}">{L_DOWNLOAD_PACK}</a></li>
											# IF U_APP_UPDATE #
											<li class="list-group-item"><a href="{U_APP_UPDATE}">{L_UPDATE_PACK}</a></li>
											# END IF #
										</ul>
    								</div>
    								<div class="panel panel-default">
    									<div class="panel-heading"><span>{L_AUTHORS}</span></div>
										<ul class="list-group">
                                            # START authors #
                                            <li class="list-group-item"><a href="mailto:{authors.email}">{authors.name}</a></li>
                                            # END authors #
                                        </ul>
    								</div>
    								# IF C_BUG_CORRECTIONS #
    									<div class="panel panel-default">
    										<div class="panel-heading"><span>{L_FIXED_BUGS}</span></div>
											<ul class="list-group">
                                                # START bugs #
                                                <li class="list-group-item">{bugs.description}</li>
                                                # END bugs #
                                            </ul>
    									</div>
    								# END IF #
    								# IF C_SECURITY_IMPROVMENTS #
    									<div class="panel panel-default">
    										<div class="panel-heading"><span>{L_SECURITY_IMPROVMENTS}</span></div>
											<ul class="list-group">
                                                # START security #
                                                <li class="list-group-item">{security.description}</li>
                                                # END security #
                                            </ul>
    									</div>
    								# END IF #
    							</td>
    						</tr>
    					</tbody>
    				</table>
                </div>
			# END IF #
		</div>
	</fieldset>
</div>
