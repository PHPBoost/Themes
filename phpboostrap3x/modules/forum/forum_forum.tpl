
		# INCLUDE forum_top #

		# START error_auth_write #
		<div class="notice">
			{error_auth_write.L_ERROR_AUTH_WRITE}
		</div>
		# END error_auth_write #

		# IF C_FORUM_SUB_CATS #
			<article itemscope="itemscope" itemtype="http://schema.org/Creativework" id="article-forum-subforum">
				<header>
					<h2>
						<a href="${relative_url(SyndicationUrlBuilder::rss('forum',IDCAT))}" class="fa fa-syndication" title="${LangLoader::get_message('syndication', 'common')}"></a>
						&nbsp;&nbsp;<strong>{L_SUBFORUMS}</strong>
					</h2>
				</header>
				<div class="table-responsive">
					<table class="table table-bordered table-striped">
						<thead>
							<tr>
								<th class="forum-announce-topic"><i class="fa fa-eye"></i></th>
								<th class="forum-topic">{L_FORUM}</th>
								<th class="forum-subject-nb">{L_TOPIC}</th>
								<th class="forum-message-nb">{L_MESSAGE}</th>
								<th class="forum-last-topic">{L_LAST_MESSAGE}</th>
							</tr>
						</thead>
						<tbody>
					# START subcats #
							<tr>
								# IF subcats.U_FORUM_URL #
								<td class="forum-announce-topic">
									<i class="fa fa-globe fa-2x"></i>
								</td>
								<td class="forum-topic" colspan="4">
									<a href="{subcats.U_FORUM_URL}" title="{subcats.NAME}">{subcats.NAME}</a>
									<span class="help-block">{subcats.DESC}</span>
								</td>
								# ELSE #
								<td class="forum-announce-topic">
									<i class="fa # IF subcats.C_BLINK #blink # ENDIF #{subcats.IMG_ANNOUNCE}"></i>
								</td>
								<td class="forum-topic">
									<a href="forum{subcats.U_FORUM_VARS}" title="{subcats.NAME}">{subcats.NAME}</a>
									<span class="help-block">{subcats.DESC}</span>
									<span class="help-block">{subcats.SUBFORUMS}</span>
								</td>
								<td class="forum-subject-nb">
									{subcats.NBR_TOPIC}
								</td>
								<td class="forum-message-nb">
									{subcats.NBR_MSG}
								</td>
								<td class="forum-last-topic">
									{subcats.U_LAST_TOPIC}
								</td>
								# ENDIF #
							</tr>
				# END subcats #
						</tbody>
						<tfoot>
							<tr>
								<td colspan="6">
								</td>
							</tr>
						</tfoot>
					</table>
				</div>
			</article>
		# ENDIF #

		<article itemscope="itemscope" itemtype="http://schema.org/Creativework" id="article-forum-forum">
			<header>
					<div class="pull-right text-right">
						<div class="btn-group btn-group-xs">
							<span class="btn btn-warning">
								<a href="${relative_url(SyndicationUrlBuilder::rss('forum',IDCAT))}" class="fa fa-syndication" title="${LangLoader::get_message('syndication', 'common')}"></a>
							</span>
							# IF IDCAT #
							<span class="btn btn-info">
								<a href="unread.php?cat={IDCAT}" title="{L_DISPLAY_UNREAD_MSG}"><i class="fa fa-notread"></i></a>
							</span>
							# ENDIF #
						</div>
						# IF C_PAGINATION # # INCLUDE PAGINATION # # ENDIF #
					</div>
				<h2>
					{U_FORUM_CAT}
					# IF C_POST_NEW_SUBJECT #
					<a href="{U_POST_NEW_SUBJECT}" class="btn btn-info btn-sm">{L_POST_NEW_SUBJECT}</a>
					# ENDIF #
				</h2>
				<div class="clearfix"></div>
			</header>
			<div class="table-responsive">
				<table class="table table-bordered table-striped">
					<thead>
						<tr>
							<th class="forum-announce-topic"><i class="fa fa-eye"></i></th>
							<th class="forum-fixed-topic"><i class="fa fa-check"></i></th>
							<th class="forum-topic">{L_TOPIC}</th>
							<th class="forum-author">{L_AUTHOR}</th>
							<th class="forum-message-nb">{L_ANSWERS}</th>
							<th class="forum-view">{L_VIEW}</th>
							<th class="forum-last-topic">{L_LAST_MESSAGE}</th>
						</tr>
					</thead>
					<tbody>
					# IF C_NO_MSG_NOT_READ #
					<tr>
						<td colspan="7">
							<strong>{L_MSG_NOT_READ}</strong>
						</td>
					</tr>
					# ENDIF #

					# START topics #
					<tr>
						# IF C_MASS_MODO_CHECK #
						<td class="forum-mass-modo">
							<input type="checkbox" name="ck{topics.ID}">
						</td>
						# ENDIF #
						<td class="forum-announce-topic">
							# IF NOT topics.C_HOT_TOPIC #
							<i class="fa {topics.IMG_ANNOUNCE}"></i>
							# ELSE #
							<i class="fa # IF topics.C_BLINK #blink # ENDIF #{topics.IMG_ANNOUNCE}-hot"></i>
							# ENDIF #
						</td>
						<td class="forum-fixed-topic">
							# IF topics.C_DISPLAY_MSG #<i class="fa fa-msg-display"></i># ENDIF #
							# IF topics.C_IMG_POLL #<i class="fa fa-tasks" title="{L_POLL}"></i># ENDIF #
							# IF topics.C_IMG_TRACK #<i class="fa fa-msg-track"></i># ENDIF #
						</td>
						<td class="forum-topic">
							# IF topics.C_PAGINATION #<span class="pagin-forum"># INCLUDE topics.PAGINATION #</span># ENDIF #
							{topics.ANCRE} <strong>{topics.TYPE}</strong> <a href="topic{topics.U_TOPIC_VARS}" title="{topics.TITLE}">{topics.L_DISPLAY_MSG} {topics.TITLE}</a>
							<br />
							<small>{topics.DESC}</small>
						</td>
						<td class="forum-author">
							{topics.AUTHOR}
						</td>
						<td class="forum-message-nb">
							{topics.MSG}
						</td>
						<td class="forum-view">
							{topics.VUS}
						</td>
						<td class="forum-last-topic">
							<a href={topics.LAST_MSG_URL} title="{topics.TITLE}"><i class="fa fa-hand-o-right"></i></a> ${LangLoader::get_message('on', 'main')} {topics.LAST_MSG_DATE_FULL}
							<br />
							${LangLoader::get_message('by', 'main')}
							# IF topics.C_LAST_MSG_GUEST #
							<a href="{topics.LAST_MSG_USER_PROFIL}" class="small{topics.LAST_MSG_USER_LEVEL}"{topics.LAST_MSG_USER_GROUP_COLOR} >{topics.LAST_MSG_USER_LOGIN}</a>
							# ELSE #
								<em>${LangLoader::get_message('guest', 'main')}</em>
							# ENDIF #
						</td>
					</tr>
					# END topics #

					# IF C_NO_TOPICS #
					<tr>
						<td colspan="7">
							<strong>{L_NO_TOPICS}</strong>
						</td>
					</tr>
					# ENDIF #
					</tbody>
					<tfoot>
						<tr>
							<th colspan="7">
								<div class="pull-left">
									<a href="${relative_url(SyndicationUrlBuilder::rss('forum',IDCAT))}" class="fa fa-syndication" title="${LangLoader::get_message('syndication', 'common')}"></a> {U_FORUM_CAT}
									# IF C_POST_NEW_SUBJECT #
										 <a href="{U_POST_NEW_SUBJECT}" class="btn btn-info btn-sm" title="{L_POST_NEW_SUBJECT}">{L_POST_NEW_SUBJECT}</a>
									# ENDIF #
								</div>
								# IF C_PAGINATION #<span class="pull-right"># INCLUDE PAGINATION #</span># ENDIF #
							</th>
						</tr>
					</tfoot>
				</table>
			</div>
		</article>

		# INCLUDE forum_bottom #
