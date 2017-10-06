		
		# INCLUDE forum_top #

		# START error_auth_write #
		<div class="notice">
			{error_auth_write.L_ERROR_AUTH_WRITE}
		</div>
		# END error_auth_write #

		# IF C_FORUM_SUB_CATS #
			<article itemscope="itemscope" itemtype="http://schema.org/Creativework" id="article-forum-subforum">
				<header>
					<div class="head-top">					
						<div class="head-top-l"></div>		
						<div class="head-top-r"></div>					
						<h2>
							<a href="${relative_url(SyndicationUrlBuilder::rss('forum',IDCAT))}" class="fa fa-syndication" title="${LangLoader::get_message('syndication', 'common')}"></a>
							&nbsp;&nbsp;<strong>{L_SUBFORUMS}</strong>
						</h2>
					</div>
				</header>
				<div class="content">
					<table id="table" class="forum-table">
						<thead>
							<tr>
								<th class="forum-announce-topic"><i class="fa fa-eye"></i></th>
								<th class="forum-topic">{L_FORUM}</th>
								<th class="forum-subject-nb">{L_TOPIC}</th>
								<th class="forum-message-nb">{L_MESSAGE}</th>
								<th class="forum-last-topic">{L_LAST_MESSAGE}</th>
							</tr>
						</thead>
						<tfoot>
							<tr>
								<th colspan="6">
								</th>
							</tr>
						</tfoot>
						<tbody>
					# START subcats #
							<tr>
								# IF subcats.U_FORUM_URL #
								<td class="forum-announce-topic">
									<i class="fa fa-globe fa-2x"></i>
								</td>
								<td class="forum-topic" colspan="4">
									<a href="{subcats.U_FORUM_URL}" title="{subcats.NAME}">{subcats.NAME}</a>
									<br />
									<span class="smaller">{subcats.DESC}</span>
								</td>
								# ELSE #
								<td class="forum-announce-topic">
									<i class="fa # IF subcats.C_BLINK #blink # ENDIF #{subcats.IMG_ANNOUNCE}"></i>
								</td>
								<td class="forum-topic">
									<a href="forum{subcats.U_FORUM_VARS}" title="{subcats.NAME}">{subcats.NAME}</a>
									<br />
									<span class="smaller">{subcats.DESC}</span>
									<span class="smaller">{subcats.SUBFORUMS}</span>
								</td>
								<td class="forum-subject-nb color">
									{subcats.NBR_TOPIC}
								</td>
								<td class="forum-message-nb color">
									{subcats.NBR_MSG}
								</td>
								<td class="forum-last-topic">
									# IF subcats.C_LAST_TOPIC_MSG #
										<a href="{subcats.U_LAST_TOPIC}" class="last-topic-title small">{subcats.LAST_TOPIC_TITLE}</a><br />
										<a href="{subcats.U_LAST_MSG}" title="" class="last-topic-date"><i class="fa fa-hand-o-right"></i></a> ${LangLoader::get_message('on', 'main')} {subcats.LAST_MSG_DATE_FULL}<br />
										${LangLoader::get_message('by', 'main')}
										# IF subcats.C_LAST_MSG_GUEST #
										<a href="{subcats.U_LAST_MSG_USER_PROFIL}" class="last-topic-user small {subcats.LAST_MSG_USER_LEVEL}" {subcats.LAST_MSG_USER_GROUP_COLOR}>{subcats.LAST_MSG_USER_LOGIN}</a>
										# ELSE #
										${LangLoader::get_message('guest', 'main')}
										# ENDIF #
									# ELSE #
										<br /><em>{subcats.L_NO_MSG}</em><br /><br />
									# ENDIF #
								</td>
								# ENDIF #
							</tr>
				# END subcats #
						</tbody>
					</table>
				</div>
			</article>
		# ENDIF #

		<article itemscope="itemscope" itemtype="http://schema.org/Creativework" id="article-forum-forum">
			# IF C_POST_NEW_SUBJECT #
				<div class="post-new-top">
					<a href="{U_POST_NEW_SUBJECT}" class="button">{L_POST_NEW_SUBJECT}</a>
				</div>	
			# ENDIF #
			<header>
				<div class="head-top">					
					<div class="head-top-l"></div>		
					<div class="head-top-r"></div>	
					<h2>
						<a href="${relative_url(SyndicationUrlBuilder::rss('forum',IDCAT))}" class="fa fa-syndication" title="${LangLoader::get_message('syndication', 'common')}"></a> {U_FORUM_CAT}
						<span class="float-right">
							# IF IDCAT #
							<a href="unread.php?cat={IDCAT}" title="{L_DISPLAY_UNREAD_MSG}"><i class="fa fa-notread"></i></a>
							# ENDIF #
							# IF C_PAGINATION # # INCLUDE PAGINATION # # ENDIF #
						</span>
					</h2>
				</div>
			</header>
			<div class="content">
				<table id="table2" class="forum-table">
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
					<tfoot>
						<tr>
							<th colspan="7">
								<div class="float-left">
									<a href="${relative_url(SyndicationUrlBuilder::rss('forum',IDCAT))}" class="fa fa-syndication" title="${LangLoader::get_message('syndication', 'common')}"></a> &bull; {U_FORUM_CAT}
								</div>
								# IF C_PAGINATION #<span class="float-right"># INCLUDE PAGINATION #</span># ENDIF #
							</th>
						</tr>
					</tfoot>
					

					
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
							<span class="smaller">{topics.DESC}</span>
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
							<span class="last-topic-title"><a href={topics.LAST_MSG_URL} title="{topics.TITLE}"><i class="fa fa-hand-o-right"></i></a></span>
							<span class="last-topic-date">${LangLoader::get_message('on', 'main')} {topics.LAST_MSG_DATE_FULL}</span><br />
							<span class="last-topic-user"> ${LangLoader::get_message('by', 'main')}
							# IF topics.C_LAST_MSG_GUEST #
							<a href="{topics.LAST_MSG_USER_PROFIL}" class="small{topics.LAST_MSG_USER_LEVEL}"{topics.LAST_MSG_USER_GROUP_COLOR}>{topics.LAST_MSG_USER_LOGIN}</a>
							# ELSE #
								<em>${LangLoader::get_message('guest', 'main')}</em>
							# ENDIF #
							</span>
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
				</table>
			</div>
		</article>

		# IF C_POST_NEW_SUBJECT #
		<div class="post-new-bottom">
			<a href="{U_POST_NEW_SUBJECT}" class="button">{L_POST_NEW_SUBJECT}</a>
		</div>
		# ENDIF #


		# INCLUDE forum_bottom #
