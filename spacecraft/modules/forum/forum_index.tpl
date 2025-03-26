# INCLUDE FORUM_TOP #
<div class="cell-flex cell-row cell-tile">
	# START forums_list #
		# START forums_list.endcats #
					</ul>
				</div>
			</article>
		# END forums_list.endcats #
		# START forums_list.cats #
			<article
					itemscope="itemscope"
					itemtype="https://schema.org/Creativework"
					id="article-forum-{forums_list.cats.CATEGORY_ID}"
					class="cell has-thumbnail"
					style="background-image: linear-gradient(to bottom, rgba(var(--bgc-rgb-m), 0.8), rgba(var(--bgc-rgb-m), 0.8))# IF C_THUMBNAILS_DISPLAYED ## IF forums_list.cats.C_HAS_THUMBNAIL #, url('{forums_list.cats.U_CATEGORY_THUMBNAIL}')# ELSE #, url('{PATH_TO_ROOT}/templates/{THEME}/images/messages.webp')# ENDIF ## ENDIF #">
				<header class="cell-header">
					# IF forums_list.cats.C_HAS_CATEGORY_ICON #
						<i class="{forums_list.cats.CATEGORY_ICON}" aria-hidden="true"# IF forums_list.cats.C_HAS_CATEGORY_COLOR # style="color: {forums_list.cats.CATEGORY_COLOR}"# ENDIF #></i>
					# ENDIF #
					<h2 class="cell-name">{forums_list.cats.CATEGORY_NAME}</h2>
					<div class="controls">
						<a class="offload" href="${relative_url(SyndicationUrlBuilder::rss('forum',forums_list.cats.CATEGORY_ID))}" aria-label="{@common.syndication}"><i class="fa fa-rss warning" aria-hidden="true"></i></a>
						# IF C_DISPLAY_UNREAD_DETAILS #
							<a class="offload" href="{PATH_TO_ROOT}/forum/unread.php?cat={forums_list.cats.CATEGORY_ID}" aria-label="{@forum.unread.messages}"><i class="far fa-file-alt" aria-hidden="true"></i></a>
						# ENDIF #
					</div>
				</header>
				<div class="cell-list">
					<ul>
		# END forums_list.cats #
						# START forums_list.subcats #
							<li class="li-stretch li-stretch-large">
								<div class="forum-details">
									<a
											class="offload"
											href="# IF forums_list.subcats.U_LINK #{forums_list.subcats.U_LINK}# ELSE #{forums_list.subcats.U_CATEGORY}# ENDIF #">
										# IF forums_list.subcats.U_LINK #
											<i class="fa fa-globe" aria-hidden="true"></i>
										# ELSE #
											# IF forums_list.subcats.C_HAS_CATEGORY_ICON #
												<i class="{forums_list.subcats.CATEGORY_ICON}# IF forums_list.subcats.C_BLINK # blink# ENDIF #" aria-hidden="true"# IF forums_list.subcats.C_HAS_CATEGORY_COLOR # style="color: {forums_list.subcats.CATEGORY_COLOR}"# ENDIF #></i>
											# ELSE #
												<i class="fa # IF forums_list.subcats.C_BLINK #blink # ENDIF #{forums_list.subcats.TOPIC_ICON}" aria-hidden="true"></i>
											# ENDIF #
										# ENDIF #
										<h5>
											{forums_list.subcats.CATEGORY_NAME}
										</h5>
									</a>
									<span class="small d-block hidden-small-screens">{forums_list.subcats.DESCRIPTION}</span>
									# IF forums_list.subcats.C_SUBFORUMS #<span class="small d-block hidden-small-screens"><span class="notice">{@forum.sub.forums}:</span> {forums_list.subcats.SUBFORUMS}</span># ENDIF #
								</div>
								<div class="forum-details small">
									# IF forums_list.subcats.U_LINK #
										<a class="offload" href="{forums_list.subcats.U_LINK}" target="_blanc" rel="noopener noreferrer" aria-label="{@theme.link.name}">
											<i class="fa fa-share-square" aria-hidden="true"></i>
										</a>
									# ELSE #
										<div class="forum-detail" aria-label="# IF forums_list.subcats.C_LAST_TOPIC_MSG #{forums_list.subcats.LAST_TOPIC_TITLE}# ELSE #{@forum.last.messages}# ENDIF #">
											<i class="fa fa-fw fa-clock"></i>
											# IF forums_list.subcats.C_LAST_TOPIC_MSG #
												<a class="offload" href="{forums_list.subcats.U_LAST_MESSAGE}">{forums_list.subcats.LAST_MESSAGE_DATE_AGO}</a>
											# ELSE #
												{@common.none}
											# ENDIF #
										</div>
										<div class="forum-detail" aria-label="{@forum.topics.number}">
											<span class="stacked">
												<i class="far # IF forums_list.subcats.C_BLINK #success # ENDIF #fa-file" aria-hidden="true"></i>
												<span class="stack-event stack-circle stack-top-right bgc question">{forums_list.subcats.TOPICS_NUMBER}</span>
											</span>
										</div>
										<div class="forum-detail" aria-label="{@forum.messages.number}">
											<span class="stacked">
												<i class="fa # IF forums_list.subcats.C_BLINK #success # ENDIF #fa-comments" aria-hidden="true"></i>
												<span class="stack-event stack-circle stack-top-right bgc question">{forums_list.subcats.MESSAGES_NUMBER}</span>
											</span>
										</div>
									# ENDIF #
								</div>
							</li>
						# END forums_list.subcats #
# END forums_list #
	</div>

# INCLUDE FORUM_BOTTOM #
