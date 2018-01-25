<section id="module-articles">
	<header class="page-header">
		# IF C_CATEGORY #
			<div class="pull-right text-right">
				<div class="btn-group btn-group-xs">
					# IF IS_ADMIN #
					<a class="btn btn-info" href="{U_EDIT_CATEGORY}" title="${LangLoader::get_message('edit', 'common')}">
						<i class="fa fa-edit"></i>
					</a>
					# ENDIF #
					<a class="btn btn-warning" href="${relative_url(SyndicationUrlBuilder::rss('articles', ID_CAT))}" title="${LangLoader::get_message('syndication', 'common')}"><i class="fa fa-syndication"></i> </a>
				</div>
			</div>
		# ENDIF #
		<h1>
			# IF C_PENDING #
				{@articles.pending_articles}
			# ELSE #
				{@articles}
				# IF NOT C_ROOT_CATEGORY #
				 - {CATEGORY_NAME}
				 # ENDIF #
			# ENDIF #
		</h1>
		# IF C_CATEGORY_DESCRIPTION #
			<div class="cat-description">
				{CATEGORY_DESCRIPTION}
			</div>
		# ENDIF #
	</header>

	# IF C_SUB_CATEGORIES #
		<div class="row text-center grid-columns">
			# START sub_categories_list #
			<div class="col-sm-6 col-md-4">
				<div class="subcat-content">
					# IF C_DISPLAY_CATS_ICON #
						# IF sub_categories_list.C_CATEGORY_IMAGE #
					<a itemprop="about" href="{sub_categories_list.U_CATEGORY}" title="{sub_categories_list.CATEGORY_NAME}">
						<img itemprop="thumbnailUrl" src="{sub_categories_list.CATEGORY_IMAGE}" alt="{sub_categories_list.CATEGORY_NAME}" />
					</a>
						# ENDIF #
					# ENDIF #
					<div class="caption">
						<a itemprop="about" href="{sub_categories_list.U_CATEGORY}">{sub_categories_list.CATEGORY_NAME}</a>
						<p>
							<small>{sub_categories_list.ARTICLES_NUMBER} # IF sub_categories_list.C_MORE_THAN_ONE_ARTICLE #${TextHelper::lcfirst(LangLoader::get_message('articles', 'common', 'articles'))}# ELSE #${TextHelper::lcfirst(LangLoader::get_message('article', 'common', 'articles'))}# ENDIF #</small>
						</p>
					</div>
				</div>
			</div>
			# END sub_categories_list #
		</div>
		# IF C_SUBCATEGORIES_PAGINATION #
		<span class="text-center"># INCLUDE SUBCATEGORIES_PAGINATION #</span>
		# ENDIF #
	# ENDIF #

	# IF C_NO_ARTICLE_AVAILABLE #
		# IF NOT C_HIDE_NO_ITEM_MESSAGE #
		<p class="alert alert-warning text-center">
			${LangLoader::get_message('no_item_now', 'common')}
		</p>
		# ENDIF #
	# ELSE #
		# IF C_ARTICLES_FILTERS #
		<div class="items-filters">
			# INCLUDE FORM #
		</div>
		# ENDIF #
		<div class="clearfix"></div>

			# IF C_MOSAIC #
				<div class="row grid-columns">
				# START articles #

					<article class="col-sm-6 col-md-4# IF articles.C_NEW_CONTENT # new-content# ENDIF #">

						<meta itemprop="url" content="{articles.U_ARTICLE}">
						<meta itemprop="description" content="${escape(articles.DESCRIPTION)}"/>
						<meta itemprop="discussionUrl" content="{articles.U_COMMENTS}">
						<meta itemprop="interactionCount" content="{articles.NUMBER_COMMENTS} UserComments">

						# IF articles.C_HAS_PICTURE #
						<a href="{articles.U_ARTICLE}">
							<img itemprop="thumbnailUrl" src="{articles.PICTURE}" alt="{articles.TITLE}" />
						</a>
						# ENDIF #
						<div class="caption">

							<div class="pull-right text-right">
								<div class="btn-group btn-group-xs">
									# IF articles.C_EDIT #
										<a class="btn btn-info" href="{articles.U_EDIT_ARTICLE}" title="${LangLoader::get_message('edit', 'common')}"><i class="fa fa-edit"></i></a>
									# ENDIF #
									# IF articles.C_DELETE #
										<a class="btn btn-danger" href="{articles.U_DELETE_ARTICLE}" title="${LangLoader::get_message('delete', 'common')}" data-confirmation="delete-element"><i class="fa fa-delete"></i></a>
									# ENDIF #
								</div>

							</div>
							<h2>
								<a itemprop="url" href="{articles.U_ARTICLE}"><span itemprop="name">{articles.TITLE}</span></a>
							</h2>
							<small>
								# IF articles.C_AUTHOR_DISPLAYED #
								${LangLoader::get_message('by', 'common')}
								# IF articles.C_AUTHOR_CUSTOM_NAME #
									{articles.AUTHOR_CUSTOM_NAME}
								# ELSE #
									# IF articles.C_AUTHOR_EXIST #<a itemprop="author" href="{articles.U_AUTHOR}" class="{articles.USER_LEVEL_CLASS}" # IF C_USER_GROUP_COLOR # style="color:{articles.USER_GROUP_COLOR}"# ENDIF #>{articles.PSEUDO}</a># ELSE #{articles.PSEUDO}# ENDIF #,
								# ENDIF #
							# ENDIF #
							${LangLoader::get_message('the', 'common')} <time datetime="# IF NOT articles.C_DIFFERED #{articles.DATE_ISO8601}# ELSE #{articles.PUBLISHING_START_DATE_ISO8601}# ENDIF #" itemprop="datePublished"># IF NOT articles.C_DIFFERED #{articles.DATE}# ELSE #{articles.PUBLISHING_START_DATE}# ENDIF #</time>
							</small>
							<p itemprop="text">
								{articles.DESCRIPTION}
							</p>
							# IF articles.C_READ_MORE #
							<a href="{articles.U_ARTICLE}" class="btn btn-primary">${LangLoader::get_message('read-more', 'common')}</a>
							# ENDIF #
						</div>
						<footer></footer>
					</article>
				# END articles #
				</div>
			# ELSE #
				<div class="article-list row">
					# START articles #
					<article id="article-articles-{articles.ID}" class="# IF articles.C_NEW_CONTENT # new-content# ENDIF #" itemscope="itemscope" itemtype="http://schema.org/CreativeWork">

						<meta itemprop="url" content="{articles.U_ARTICLE}">
						<meta itemprop="description" content="${escape(articles.DESCRIPTION)}"/>
						<meta itemprop="discussionUrl" content="{articles.U_COMMENTS}">
						<meta itemprop="interactionCount" content="{articles.NUMBER_COMMENTS} UserComments">

						# IF articles.C_HAS_PICTURE #
						<div class="col-md-3">
							<a href="{articles.U_ARTICLE}">
								<img src="{articles.PICTURE}" alt="{articles.TITLE}" />
							</a>
						</div>
						# ENDIF #
						<div class="col-md-9">
							<small class="pull-right text-right">
								# IF articles.C_EDIT #
									<a href="{articles.U_EDIT_ARTICLE}" title="${LangLoader::get_message('edit', 'common')}"><i class="fa fa-fw fa-edit"></i></a>
								# ENDIF #
								# IF articles.C_DELETE #
									<a href="{articles.U_DELETE_ARTICLE}" title="${LangLoader::get_message('delete', 'common')}" data-confirmation="delete-element"><i class="fa fa-fw fa-delete"></i></a>
								# ENDIF #
							</small>
							<h3>
								<a itemprop="url" href="{articles.U_ARTICLE}"><span itemprop="name">{articles.TITLE}</span></a>
							</h3>
							<small>
								# IF articles.C_AUTHOR_DISPLAYED #
									${LangLoader::get_message('by', 'common')}
									# IF articles.C_AUTHOR_CUSTOM_NAME #
										{articles.AUTHOR_CUSTOM_NAME}
									# ELSE #
										# IF articles.C_AUTHOR_EXIST #<a itemprop="author" href="{articles.U_AUTHOR}" class="{articles.USER_LEVEL_CLASS}" # IF C_USER_GROUP_COLOR # style="color:{articles.USER_GROUP_COLOR}"# ENDIF #>{articles.PSEUDO}</a># ELSE #{articles.PSEUDO}# ENDIF #,
									# ENDIF #
								# ENDIF #
								${LangLoader::get_message('the', 'common')} <time datetime="# IF NOT articles.C_DIFFERED #{articles.DATE_ISO8601}# ELSE #{articles.PUBLISHING_START_DATE_ISO8601}# ENDIF #" itemprop="datePublished"># IF NOT articles.C_DIFFERED #{articles.DATE}# ELSE #{articles.PUBLISHING_START_DATE}# ENDIF #</time>
								${TextHelper::lcfirst(LangLoader::get_message('in', 'common'))} <a itemprop="about" href="{articles.U_CATEGORY}">{articles.CATEGORY_NAME}</a>
							</small>
							<p itemprop="text">{articles.DESCRIPTION}</p>
							# IF articles.C_READ_MORE #
							<p>
								<a href="{articles.U_ARTICLE}" class="btn btn-primary">${LangLoader::get_message('read-more', 'common')}</a>
							</p>
							# ENDIF #
							# IF articles.C_SOURCES #
							<p id="articles-sources-container">
								${LangLoader::get_message('form.sources', 'common')} :
								# START articles.sources #
								<a itemprop="isBasedOnUrl" href="{articles.sources.URL}"><span class="badge">{articles.sources.NAME}</span></a># IF articles.sources.C_SEPARATOR # | # ENDIF #
								# END articles.sources #
							</p>
							# ENDIF #
						</div>

						<footer></footer>
					</article>
				# END articles #
				</div>
			# ENDIF #

	# ENDIF #
	<footer># IF C_PAGINATION # # INCLUDE PAGINATION # # ENDIF #</footer>
</section>
