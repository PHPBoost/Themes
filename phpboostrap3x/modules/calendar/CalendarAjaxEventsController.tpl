			<section id="module-calendar-events" class="row">
				<header class="col-sm-12">
					<h2 class="center"># IF C_PENDING_PAGE #{@calendar.pending}# ELSE #{@calendar.titles.events_of} {DATE}# ENDIF #</h2>
				</header>

				# IF C_EVENTS #
					# START event #
					<article itemscope="itemscope" itemtype="http://schema.org/Event" id="article-calendar-{event.ID}" class="col-sm-12 article-several# IF event.C_NEW_CONTENT # new-content# ENDIF #">
						<header>
							<div class="pull-right text-right">
								<div class="btn-group btn-group-xs">
									# IF C_COMMENTS_ENABLED #<a class="btn btn-info" href="{event.U_COMMENTS}"><i class="fa fa-comments-o"></i> {event.L_COMMENTS}</a># ENDIF #
									# IF event.C_EDIT #
										<a class="btn btn-info" href="{event.U_EDIT}" title="${LangLoader::get_message('edit', 'common')}"><i class="fa fa-edit"></i></a>
									# ENDIF #
									# IF event.C_DELETE #
										<a class="btn btn-danger" href="{event.U_DELETE}" title="${LangLoader::get_message('delete', 'common')}"# IF NOT event.C_BELONGS_TO_A_SERIE # data-confirmation="delete-element"# ENDIF #><i class="fa fa-delete"></i></a>
									# ENDIF #
									<a class="btn btn-warning" href="{event.U_SYNDICATION}" title="${LangLoader::get_message('syndication', 'common')}"><i class="fa fa-syndication"></i></a>
								</div>

							</div>
							<h3>
								<a href="{event.U_LINK}"><span itemprop="name">{event.TITLE}</span></a>
							</h3>

							<a itemprop="url" href="{event.U_LINK}"></a>
						</header>
						<div class="row" itemscope="itemscope" itemtype="http://schema.org/CreativeWork">
							<meta itemprop="about" content="{event.CATEGORY_NAME}">
							# IF C_COMMENTS_ENABLED #
							<meta itemprop="discussionUrl" content="{event.U_COMMENTS}">
							<meta itemprop="interactionCount" content="{event.NUMBER_COMMENTS} UserComments">
							# ENDIF #
							<div class="event-dates col-sm-12">
								<div class="col-sm-6 text-center bg-success">
									{@calendar.labels.start_date} : <strong><time datetime="{event.START_DATE_ISO8601}" itemprop="startDate">{event.START_DATE}</time></strong>
								</div>
								<div class="col-sm-6 text-center bg-warning">
									{@calendar.labels.end_date} : <strong><time datetime="{event.END_DATE_ISO8601}" itemprop="endDate">{event.END_DATE}</time></strong>
								</div>
							</div>

							<div class="col-sm-8">
								<ul class="list-group">
								# IF event.C_LOCATION #
									<li class="list-group-item" itemscope="itemscope" itemprop="location" itemtype="http://schema.org/Place">
										<strong>{@calendar.labels.location}</strong> :
										<span itemprop="name">{event.LOCATION}</span>
									</li>
								# ENDIF #
								# IF event.C_PARTICIPATION_ENABLED #
									# IF event.C_DISPLAY_PARTICIPANTS #
										<li class="list-group-item">
											<strong>{@calendar.labels.participants}</strong> :
											<span>
												# IF event.C_PARTICIPANTS #
													# START event.participant #
														<a href="{event.participant.U_PROFILE}" class="{event.participant.LEVEL_CLASS}" # IF event.participant.C_GROUP_COLOR # style="color:{event.participant.GROUP_COLOR}" # ENDIF #>{event.participant.DISPLAY_NAME}</a># IF NOT event.participant.C_LAST_PARTICIPANT #,# ENDIF #
													# END event.participant #
												# ELSE #
													{@calendar.labels.no_one}
												# ENDIF #
											</span>
										</li>
									# ENDIF #

								# ENDIF #
									<li class="list-group-item">
										<strong>{@calendar.labels.created_by}</strong> : # IF event.C_AUTHOR_EXIST #<a itemprop="author" href="{event.U_AUTHOR_PROFILE}" class="{event.AUTHOR_LEVEL_CLASS}" # IF event.C_AUTHOR_GROUP_COLOR # style="color:{event.AUTHOR_GROUP_COLOR}" # ENDIF #>{event.AUTHOR}</a># ELSE #{event.AUTHOR}# ENDIF #
									</li>
								</ul>
							</div>
							<div class="col-sm-4">
								# IF event.C_HAS_PICTURE #
								<img itemprop="thumbnailUrl" src="{event.PICTURE}" alt="{event.TITLE}" />
								# ELSE #
								<img itemprop="thumbnailUrl" src="{PATH_TO_ROOT}/templates/{THEME}/modules/calendar/images/default.png" alt="{event.TITLE}" />
								# ENDIF #
							</div>
						</div>
						<footer></footer>
					</article>
					# END event #
				# ELSE #
					<div class="text-center">
						# IF C_PENDING_PAGE #{@calendar.notice.no_pending_event}# ELSE #{@calendar.notice.no_current_action}# ENDIF #
					</div>
				# ENDIF #
			</section>
