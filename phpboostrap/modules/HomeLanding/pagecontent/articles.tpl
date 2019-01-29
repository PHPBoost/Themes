
<article class="mb15" id="articles" style="order: {ARTICLES_POSITION}; -webkit-order: {ARTICLES_POSITION}; -ms-flex-order: {ARTICLES_POSITION}">
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
	# START item #
		<div class="media">
			<div class="media-left">
				<a href="{item.U_ARTICLE}" title="{item.TITLE}">
					# IF item.C_HAS_PICTURE #
						<img class="media-object" src="{item.PICTURE}" alt="{item.TITLE}" />
					# ELSE #
						<img class="media-object" src="{PATH_TO_ROOT}/templates/{THEME}/theme/images/theme.jpg" alt="{item.TITLE}" />
					# ENDIF #
				</a>
			</div>
			<div class="media-body">
				<div class="media-heading">
					<div class="pull-right text-right">
						<div class="btn-group btn-group-xs">
							# IF item.C_EDIT #
								<a class="btn btn-info" href="{item.U_EDIT_ARTICLE}" title="${LangLoader::get_message('edit', 'common')}"><i class="fa fa-edit"></i></a>
							# ENDIF #
							# IF item.C_DELETE #
								<a class="btn btn-danger" href="{item.U_DELETE_ARTICLE}" title="${LangLoader::get_message('delete', 'common')}" data-confirmation="delete-element"><i class="fa fa-trash-alt"></i></a>
							# ENDIF #
						</div>
					</div>
					<h3>
						<a href="{item.U_ARTICLE}">{item.TITLE}</a>
					</h3>
				</div>
				<div class="well well-sm">
					# IF item.C_AUTHOR_DISPLAYED #
						${LangLoader::get_message('by', 'common')}
						# IF item.C_AUTHOR_EXIST #<a itemprop="author" href="{item.U_AUTHOR}" class="{item.USER_LEVEL_CLASS}" # IF C_USER_GROUP_COLOR # style="color:{item.USER_GROUP_COLOR}"# ENDIF #>{item.PSEUDO}</a># ELSE #{item.PSEUDO}# ENDIF #,
					# ENDIF #
					${TextHelper::lcfirst(LangLoader::get_message('the', 'common'))} <time datetime="{item.DATE_ISO8601}" itemprop="datePublished">{item.DATE_SHORT}</time>
					${TextHelper::lcfirst(LangLoader::get_message('in', 'common'))} <a itemprop="about" href="{item.U_CATEGORY}">{item.CATEGORY_NAME}</a>
				</div>
				<p class="item-desc">
					{item.DESCRIPTION}# IF item.C_READ_MORE #... <a href="{item.U_ARTICLE}">[${LangLoader::get_message('read-more', 'common')}]</a># ENDIF #
				</p>
			</div>
		</div>
	# END item #
	<footer></footer>
</article>
