
	# INCLUDE forum_top #
		
	# START forums_list #
		# START forums_list.endcats #
					</tbody>
				</table>
			</div>
		</article>

		# END forums_list.endcats #
			
		# START forums_list.cats #
		<script>
			<!--
			jQuery('#table-{forums_list.cats.IDCAT}').basictable();
			-->
		</script>
			
		<article itemscope="itemscope" itemtype="http://schema.org/Creativework" id="article-forum-{forums_list.cats.IDCAT}">
			<div class="module-contents forum-contents">
				<table id="table-{forums_list.cats.IDCAT}" class="forum-table">
					<thead>
						<tr>
							<th class="forum-announce-topic"><a href="${relative_url(SyndicationUrlBuilder::rss('forum',forums_list.cats.IDCAT))}" class="fa fa-syndication" title="${LangLoader::get_message('syndication', 'common')}"></a></th>
							<th class="forum-topic"><a href="{forums_list.cats.U_FORUM_VARS}" class="forum-link-cat" title="{forums_list.cats.NAME}">{forums_list.cats.NAME}</a></th>
							<th class="forum-subject-nb"><i class="fa fa-announce-hot"></i></th>
							<th class="forum-last-topic"># IF C_DISPLAY_UNREAD_DETAILS #<a href="{PATH_TO_ROOT}/forum/unread.php?cat={forums_list.cats.IDCAT}" title="{L_DISPLAY_UNREAD_MSG}"><i class="fa fa-notread"></i></a># ENDIF #</th>
						</tr>
					</thead>
					<tbody>
		# END forums_list.cats #
		# START forums_list.subcats #
						<tr>
							# IF forums_list.subcats.U_FORUM_URL #
							<td class="forum-announce-topic">
								<i class="fa fa-globe"></i>
							</td>
							<td class="forum-topic" colspan="4">
								<a href="{forums_list.subcats.U_FORUM_URL}" title="{forums_list.subcats.NAME}">{forums_list.subcats.NAME}</a>
								<br />
								<span class="smaller">{forums_list.subcats.DESC}</span>
							</td>
							# ELSE #
							<td class="forum-announce-topic">
								<i class="fa # IF forums_list.subcats.C_BLINK #blink # ENDIF #{forums_list.subcats.IMG_ANNOUNCE}"></i>
							</td>
							<td class="forum-topic">
								<a href="{forums_list.subcats.U_FORUM_VARS}" title="{forums_list.subcats.NAME}">{forums_list.subcats.NAME}</a>
								<br />
								<span class="smaller">{forums_list.subcats.DESC}</span>
								<span class="small">{forums_list.subcats.SUBFORUMS}</span>
							</td>
							<td class="forum-subject-nb">
								{forums_list.subcats.NBR_TOPIC} {L_TOPIC}<br/>{forums_list.subcats.NBR_MSG} {L_MESSAGE}
							</td>
							<td class="forum-last-topic">
								{forums_list.subcats.U_LAST_TOPIC}
							</td>
							# ENDIF #
						</tr>
		# END forums_list.subcats #
		
	# END forums_list #
		
	# INCLUDE forum_bottom #	
		