
<article class="mb15" id="last_articles" style="order: {ARTICLES_POSITION}; -webkit-order: {ARTICLES_POSITION}; -ms-flex-order: {ARTICLES_POSITION}">
	<header>
		<div class="pull-right text-right">
			<a class="btn btn-pbt btn-xs" href="{PATH_TO_ROOT}/articles" title="${Langloader::get_message('link.to.articles', 'common', 'HomeLanding')}">
				${Langloader::get_message('link.to.articles', 'common', 'HomeLanding')}
			</a>
		</div>
		<h2>
			${Langloader::get_message('last.articles', 'common', 'HomeLanding')}
		</h2>
	</header>
	# START articles_items #
		<div class="media">
			<div class="media-left">
				<a href="{articles_items.U_ARTICLE}" title="{articles_items.TITLE}">
					# IF articles_items.C_HAS_PICTURE #
						<img class="media-object" src="{articles_items.PICTURE}" alt="{articles_items.TITLE}" />
					# ELSE #
						<img class="media-object" src="{PATH_TO_ROOT}/templates/{THEME}/theme/images/theme.jpg" alt="{articles_items.TITLE}" />
					# ENDIF #
				</a>
			</div>
			<div class="media-body">
				<div class="media-heading">
					<div class="pull-right text-right">
						<div class="btn-group btn-group-xs">
							# IF articles_items.C_EDIT #
								<a class="btn btn-info" href="{articles_items.U_EDIT_ARTICLE}" title="${LangLoader::get_message('edit', 'common')}"><i class="fa fa-edit"></i></a>
							# ENDIF #
							# IF articles_items.C_DELETE #
								<a class="btn btn-danger" href="{articles_items.U_DELETE_ARTICLE}" title="${LangLoader::get_message('delete', 'common')}" data-confirmation="delete-element"><i class="fa fa-delete"></i></a>
							# ENDIF #
						</div>
					</div>
					<h3>
						<a href="{articles_items.U_ARTICLE}">{articles_items.TITLE}</a>
					</h3>
				</div>
				<div class="well well-sm">
					# IF articles_items.C_AUTHOR_DISPLAYED #
						${LangLoader::get_message('by', 'common')}
						# IF articles_items.C_AUTHOR_EXIST #<a itemprop="author" href="{articles_items.U_AUTHOR}" class="{articles_items.USER_LEVEL_CLASS}" # IF C_USER_GROUP_COLOR # style="color:{articles_items.USER_GROUP_COLOR}"# ENDIF #>{articles_items.PSEUDO}</a># ELSE #{articles_items.PSEUDO}# ENDIF #,
					# ENDIF #
					${TextHelper::lcfirst(LangLoader::get_message('the', 'common'))} <time datetime="{articles_items.DATE_ISO8601}" itemprop="datePublished">{articles_items.DATE_SHORT}</time>
					${TextHelper::lcfirst(LangLoader::get_message('in', 'common'))} <a itemprop="about" href="{articles_items.U_CATEGORY}">{articles_items.CATEGORY_NAME}</a>
				</div>
				<p class="item-desc">
					{articles_items.DESCRIPTION}# IF articles_items.C_READ_MORE #... <a href="{articles_items.U_ARTICLE}">[${LangLoader::get_message('read-more', 'common')}]</a># ENDIF #
				</p>
			</div>
		</div>
	# END articles_items #
	<footer></footer>
</article>
