<section id="module-news">
	<header>
		<div class="pull-right text-right">
			<div class="btn-group btn-group-xs">
				# IF C_CATEGORY #
					# IF IS_ADMIN #
					<a class="btn btn-info" href="{U_EDIT_CATEGORY}" title="${LangLoader::get_message('edit', 'common')}"><i class="fa fa-edit"></i></a>
					# ENDIF #
				# ENDIF #
				<a class="btn btn-warning" href="${relative_url(SyndicationUrlBuilder::rss('news', ID_CAT))}" title="${LangLoader::get_message('syndication', 'common')}"><i class="fa fa-syndication"></i></a>
			</div>

		</div>
		<h1>
			# IF C_PENDING_NEWS #
				{@news.pending}
			# ELSE #
				{@news}
				# IF NOT C_ROOT_CATEGORY # - {CATEGORY_NAME}# ENDIF #
			# ENDIF #
		</h1>
	</header>
	<div class="row grid-columns">
	# IF C_NEWS_NO_AVAILABLE #
		<div class="text-center">
			${LangLoader::get_message('no_item_now', 'common')}
		</div>
	# ELSE #
		# IF C_DISPLAY_BLOCK_TYPE #

		# START news #
			<article id="article-news-{news.ID}" class="col-sm-4# IF news.C_TOP_LIST # top-list# ENDIF ## IF news.C_NEW_CONTENT # new-content# ENDIF #" # IF C_SEVERAL_COLUMNS # style="width:calc(98% / {NUMBER_COLUMNS})" # ENDIF # itemscope="itemscope" itemtype="http://schema.org/CreativeWork">
				# IF news.C_PICTURE #
					<a href="{news.U_LINK}" title="{news.NAME}">
						<img itemprop="thumbnailUrl" src="{news.U_PICTURE}" alt="{news.NAME}" />
					</a>
				# ENDIF #
				<header>
					<div class="pull-right text-right">
						<div class="btn-group btn-group-xs">
							# IF news.C_EDIT #
								<a class="btn btn-info" href="{news.U_EDIT}" title="${LangLoader::get_message('edit', 'common')}"><i class="fa fa-edit"></i></a>
							# ENDIF #
							# IF news.C_DELETE #
								<a class="btn btn-danger" href="{news.U_DELETE}" title="${LangLoader::get_message('delete', 'common')}" data-confirmation="delete-element"><i class="fa fa-delete"></i></a>
							# ENDIF #
						</div>
					</div>
					<h2>
						<a href="{news.U_LINK}"><span itemprop="name">{news.NAME}</span></a>
					</h2>

					<div class="well well-sm">
						# IF news.C_AUTHOR_DISPLAYED #
							${LangLoader::get_message('by', 'common')}
							# IF news.C_AUTHOR_CUSTOM_NAME #
								{news.AUTHOR_CUSTOM_NAME}
							# ELSE #
								# IF news.C_AUTHOR_EXIST #<a itemprop="author" class="{news.USER_LEVEL_CLASS}" href="{news.U_AUTHOR_PROFILE}"# IF news.C_USER_GROUP_COLOR # style="color:{news.USER_GROUP_COLOR}"# ENDIF #>{news.PSEUDO}</a>, # ELSE #{news.PSEUDO}# ENDIF #
							# ENDIF #
						# ENDIF #
						${TextHelper::lcfirst(LangLoader::get_message('the', 'common'))} <time datetime="# IF NOT news.C_DIFFERED #{news.DATE_ISO8601}# ELSE #{news.DIFFERED_START_DATE_ISO8601}# ENDIF #" itemprop="datePublished"># IF NOT news.C_DIFFERED #{news.DATE}# ELSE #{news.DIFFERED_START_DATE}# ENDIF #</time>
						${TextHelper::lcfirst(LangLoader::get_message('in', 'common'))} <a itemprop="about" href="{news.U_CATEGORY}">{news.CATEGORY_NAME}</a>
						# IF C_COMMENTS_ENABLED #- # IF news.C_COMMENTS # {news.NUMBER_COMMENTS} # ENDIF # {news.L_COMMENTS}# ENDIF #
						# IF news.C_NB_VIEW_ENABLED #- <span title="{news.NUMBER_VIEW} {@news.view}"><i class="fa fa-eye"></i> {news.NUMBER_VIEW}</span> # ENDIF #
					</div>

					<meta itemprop="url" content="{news.U_LINK}">
					<meta itemprop="description" content="${escape(news.DESCRIPTION)}"/>
					# IF C_COMMENTS_ENABLED #
					<meta itemprop="discussionUrl" content="{news.U_COMMENTS}">
					<meta itemprop="interactionCount" content="{news.NUMBER_COMMENTS} UserComments">
					# ENDIF #

				</header>

				<div class="content">

					<div itemprop="text"># IF C_DISPLAY_CONDENSED_CONTENT # {news.DESCRIPTION}# IF news.C_READ_MORE #... <a class="btn btn-xs btn-pbt" href="{news.U_LINK}">${LangLoader::get_message('read-more', 'common')}</a># ENDIF ## ELSE # {news.CONTENTS} # ENDIF #</div>
				</div>

				# IF news.C_SOURCES #
				<div class="clearfix"></div>
				<aside>
				<div id="news-sources-container">
					<span>${LangLoader::get_message('form.sources', 'common')}</span> :
					# START news.sources #
					<a itemprop="isBasedOnUrl" href="{news.sources.URL}" class="label label-info">{news.sources.NAME}</a># IF news.sources.C_SEPARATOR # # ENDIF #
					# END news.sources #
				</div>
				</aside>
				# ENDIF #

				<footer></footer>
			</article>
		# END news #
		# ELSE #
		# START news #
			<article id="article-news-{news.ID}" class="col-sm-12 mb15# IF news.C_TOP_LIST # top-list# ENDIF ## IF news.C_NEW_CONTENT # new-content# ENDIF #" itemscope="itemscope" itemtype="http://schema.org/CreativeWork">
				<header>
					<div class="pull-right text-right">
						<div class="btn-group btn-group-xs">
							# IF news.C_EDIT #
								<a class="btn btn-info" href="{news.U_EDIT}" title="${LangLoader::get_message('edit', 'common')}"><i class="fa fa-edit"></i></a>
							# ENDIF #
							# IF news.C_DELETE #
								<a class="btn btn-danger" href="{news.U_DELETE}" title="${LangLoader::get_message('delete', 'common')}" data-confirmation="delete-element"><i class="fa fa-delete"></i></a>
							# ENDIF #
						</div>
					</div>
					<h2>
						<a href="{news.U_LINK}"><span itemprop="name">{news.NAME}</span></a>
					</h2>

					<div class="well well-sm">
						# IF news.C_AUTHOR_DISPLAYED #
							${LangLoader::get_message('by', 'common')}
							# IF news.C_AUTHOR_CUSTOM_NAME #
								{news.AUTHOR_CUSTOM_NAME}
							# ELSE #
								# IF news.C_AUTHOR_EXIST #<a itemprop="author" class="{news.USER_LEVEL_CLASS}" href="{news.U_AUTHOR_PROFILE}"# IF news.C_USER_GROUP_COLOR # style="color:{news.USER_GROUP_COLOR}"# ENDIF #>{news.PSEUDO}</a>, # ELSE #{news.PSEUDO}# ENDIF #
							# ENDIF #
						# ENDIF #
						${TextHelper::lcfirst(LangLoader::get_message('the', 'common'))} <time datetime="# IF NOT news.C_DIFFERED #{news.DATE_ISO8601}# ELSE #{news.DIFFERED_START_DATE_ISO8601}# ENDIF #" itemprop="datePublished"># IF NOT news.C_DIFFERED #{news.DATE}# ELSE #{news.DIFFERED_START_DATE}# ENDIF #</time>
						${TextHelper::lcfirst(LangLoader::get_message('in', 'common'))} <a itemprop="about" href="{news.U_CATEGORY}">{news.CATEGORY_NAME}</a>
						# IF C_COMMENTS_ENABLED #- # IF news.C_COMMENTS # {news.NUMBER_COMMENTS} # ENDIF # {news.L_COMMENTS}# ENDIF #
						# IF news.C_NB_VIEW_ENABLED #- <span title="{news.NUMBER_VIEW} {@news.view}"><i class="fa fa-eye"></i> {news.NUMBER_VIEW}</span> # ENDIF #
					</div>

					<meta itemprop="url" content="{news.U_LINK}">
					<meta itemprop="description" content="${escape(news.DESCRIPTION)}"/>
					# IF C_COMMENTS_ENABLED #
					<meta itemprop="discussionUrl" content="{news.U_COMMENTS}">
					<meta itemprop="interactionCount" content="{news.NUMBER_COMMENTS} UserComments">
					# ENDIF #

				</header>


					# IF news.C_PICTURE #
					<div class="col-sm-4 pull-right">
						<a href="{news.U_LINK}" class="news-picture"><img itemprop="thumbnailUrl" src="{news.U_PICTURE}" alt="{news.NAME}" title="{news.NAME}" /> </a>
					</div>
					# ENDIF #
					<div itemprop="text">
						# IF C_DISPLAY_CONDENSED_CONTENT #
							{news.DESCRIPTION}
							# IF news.C_READ_MORE #...
							<div class="clearfix"></div>
							<a class="btn btn-xs btn-pbt" href="{news.U_LINK}">${LangLoader::get_message('read-more', 'common')}</a>
							# ENDIF #
						# ELSE #
							{news.CONTENTS}
						# ENDIF #
					</div>


				# IF news.C_SOURCES #
				<div class="clearfix"></div>
				<aside>
				<div id="news-sources-container">
					<span>${LangLoader::get_message('form.sources', 'common')}</span> :
					# START news.sources #
					<a itemprop="isBasedOnUrl" href="{news.sources.URL}" class="label label-info">{news.sources.NAME}</a># IF news.sources.C_SEPARATOR # # ENDIF #
					# END news.sources #
				</div>
				</aside>
				# ENDIF #

				<footer></footer>
			</article>
		# END news #
		# ENDIF #
	# ENDIF #
	</div>
	<footer># IF C_PAGINATION # # INCLUDE PAGINATION # # ENDIF #</footer>
</section>
