# IF NOT C_PENDING_ITEMS #
	# IF NOT C_MEMBER_ITEMS #
		<div class="calendar-event-day">{DATE_LABEL}</div>
		# IF C_ITEMS #
			<div class="more align-center">
				<span class="pinned notice"># IF C_SEVERAL_ITEMS #{ITEMS_NUMBER} {@calendar.items}# ELSE #{ITEMS_NUMBER} {@calendar.item}# ENDIF #</span>
			</div>
		# ENDIF #
	# ENDIF #
# ENDIF #

# IF C_ITEMS #
	# IF C_TABLE_VIEW #
		<div class="responsive-table">
			<table class="table">
				<thead>
					<tr>
						<th>{@common.title}</th>
						<th aria-label="{@common.category}">
							<i class="far fa-folder" aria-hidden="true"></i>
							<span class="hidden-large-screens">{@common.category}</span>
						</th>
						<th aria-label="{@common.author}">
							<i class="fa fa-user" aria-hidden="true"></i>
							<span class="hidden-large-screens">{@common.author}</span>
						</th>
						<th aria-label="{@calendar.dates}">
							<i class="far fa-calendar-alt" aria-hidden="true"></i>
							<span class="hidden-large-screens">{@calendar.dates}</span>
						</th>
						# IF C_CONTROLS #
							<th aria-label="{@common.moderation}">
								<i class="fa fa-cog" aria-hidden="true"></i>
								<span class="hidden-large-screens">{@common.moderation}</span>
							</th>
						# ENDIF #
					</tr>
				</thead>
				<tbody>
					# START items #
						<tr>
							<td><a class="offload" href="{items.U_ITEM}" itemprop="url">{items.TITLE}</a></td>
							<td>
								# IF NOT items.C_ROOT_CATEGORY #
									<span class="pinned-category" data-color-surround="{items.CATEGORY_COLOR}"><a class="offload" href="{items.U_CATEGORY}">{items.CATEGORY_NAME}</a></span>
								# ENDIF #
							</td>
							<td>
								# IF items.C_AUTHOR_EXISTS #
									<a itemprop="author" href="{items.U_AUTHOR_PROFILE}" class="{items.AUTHOR_LEVEL_CLASS} offload" # IF items.C_AUTHOR_GROUP_COLOR # style="color:{items.AUTHOR_GROUP_COLOR}" # ENDIF #>{items.AUTHOR}</a>
								# ELSE #
									{items.AUTHOR}
								# ENDIF #
							</td>
							<td>
								# IF items.C_DIFFERENT_DATE #{@date.from.date}# ENDIF #
								<time datetime="{items.START_DATE_ISO8601}" itemprop="startDate">{items.START_DATE}</time>
								# IF items.C_DIFFERENT_DATE #{@date.to.date} <time datetime="{items.END_DATE_ISO8601}" itemprop="endDate">{items.END_DATE}</time># ENDIF #
							</td>
							# IF items.C_CONTROLS #
								<td>
									# IF items.C_EDIT #
										<a class="offload" href="{items.U_EDIT}" aria-label="{@common.edit}"><i class="far fa-fw fa-edit" aria-hidden="true"></i></a>
									# ENDIF #
									# IF items.C_DELETE #
										<a href="{items.U_DELETE}" aria-label="{@common.delete}"# IF NOT items.C_BELONGS_TO_A_SERIE # data-confirmation="delete-element"# ENDIF #><i class="far fa-fw fa-trash-alt" aria-hidden="true"></i></a>
									# ENDIF #
								</td>
							# ENDIF #
						</tr>
					# END items #
				</tbody>
			</table>
		</div>
	# ELSE #
		<div class="cell-layout # IF C_GRID_VIEW #cell-flex cell-columns-{ITEMS_PER_ROW}# ELSE #cell-row# ENDIF #">
			# START items #
				<article itemscope="itemscope" itemtype="https://schema.org/Event" id="calendar-item-{items.ID}" class="calendar-item several-items category-{items.CATEGORY_ID} cell# IF items.C_NEW_CONTENT # new-content# ENDIF #">
					<div class="cell-primary">
						# IF NOT items.C_ROOT_CATEGORY #
							<div class="item-category pinned-category">
								<span class="pinned-category" data-color-surround="{items.CATEGORY_COLOR}"><a class="offload" href="{items.U_CATEGORY}">{items.CATEGORY_NAME}</a></span>
							</div>
						# ENDIF #
						<div class="cell-thumbnail">
							# IF items.C_HAS_THUMBNAIL #
								<img src="{items.U_THUMBNAIL}" alt="{items.TITLE}" />
							# ELSE #
								<img src="{PATH_TO_ROOT}/templates/{THEME}/images/no-thumbnail.png" alt="{items.TITLE}" itemprop="image" />
							# ENDIF #
							<div class="cell-thumbnail-caption">
								<div class="cell-list">
									<ul>
										<li>
											<a class="offload" href="{items.U_ITEM}"><i class="fa fa-share" aria-hidden="true"></i> {@common.see.details}</a>
										</li>
										# IF C_COMMENTS_ENABLED #
											<li><a href="{items.U_COMMENTS}"><i class="fa fa-comments" aria-hidden="true"></i> {items.L_COMMENTS}</a></li>
										# ENDIF #
										# IF items.C_CONTROLS #
											<li class="li-stretch">
												# IF items.C_EDIT #
													<a class="offload" href="{items.U_EDIT}" aria-label="{@common.edit}"><i class="far fa-fw fa-edit" aria-hidden="true"></i></a>
												# ENDIF #
												# IF items.C_DELETE #
													<a href="{items.U_DELETE}" aria-label="{@common.delete}"# IF NOT items.C_BELONGS_TO_A_SERIE # data-confirmation="delete-element"# ENDIF #><i class="far fa-fw fa-trash-alt" aria-hidden="true"></i></a>
												# ENDIF #
											</li>
										# ENDIF #
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="cell-secondary">
						<div class="cell-body">
							<div class="cell-infos">
								<div class="more">
									# IF items.C_AUTHOR_EXIST #
										<i class="fa fa-user"></i> <a itemprop="author" href="{items.U_AUTHOR_PROFILE}" class="pinned {items.AUTHOR_LEVEL_CLASS} offload" # IF items.C_AUTHOR_GROUP_COLOR # style="color:{items.AUTHOR_GROUP_COLOR}" # ENDIF #>{items.AUTHOR}</a>
									# ELSE #
										<span class="pinned notice"><i class="fa fa-user"></i> {items.AUTHOR}</span>
									# ENDIF #
								</div>
								<div class="more">
									# IF items.C_LOCATION #
										<span class="pinned" itemscope="itemscope" itemtype="https://schema.org/Place">
											<i class="fa fa-fw fa-map-marker-alt"></i>
											<span class="text-strong" itemprop="name">{items.LOCATION}</span>
										</span>
									# ENDIF #
								</div>
							</div>
						</div>
						<header class="cell-header">
							<h2 class="cell-name" itemprop="name">
								<a class="offload" href="{items.U_ITEM}" itemprop="url">{items.TITLE}</a>
							</h2>
							<a class="offload" href="{items.U_SYNDICATION}" aria-label="{@common.syndication}"><i class="fa fa-rss warning" aria-hidden="true"></i></a>
						</header>
						<div class="cell-body# IF items.C_CANCELLED # error# ENDIF #">
							<div class="cell-content" itemscope="itemscope" itemtype="https://schema.org/CreativeWork">
								# IF items.C_CANCELLED #
								<span class="message-helper bgc error">{@calendar.cancelled.item}</span>
								# ENDIF #

								<div class="more">
									<span class="pinned" aria-label="{@calendar.dates}">
										<i class="far fa-fw fa-calendar"></i>
										<time class="text-strong" datetime="{items.START_DATE_ISO8601}" itemprop="startDate">{items.START_DATE}</time>
										# IF items.C_DIFFERENT_DATE #- <time class="text-strong" datetime="{items.END_DATE_ISO8601}" itemprop="endDate">{items.END_DATE}</time># ENDIF #
									</span>
									# IF NOT items.C_ROOT_CATEGORY #<span class="pinned-category" data-color-surround="{items.CATEGORY_COLOR}"><a class="offload" href="{items.U_CATEGORY}">{items.CATEGORY_NAME}</a></span># ENDIF #
									# IF items.C_PARTICIPATION_ENABLED #
										# IF items.C_DISPLAY_PARTICIPANTS #
											<span class="pinned">
												<i class="fa fa-fw fa-users"></i>
												<span class="text-strong">
													# IF items.C_PARTICIPANTS #
														# START items.participant #
															<a href="{items.participant.U_PROFILE}" class="{items.participant.LEVEL_CLASS} offload" # IF items.participant.C_GROUP_COLOR # style="color:{items.participant.GROUP_COLOR}" # ENDIF #>{items.participant.DISPLAY_NAME}</a># IF NOT items.participant.C_LAST_PARTICIPANT #,# ENDIF #
														# END items.participant #
													# ELSE #
														{@calendar.no.one}
													# ENDIF #
												</span>
											</span>
										# ENDIF #
										# IF items.C_PARTICIPATE #
											<a href="{items.U_SUSCRIBE}" class="button submit small offload">{@calendar.suscribe}</a>
											# IF items.C_MISSING_PARTICIPANTS #
												<span class="small text-italic">({items.L_MISSING_PARTICIPANTS})</span>
											# ENDIF #
											# IF items.C_REGISTRATION_DAYS_LEFT #
												<span class="small text-italic">{items.L_REGISTRATION_DAYS_LEFT}</span>
											# ENDIF #
										# ENDIF #
										# IF items.C_IS_PARTICIPANT #
											# IF items.C_UNSUBSCRIBE #
												<a href="{items.U_UNSUSCRIBE}" class="button alt-button offload">{@calendar.unsuscribe}</a>
											# ENDIF #
										# ELSE #
											# IF items.C_MAX_PARTICIPANTS_REACHED #<span class="small text-italic">{@calendar.max.participants.reached}</span># ENDIF #
										# ENDIF #
										# IF items.C_REGISTRATION_CLOSED #<span class="small text-italic">{@calendar.registration.closed}</span># ENDIF #
									# ENDIF #
								</div>

								<div itemprop="text">
									# IF items.C_FULL_ITEM_DISPLAY #
										# IF items.C_HAS_THUMBNAIL #
											<a class="offload" href="{items.U_ITEM}" class="item-thumbnail">
												<img src="{items.U_THUMBNAIL}" alt="{items.TITLE}" itemprop="image" />
											</a>
										# ENDIF #
										{items.CONTENT}
									# ELSE #
										{items.SUMMARY}
									# ENDIF #
								</div>

							</div>
						</div>
					</div>
					<footer>
						<meta itemprop="about" content="{items.CATEGORY_NAME}">
						# IF items.C_HAS_THUMBNAIL #<meta itemprop="thumbnailUrl" content="{items.U_THUMBNAIL}"># ENDIF #
						# IF C_COMMENTS_ENABLED #
							<meta itemprop="discussionUrl" content="{items.U_COMMENTS}">
							<meta itemprop="interactionCount" content="{items.COMMENTS_NUMBER} UserComments">
						# ENDIF #
					</footer>
				</article>
			# END items #
		</div>
	# ENDIF #
# ELSE #
	<div class="content">
		<div class="message-helper bgc notice">{@common.no.item.now}</div>
	</div>
# ENDIF #
