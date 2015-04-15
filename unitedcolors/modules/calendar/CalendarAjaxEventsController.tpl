			<section class="event_container">
				<header class="color-02">
					<h2 class="center"># IF C_PENDING_PAGE #{@calendar.pending}# ELSE #{@calendar.titles.events_of} {DATE}# ENDIF #</h2>
				</header>
				
				# IF C_EVENTS #
					# START event #
					<article itemscope="itemscope" itemtype="http://schema.org/Event">
						<header>
							<h2>
								<a href="{event.U_SYNDICATION}" class="fa fa-syndication" title="${LangLoader::get_message('syndication', 'main')}"></a>
								<a href="{event.U_LINK}"><span itemprop="name">{event.TITLE}</span></a>
								<span class="actions">
									# IF C_COMMENTS_ENABLED #<a href="{event.U_COMMENTS}"><i class="fa fa-comments-o"></i> {event.L_COMMENTS}</a># ENDIF #
									# IF event.C_EDIT #
										<a href="{event.U_EDIT}" title="${LangLoader::get_message('edit', 'main')}" class="fa fa-edit"></a>
									# ENDIF #
									# IF event.C_DELETE #
										<a href="{event.U_DELETE}" title="${LangLoader::get_message('delete', 'main')}" class="fa fa-delete"# IF NOT event.C_BELONGS_TO_A_SERIE # data-confirmation="delete-element"# ENDIF #></a>
									# ENDIF #
								</span>
							</h2>
							
							<meta itemprop="url" content="{event.U_LINK}">
							<div itemscope="itemscope" itemtype="http://schema.org/CreativeWork">
								<meta itemprop="about" content="{event.CATEGORY_NAME}">
								<meta itemprop="discussionUrl" content="{event.U_COMMENTS}">
								<meta itemprop="interactionCount" content="{event.NUMBER_COMMENTS} UserComments">
							</div>
						</header>
						<div class="content">
							<div itemscope="itemscope" itemtype="http://schema.org/CreativeWork">
								<span itemprop="text">{event.CONTENTS}</span>
							</div>
							# IF event.C_LOCATION #
							<div class="spacer">&nbsp;</div>
							<div itemscope="itemscope" itemtype="http://schema.org/Place">
								<p itemprop="location">
									<span class="text-strong">{@calendar.labels.location}</span> : 
									<span itemprop="name">{event.LOCATION}</span>
								</p>
							</div>
							# ENDIF #
							# IF event.C_PARTICIPATION_ENABLED #
								<div class="spacer">&nbsp;</div>
								# IF event.C_DISPLAY_PARTICIPANTS #
								<div>
									<span class="text-strong">{@calendar.labels.participants}</span> :
									<span>
										# IF event.C_PARTICIPANTS #
											# START event.participant #
												<a href="{event.participant.U_PROFILE}" class="{event.participant.LEVEL_CLASS}" # IF event.participant.C_GROUP_COLOR # style="color:{event.participant.GROUP_COLOR}" # ENDIF #>{event.participant.LOGIN}</a># IF NOT event.participant.C_LAST_PARTICIPANT #,# ENDIF #
											# END event.participant #
										# ELSE #
											{@calendar.labels.no_one}
										# ENDIF #
									</span>
								</div>
								# ENDIF #
								# IF event.C_PARTICIPATE #
								<a href="{event.U_SUSCRIBE}" class="basic-button">{@calendar.labels.suscribe}</a>
									# IF event.C_MISSING_PARTICIPANTS #
									<span class="small text-italic">({event.L_MISSING_PARTICIPANTS})</span>
									# ENDIF #
									# IF event.C_REGISTRATION_DAYS_LEFT #
									<div class="spacer"></div>
									<span class="small text-italic">{event.L_REGISTRATION_DAYS_LEFT}</span>
									# ENDIF #
								# ENDIF #
								# IF event.C_IS_PARTICIPANT #
								<a href="{event.U_UNSUSCRIBE}" class="basic-button">{@calendar.labels.unsuscribe}</a>
								# ELSE #
									# IF event.C_MAX_PARTICIPANTS_REACHED #<span class="small text-italic">{@calendar.labels.max_participants_reached}</span># ENDIF #
								# ENDIF #
								# IF event.C_REGISTRATION_CLOSED #<span class="small text-italic">{@calendar.labels.registration_closed}</span># ENDIF #
							# ENDIF #
							
							<div class="spacer">&nbsp;</div>
							<div class="event-display-author" itemscope="itemscope" itemtype="http://schema.org/CreativeWork">
								{@calendar.labels.created_by} : # IF event.C_AUTHOR_EXIST #<a itemprop="author" href="{event.U_AUTHOR_PROFILE}" class="{event.AUTHOR_LEVEL_CLASS}" # IF event.C_AUTHOR_GROUP_COLOR # style="color:{event.AUTHOR_GROUP_COLOR}" # ENDIF #>{event.AUTHOR}</a># ELSE #{event.AUTHOR}# ENDIF #
							</div>
							<div class="event-display-dates">
								{@calendar.labels.start_date} : <span class="float-right"><time datetime="{event.START_DATE_ISO8601}" itemprop="startDate">{event.START_DATE}</time></span>
								<div class="spacer"></div>
								{@calendar.labels.end_date} : <span class="float-right"><time datetime="{event.END_DATE_ISO8601}" itemprop="endDate">{event.END_DATE}</time></span>
							</div>
						</div>
						<footer></footer>
					</article>
					# END event #
				# ELSE #
					<div class="center">
						# IF C_PENDING_PAGE #{@calendar.notice.no_pending_event}# ELSE #{@calendar.notice.no_current_action}# ENDIF #
					</div>
				# ENDIF #
			</section>