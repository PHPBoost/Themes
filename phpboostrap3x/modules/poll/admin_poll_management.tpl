		<nav id="admin-quick-menu">
			<a href="" class="js-menu-button" onclick="open_submenu('admin-quick-menu');return false;" title="{L_POLL_MANAGEMENT}">
				<i class="fa fa-bars"></i> {L_POLL_MANAGEMENT}
			</a>
			<ul>
				<li>
					<a href="admin_poll.php" class="quick-link">{L_POLL_MANAGEMENT}</a>
				</li>
				<li>
					<a href="admin_poll_add.php" class="quick-link">{L_POLL_ADD}</a>
				</li>
				<li>
					<a href="admin_poll_config.php" class="quick-link">{L_POLL_CONFIG}</a>
				</li>
				<li>
					<a href="${relative_url(PollUrlBuilder::documentation())}" class="quick-link">${LangLoader::get_message('module.documentation', 'admin-modules-common')}</a>
				</li>
			</ul>
		</nav>

		<div class="admin-module-poll" id="admin-contents">
			<div class="table-responsive">
				<table class="table table-bordered table-hover">
					<caption>{L_POLL_MANAGEMENT}</caption>
					<thead>
						<tr>
							<th>
								{L_QUESTION}
							</th>
							<th>
								{L_POLLS}
							</th>
							<th>
								{L_PSEUDO}
							</th>
							<th>
								{L_DATE}
							</th>
							<th>
								${LangLoader::get_message('hidden', 'common')}
							</th>
							<th>
								{L_APROB}
							</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						# START questions #
						<tr>
							<td class="left">
								{questions.QUESTIONS}
							</td>
							<td>
								<a href="{PATH_TO_ROOT}/poll/poll.php?id={questions.IDPOLL}">${LangLoader::get_message('display', 'common')}</a>
							</td>
							<td>
								# IF questions.PSEUDO #<a href="{questions.U_AUTHOR_PROFILE}" class="{questions.USER_LEVEL_CLASS}" # IF questions.C_USER_GROUP_COLOR # style="color:{questions.USER_GROUP_COLOR}" # ENDIF #>{questions.PSEUDO}</a># ELSE #${LangLoader::get_message('guest', 'main')}# ENDIF #
							</td>
							<td>
								{questions.DATE}
							</td>
							<td>
								{questions.ARCHIVES}
							</td>
							<td>
								{questions.APROBATION}
								<br />
								{questions.VISIBLE}
							</td>
							<td>
								<div class="btn-group btn-group-xs">
									<a href="admin_poll.php?id={questions.IDPOLL}" title="{L_UPDATE}" class="btn btn-info">
										<i class="fa fa-edit"></i>
									</a>
									<a href="admin_poll.php?delete=1&amp;id={questions.IDPOLL}&amp;token={TOKEN}" title="${LangLoader::get_message('delete', 'common')}" class="btn btn-danger" data-confirmation="delete-element">
										<i class="fa fa-delete"></i>
									</a>
								</div>

							</td>
						</tr>
						# END questions #
					</tbody>
					# IF C_PAGINATION #
					<tfoot>
						<tr>
							<td colspan="7">
								# INCLUDE PAGINATION #
							</td>
						</tr>
					</tfoot>
					# ENDIF #
				</table>
			</div>

		</div>
