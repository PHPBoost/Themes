<section id="module-news">
	<header>
		<div class="pull-right text-right">
			<div class="btn-group btn-group-xs">
				# IF IS_ADMIN #<a class="btn btn-info" href="{U_EDIT_CATEGORY}" title="${LangLoader::get_message('edit', 'common')}"><i class="fa fa-edit"></i></a># ENDIF #
				<a class="btn btn-warning" href="{U_SYNDICATION}" title="${LangLoader::get_message('syndication', 'common')}"><i class="fa fa-syndication"></i></a>
			</div>

		</div>
		<h1>
			{@news}# IF NOT C_ROOT_CATEGORY # - {CATEGORY_NAME}# ENDIF #
		</h1>
	</header>
	<div class="row">
		# IF NOT C_VISIBLE #
			# INCLUDE NOT_VISIBLE_MESSAGE #
		# ENDIF #
		<article itemscope="itemscope" itemtype="http://schema.org/CreativeWork" id="article-news-{ID}" class="col-sm-12# IF C_NEW_CONTENT # new-content# ENDIF #">
			<header>
				<div class="pull-right text-right">
					<div class="btn-group btn-group-xs">
						# IF C_EDIT #
							<a class="btn btn-info" href="{U_EDIT}" title="${LangLoader::get_message('edit', 'common')}"><i class="fa fa-edit"></i></a>
						# ENDIF #
						# IF C_DELETE #
							<a class="btn btn-danger" href="{U_DELETE}" title="${LangLoader::get_message('delete', 'common')}" data-confirmation="delete-element"><i class="fa fa-delete"></i></a>
						# ENDIF #
					</div>

				</div>
				<h2>
					<span itemprop="name">{NAME}</span>
				</h2>

				<div class="well well-sm">
					# IF C_AUTHOR_DISPLAYED #
						${LangLoader::get_message('by', 'common')}
						# IF C_AUTHOR_CUSTOM_NAME #
							{AUTHOR_CUSTOM_NAME}
						# ELSE #
							# IF C_AUTHOR_EXIST #<a itemprop="author" rel="author" class="small {USER_LEVEL_CLASS}" href="{U_AUTHOR_PROFILE}" # IF C_USER_GROUP_COLOR # style="color:{USER_GROUP_COLOR}" # ENDIF #>{PSEUDO}</a># ELSE #{PSEUDO}# ENDIF #,
						# ENDIF #
					# ENDIF #
					${TextHelper::lcfirst(LangLoader::get_message('the', 'common'))} <time datetime="# IF NOT C_DIFFERED #{DATE_ISO8601}# ELSE #{DIFFERED_START_DATE_ISO8601}# ENDIF #" itemprop="datePublished"># IF NOT C_DIFFERED #{DATE}# ELSE #{DIFFERED_START_DATE}# ENDIF #</time>
					${TextHelper::lcfirst(LangLoader::get_message('in', 'common'))} <a itemprop="about" href="{U_CATEGORY}">{CATEGORY_NAME}</a>
					# IF C_COMMENTS_ENABLED #- # IF C_COMMENTS # {NUMBER_COMMENTS} # ENDIF # {L_COMMENTS}# ENDIF #
					# IF C_NB_VIEW_ENABLED #- <span title="{NUMBER_VIEW} {@news.view}"><i class="fa fa-eye"></i> {NUMBER_VIEW}</span># ENDIF #
				</div>

				<meta itemprop="url" content="{U_LINK}">
				<meta itemprop="description" content="${escape(DESCRIPTION)}" />
				# IF C_COMMENTS_ENABLED #
				<meta itemprop="discussionUrl" content="{U_COMMENTS}">
				<meta itemprop="interactionCount" content="{NUMBER_COMMENTS} UserComments">
				# ENDIF #

			</header>
			# IF C_PICTURE #
			<div class="col-sm-4 pull-right">
				<a href="{U_PICTURE}" data-lightbox="formatter" data-rel="lightcase:collection">
					<img itemprop="thumbnailUrl" src="{U_PICTURE}" alt="{NAME}" title="{NAME}" class="" />
					<p class="caption text-center">{NAME}</p>
				</a>

			</div>
			# ENDIF #

			<div itemprop="text">{CONTENTS}</div>

			<aside>
				# IF C_SOURCES #
				<div id="news-sources-container">
					<span class="news-sources-title"><i class="fa fa-map-signs"></i> ${LangLoader::get_message('form.sources', 'common')}</span> :
					# START sources #
					<a itemprop="isBasedOnUrl" href="{sources.URL}" class="label label-info">{sources.NAME}</a># IF sources.C_SEPARATOR # # ENDIF #
					# END sources #
				</div>
				# ENDIF #

				# IF C_KEYWORDS #
				<div id="news-tags-container">
					<span class="news-tags-title"><i class="fa fa-tags"></i> ${LangLoader::get_message('form.keywords', 'common')}</span> :
						# START keywords #
							<a itemprop="keywords" rel="tag" href="{keywords.URL}" class="badge">{keywords.NAME}</a># IF keywords.C_SEPARATOR # # ENDIF #
						# END keywords #
				</div>
				# ENDIF #

				# IF C_SUGGESTED_NEWS #
					<div id="news-suggested-container">
						<div class="panel panel-info">
							<div class="panel-heading">${LangLoader::get_message('suggestions', 'common')}</div>
							<ul class="list-group">
								# START suggested #
								<li class="list-group-item">
									<a href="{suggested.URL}" class="news-suggested-item">{suggested.NAME}</a>
								</li>
								# END suggested #
							</ul>
						</div>
					</div>
				# ENDIF #

				<hr />

				# IF C_NEWS_NAVIGATION_LINKS #
				<ul class="pager">
					# IF C_PREVIOUS_NEWS #
					<li class="previous">
						<a href="{U_PREVIOUS_NEWS}"><i class="fa fa-arrow-circle-left"></i> {PREVIOUS_NEWS}</a>
					</li>
					# ENDIF #
					# IF C_NEXT_NEWS #
					<li class="next">
						<a href="{U_NEXT_NEWS}">{NEXT_NEWS} <i class="fa fa-arrow-circle-right"></i></a>
					</li>
					# ENDIF #
					<div class="clearfix"></div>
				</ul>
				# ENDIF #

				# INCLUDE COMMENTS #
			</aside>
			<footer></footer>
		</article>
	</div>
	<footer></footer>
</section>
