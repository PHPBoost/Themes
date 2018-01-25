<section id="module-articles">
	<header class="page-header">
		<div class="pull-right text-right">
			<div class="btn-group btn-group-xs">
				# IF IS_ADMIN #<a class="btn btn-info" href="{U_EDIT_CATEGORY}" title="${LangLoader::get_message('edit', 'common')}"><i class="fa fa-edit small"></i></a># ENDIF #
				<a class="btn btn-warning" href="{U_SYNDICATION}" title="${LangLoader::get_message('syndication', 'common')}"><i class="fa fa-syndication"></i></a>
			</div>
		</div>
		<h1>
			{@articles}# IF NOT C_ROOT_CATEGORY # - {CATEGORY_NAME}# ENDIF #
		</h1>
	</header>
	<div class="row">
		# INCLUDE NOT_VISIBLE_MESSAGE #
		<article itemscope="itemscope" itemtype="http://schema.org/Article" id="article-articles-{ID}" class="col-xs-12 col-md-12# IF C_NEW_CONTENT # new-content# ENDIF #">
			<header class="page-header">
				<div class="pull-right text-right">
					<div class="btn-group btn-group-xs">
						# IF C_EDIT #
							<a class="btn btn-info" href="{U_EDIT_ARTICLE}" title="${LangLoader::get_message('edit', 'common')}"><i class="fa fa-edit"></i></a>
						# ENDIF #
						# IF C_DELETE #
							<a class="btn btn-danger" href="{U_DELETE_ARTICLE}" title="${LangLoader::get_message('delete', 'common')}" data-confirmation="delete-element"><i class="fa fa-delete"></i></a>
						# ENDIF #
							<a class="btn btn-primary" href="{U_PRINT_ARTICLE}" title="${LangLoader::get_message('printable_version', 'main')}" target="blank"><i class="fa fa-print"></i></a>
					</div>

				</div>
				<h2>
					<span itemprop="name">{TITLE}</span>
				</h2>
				<div>
					# IF C_AUTHOR_DISPLAYED #
					<i class="fa fa-user" title="${LangLoader::get_message('author', 'common')}"></i>
						# IF C_AUTHOR_CUSTOM_NAME #
							{AUTHOR_CUSTOM_NAME}
						# ELSE #
							# IF C_AUTHOR_EXIST #<a itemprop="author" href="{U_AUTHOR}" class="{USER_LEVEL_CLASS}" # IF C_USER_GROUP_COLOR # style="color:{USER_GROUP_COLOR}"# ENDIF #>&nbsp;{PSEUDO}&nbsp;</a># ELSE #{PSEUDO}# ENDIF #|&nbsp;
						# ENDIF #
					# ENDIF #
					<i class="fa fa-calendar" title="${LangLoader::get_message('date', 'date-common')}"></i>&nbsp;<time datetime="# IF NOT C_DIFFERED #{DATE_ISO8601}# ELSE #{PUBLISHING_START_DATE_ISO8601}# ENDIF #" itemprop="datePublished"># IF NOT C_DIFFERED #{DATE}# ELSE #{PUBLISHING_START_DATE}# ENDIF #</time>&nbsp;|
					&nbsp;<i class="fa fa-eye" title="{NUMBER_VIEW} {@articles.sort_field.views}"></i>&nbsp;<span title="{NUMBER_VIEW} {@articles.sort_field.views}">{NUMBER_VIEW}</span>
					# IF C_COMMENTS_ENABLED #
						&nbsp;|&nbsp;<i class="fa fa-comment" title="${LangLoader::get_message('comments', 'comments-common')}"></i><a itemprop="discussionUrl" class="small" href="{U_COMMENTS}">&nbsp;{L_COMMENTS}</a>
					# ENDIF #
					# IF C_KEYWORDS #
					&nbsp;|&nbsp;<i title="${LangLoader::get_message('form.keywords', 'common')}" class="fa fa-tags"></i>
						# START keywords #
							<a itemprop="keywords" href="{keywords.URL}">{keywords.NAME}</a># IF keywords.C_SEPARATOR #, # ENDIF #
						# END keywords #
					# ENDIF #
				</div>

				<meta itemprop="url" content="{U_ARTICLE}">
				<meta itemprop="description" content="${escape(DESCRIPTION)}">
				<meta itemprop="datePublished" content="# IF NOT C_DIFFERED #{DATE_ISO8601}# ELSE #{PUBLISHING_START_DATE_ISO8601}# ENDIF #">
				<meta itemprop="discussionUrl" content="{U_COMMENTS}">
				# IF C_HAS_PICTURE #<meta itemprop="thumbnailUrl" content="{PICTURE}"># ENDIF #
				<meta itemprop="interactionCount" content="{NUMBER_COMMENTS} UserComments">
			</header>

			# IF C_PAGINATION #
				<div class="items-filters"># INCLUDE FORM #</div>
				<div class="clearfix"></div>
			# ENDIF #
			# IF PAGE_NAME #
				<h3 class="title page_name">{PAGE_NAME}</h3>
			# ENDIF #
				<div itemprop="text">{CONTENTS}</div>

			<hr />

			# IF C_PAGINATION #

				<ul class="pager">
					<li class="previous">
						# IF C_PREVIOUS_PAGE #
						<a class="pull-left" href="{U_PREVIOUS_PAGE}"><span aria-hidden="true"><i class="fa fa-angle-double-left"></i> {L_PREVIOUS_TITLE}</span></a>
						# ELSE #
						&nbsp;
						# ENDIF #
					</li>
					<li class="next">
						# IF C_NEXT_PAGE #
						<a class="pull-right" href="{U_NEXT_PAGE}"><span aria-hidden="true">{L_NEXT_TITLE} <i class="fa fa-angle-double-right"></i></span></a>
						# ELSE #
						&nbsp;
						# ENDIF #
					</li>
				</ul>
				<p class="text-center">
					# INCLUDE PAGINATION_ARTICLES #
				</p>

			# ENDIF #

			<aside class="col-md-12">
				# IF C_SOURCES #
				<div id="articles-sources-container">
					<span>${LangLoader::get_message('form.sources', 'common')}</span> :
					# START sources #
					<a itemprop="isBasedOnUrl" href="{sources.URL}" class="small">{sources.NAME}</a># IF sources.C_SEPARATOR #, # ENDIF #
					# END sources #
				</div>
				# ENDIF #
				# IF C_DATE_UPDATED #
				<div><i>${LangLoader::get_message('form.date.update', 'common')} : <time datetime="{DATE_UPDATED_ISO8601}" itemprop="datePublished">{DATE_UPDATED}</time></i></div>
				# ENDIF #
				<div class="clearfix"></div>
				# IF C_NOTATION_ENABLED #
				<p>{KERNEL_NOTATION}</p>
				# ENDIF #
				# IF C_COMMENTS_ENABLED #
					# INCLUDE COMMENTS #
				# ENDIF #
			</aside>
			<footer></footer>
		</article>
	</div>
	<footer></footer>
</section>
