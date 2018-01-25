<section id="module-calendar" class="row">
	<header class="col-md-12">
		<div class="pull-right text-right">
			<div class="btn-group btn-group-xs">
				# IF IS_ADMIN #<a class="btn btn-info" href="{U_EDIT_CATEGORY}" title="${LangLoader::get_message('edit', 'common')}"><i class="fa fa-edit"></i></a># ENDIF #
				<a class="btn btn-warning" href="{U_SYNDICATION}" title="${LangLoader::get_message('syndication', 'common')}"><i class="fa fa-syndication"></i></a>
			</div>

		</div>
		<h1>
			{@module_title}# IF NOT C_ROOT_CATEGORY # - {CATEGORY_NAME}# ENDIF #
		</h1>
	</header>
	<div class="col-md-12">
		# IF NOT C_APPROVED #
			# INCLUDE NOT_VISIBLE_MESSAGE #
		# ENDIF #
		<article itemscope="itemscope" itemtype="http://schema.org/Event" id="article-calendar-{ID}" class="# IF C_NEW_CONTENT # new-content# ENDIF #">
			<header>
				<div class="pull-right text-right">
					<div class="btn-group btn-group-xs">
						# IF C_EDIT #
							<a class="btn btn-info" href="{U_EDIT}" title="${LangLoader::get_message('edit', 'common')}"><i class="fa fa-edit"></i></a>
						# ENDIF #
						# IF C_DELETE #
							<a class="btn btn-danger" href="{U_DELETE}" title="${LangLoader::get_message('delete', 'common')}"# IF NOT C_BELONGS_TO_A_SERIE # data-confirmation="delete-element"# ENDIF #><i class="fa fa-delete"></i></a>
						# ENDIF #
					</div>

				</div>
				<h2>
					<span itemprop="name">{TITLE}</span>
				</h2>
				<a itemprop="url" href="{U_LINK}"></a>
			</header>
			<div class="event-dates">
				<div class="col-md-6 bg-success text-center">
					{@calendar.labels.start_date} : <strong><time datetime="{START_DATE_ISO8601}" itemprop="startDate">{START_DATE}</time></strong>
				</div>
				<div class="col-md-6 bg-warning text-center">
					{@calendar.labels.end_date} : <strong><time datetime="{END_DATE_ISO8601}" itemprop="endDate">{END_DATE}</time></strong>
				</div>
			</div>
			<div itemscope="itemscope" itemtype="http://schema.org/CreativeWork">
				<meta itemprop="about" content="{CATEGORY_NAME}">
				# IF C_COMMENTS_ENABLED #
				<meta itemprop="discussionUrl" content="{U_COMMENTS}">
				<meta itemprop="interactionCount" content="{NUMBER_COMMENTS} UserComments">
				# ENDIF #

				# IF C_HAS_PICTURE #
				<div class="pull-right col-md-4">
					<a href="{PICTURE}" title="{TITLE}" data-lightbox="formatter">
						<img itemprop="thumbnailUrl" src="{PICTURE}" alt="{TITLE}" />
					</a>
				</div>
				# ENDIF #
				<div class="content-text" itemprop="text">{CONTENTS}</div>
				<ul class="list-group">
					# IF C_LOCATION #
						<li class="list-group-item" itemprop="location" itemscope itemtype="http://schema.org/Place">
							<strong class="text-strong">{@calendar.labels.location}</strong> :
							<span itemprop="name">{LOCATION}</span>
						</li>
					# ENDIF #

					# IF C_PARTICIPATION_ENABLED #
						# IF C_DISPLAY_PARTICIPANTS #
						<li class="list-group-item">
							<strong class="text-strong">{@calendar.labels.participants}</strong> :
							<span>
								# IF C_PARTICIPANTS #
									# START participant #
										<a href="{participant.U_PROFILE}" class="{participant.LEVEL_CLASS}" # IF participant.C_GROUP_COLOR # style="color:{participant.GROUP_COLOR}" # ENDIF #>{participant.DISPLAY_NAME}</a># IF NOT participant.C_LAST_PARTICIPANT #,# ENDIF #
									# END participant #
								# ELSE #
									{@calendar.labels.no_one}
								# ENDIF #
							</span>
						</li>
						# ENDIF #
						# IF C_PARTICIPATE #
						<li class="list-group-item">
							<a href="{U_SUSCRIBE}" class="btn btn-success">{@calendar.labels.suscribe}</a>
							# IF C_MISSING_PARTICIPANTS #
							<li class="list-group-item bg-warning">
								<em class="small">{L_MISSING_PARTICIPANTS}</em>
							</li>
							# ENDIF #
							# IF C_REGISTRATION_DAYS_LEFT #
							<li class="list-group-item bg-warning">
								<em class="small">{L_REGISTRATION_DAYS_LEFT}</em>
							</li>
							# ENDIF #
						</li>
						# ENDIF #
						# IF C_IS_PARTICIPANT #
							<li class="list-group-item">
								<a href="{U_UNSUSCRIBE}" class="btn btn-danger">{@calendar.labels.unsuscribe}</a>
							</li>
						# ELSE #
							# IF C_MAX_PARTICIPANTS_REACHED #
							<li class="list-group-item">
								<em class="small">{@calendar.labels.max_participants_reached}</em>
							</li>
							# ENDIF #
						# ENDIF #
						# IF C_REGISTRATION_CLOSED #
							<li class="list-group-item">
								<em class="small">{@calendar.labels.registration_closed}</em># ENDIF #
							</li>
						# ENDIF #
					<li class="list-group-item">
						<strong>{@calendar.labels.created_by} : </strong>
						# IF C_AUTHOR_EXIST #<a itemprop="author" href="{U_AUTHOR_PROFILE}" class="{AUTHOR_LEVEL_CLASS}" # IF C_AUTHOR_GROUP_COLOR # style="color:{AUTHOR_GROUP_COLOR}" # ENDIF #>{AUTHOR}</a># ELSE #{AUTHOR}# ENDIF #
					</li>
				</ul>
				# IF C_LOCATION_MAP #<div class="location-map">{LOCATION_MAP}</div># ENDIF #
			</div>
			<hr>
			# INCLUDE COMMENTS #
			<footer></footer>
		</article>
	</div>
	<footer></footer>
</section>
