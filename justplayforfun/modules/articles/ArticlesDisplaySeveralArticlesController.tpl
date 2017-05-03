<section id="module-articles">
	<header>
		<h1>
			<a href="${relative_url(SyndicationUrlBuilder::rss('articles', ID_CAT))}" title="${LangLoader::get_message('syndication', 'common')}"><i class="fa fa-syndication"></i></a>
			# IF C_PENDING #{@articles.pending_articles}# ELSE #{@articles}# IF NOT C_ROOT_CATEGORY # - {CATEGORY_NAME}# ENDIF ## ENDIF # # IF C_CATEGORY ## IF IS_ADMIN #<a href="{U_EDIT_CATEGORY}" title="${LangLoader::get_message('edit', 'common')}"><i class="fa fa-edit smaller"></i></a># ENDIF ## ENDIF #
		</h1>
		# IF C_CATEGORY_DESCRIPTION #
			<div class="cat-description">
				{CATEGORY_DESCRIPTION}
			</div>
		# ENDIF #
	</header>
	
	# IF C_SUB_CATEGORIES #
	<div class="subcat-container elements-container# IF C_SEVERAL_CATS_COLUMNS # columns-{NUMBER_CATS_COLUMNS}# ENDIF #">
		# START sub_categories_list #
		<div class="subcat-element block">
			<div class="subcat-content">
				# IF C_DISPLAY_CATS_ICON #
				# IF sub_categories_list.C_CATEGORY_IMAGE #<a itemprop="about" href="{sub_categories_list.U_CATEGORY}"><img itemprop="thumbnailUrl" src="{sub_categories_list.CATEGORY_IMAGE}" alt="{sub_categories_list.CATEGORY_NAME}" /></a># ENDIF #
				<br />
				# ENDIF #
				<a itemprop="about" href="{sub_categories_list.U_CATEGORY}">{sub_categories_list.CATEGORY_NAME}</a>
				<br />
				<span class="small">{sub_categories_list.ARTICLES_NUMBER} # IF sub_categories_list.C_MORE_THAN_ONE_ARTICLE #${TextHelper::lcfirst(LangLoader::get_message('articles', 'common', 'articles'))}# ELSE #${TextHelper::lcfirst(LangLoader::get_message('article', 'common', 'articles'))}# ENDIF #</span>
			</div>
		</div>
		# END sub_categories_list #
		<div class="spacer"></div>
	</div>
	# IF C_SUBCATEGORIES_PAGINATION #<span class="center"># INCLUDE SUBCATEGORIES_PAGINATION #</span># ENDIF #
	# ENDIF #
	
	# IF C_NO_ARTICLE_AVAILABLE #
		# IF NOT C_HIDE_NO_ITEM_MESSAGE #
		<div class="center">
			${LangLoader::get_message('no_item_now', 'common')}
		</div>
		# ENDIF #
	# ELSE #
		# IF C_ARTICLES_FILTERS #
			# INCLUDE FORM #
		# ENDIF #
		<div class="spacer"></div>
		<div class="content elements-container# IF C_SEVERAL_COLUMNS # columns-{NUMBER_COLUMNS}# ENDIF#">
			# START articles #
				<article id="article-articles-{articles.ID}" class="article-articles article-several# IF C_MOSAIC # block# ENDIF ## IF articles.C_NEW_CONTENT # new-content# ENDIF #" itemscope="itemscope" itemtype="http://schema.org/CreativeWork">
					<header>
						<h2>
							<a itemprop="url" href="{articles.U_ARTICLE}"><span itemprop="name">{articles.TITLE}</span></a>
						</h2>
												
						<meta itemprop="url" content="{articles.U_ARTICLE}">
						<meta itemprop="description" content="${escape(articles.DESCRIPTION)}"/>
						<meta itemprop="discussionUrl" content="{articles.U_COMMENTS}">
						<meta itemprop="interactionCount" content="{articles.NUMBER_COMMENTS} UserComments">
						
					</header>

						<p class="date-bandeau">
							<time datetime="# IF NOT articles.C_DIFFERED #{articles.DATE_ISO8601}# ELSE #{articles.PUBLISHING_START_DATE_ISO8601}# ENDIF #" itemprop="datePublished"># IF NOT articles.C_DIFFERED #{articles.DATE_SHORT}# ELSE #{articles.PUBLISHING_START_DATE}# ENDIF #</time>
						</p>
						# IF articles.C_HAS_PICTURE #
						<a href="{articles.U_ARTICLE}" class="article-img"><img itemprop="thumbnailUrl" src="{articles.PICTURE}" alt="{articles.TITLE}" /></a>
						# ELSE #
						<img itemprop="thumbnailUrl" src="{PATH_TO_ROOT}\articles\templates\images\default.png" alt="default image" class="article-img"/>
						# ENDIF #

					<div class="content">
						<div itemprop="text">{articles.DESCRIPTION}# IF articles.C_READ_MORE #... <a href="{articles.U_ARTICLE}" class="read-more">[${LangLoader::get_message('read-more', 'common')}]</a># ENDIF #</div>
					</div>
					
					<footer class="articles-footer-container">
						<span class="actions">
							# IF articles.C_EDIT #
								<a href="{articles.U_EDIT_ARTICLE}" title="${LangLoader::get_message('edit', 'common')}"><i class="fa fa-edit"></i></a>
							# ENDIF #
							# IF articles.C_DELETE #
								<a href="{articles.U_DELETE_ARTICLE}" title="${LangLoader::get_message('delete', 'common')}" data-confirmation="delete-element"><i class="fa fa-delete"></i></a>
							# ENDIF #
						</span>
						<div class="more">
							# IF articles.C_AUTHOR_DISPLAYED #
								${LangLoader::get_message('by', 'common')}
								# IF articles.C_AUTHOR_CUSTOM_NAME #
									{articles.AUTHOR_CUSTOM_NAME}
								# ELSE #
									# IF articles.C_AUTHOR_EXIST #<a itemprop="author" href="{articles.U_AUTHOR}" class="{articles.USER_LEVEL_CLASS}" # IF C_USER_GROUP_COLOR # style="color:{articles.USER_GROUP_COLOR}"# ENDIF #>{articles.PSEUDO}</a># ELSE #{articles.PSEUDO}# ENDIF #
								# ENDIF #
							# ELSE #
								${LangLoader::get_message('the', 'common')} 
							# ENDIF # 
							${TextHelper::lcfirst(LangLoader::get_message('in', 'common'))} <a itemprop="about" href="{articles.U_CATEGORY}">{articles.CATEGORY_NAME}</a>
						</div>
					</footer>
				</article>
			# END articles #
		</div>
	# ENDIF #
		<div class="spacer"></div>
	<footer># IF C_PAGINATION # # INCLUDE PAGINATION # # ENDIF #</footer>
</section>
