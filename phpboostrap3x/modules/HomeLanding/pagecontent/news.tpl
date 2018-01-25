
<article class="mb15" id="last_news" style="order: {NEWS_POSITION}; -webkit-order: {NEWS_POSITION}; -ms-flex-order: {NEWS_POSITION}">
	<header>
		<div class="pull-right text-right">
			<a class="btn btn-pbt btn-xs" href="{PATH_TO_ROOT}/news" title="${Langloader::get_message('link.to.news', 'common', 'HomeLanding')}">
				${Langloader::get_message('link.to.news', 'common', 'HomeLanding')}
			</a>
		</div>
		<h2>
			${Langloader::get_message('last.news', 'common', 'HomeLanding')}
		</h2>
	</header>
	# START news_items #
		<div class="media" itemscope="itemscope" itemtype="http://schema.org/CreativeWork">
			<div class="media-left">
				# IF news_items.C_PICTURE #
					<img class="media-object" src="{news_items.U_PICTURE}" alt="{news_items.NAME}" />
				# ELSE #
				<img class="media-object" src="{PATH_TO_ROOT}/templates/{THEME}/theme/images/theme.jpg" alt="{news_items.NAME}" />
				# ENDIF #
			</div>
			<div class="media-body">
				<div class="media-heading">
					<div class="pull-right text-right">
						<div class="btn-group btn-group-xs">
							# IF news_items.C_EDIT #
								<a class="btn btn-info" href="{news_items.U_EDIT}" title="${LangLoader::get_message('edit', 'common')}"><i class="fa fa-edit"></i></a>
							# ENDIF #
							# IF news_items.C_DELETE #
								<a class="btn btn-danger" href="{news_items.U_DELETE}" title="${LangLoader::get_message('delete', 'common')}" data-confirmation="delete-element"><i class="fa fa-delete"></i></a>
							# ENDIF #
						</div>
					</div>
					<h3>
						<a href="{news_items.U_LINK}">{news_items.NAME}</a>
					</h3>
				</div>
				<div class="well well-sm">
					# IF news_items.C_AUTHOR_DISPLAYED #
						${LangLoader::get_message('by', 'common')}
						# IF news_items.C_AUTHOR_EXIST #<a itemprop="author" class="{news_items.USER_LEVEL_CLASS}" href="{news_items.U_AUTHOR_PROFILE}"# IF news_items.C_USER_GROUP_COLOR # style="{news_items.USER_GROUP_COLOR}"# ENDIF #>{news_items.PSEUDO}</a>, # ELSE #{news_items.PSEUDO}# ENDIF #
					# ENDIF #
					${TextHelper::lcfirst(LangLoader::get_message('the', 'common'))} <time datetime="{news_items.DATE_ISO8601}" itemprop="datePublished">{news_items.DATE_DAY}/{news_items.DATE_MONTH}/{news_items.DATE_YEAR}</time>
					${TextHelper::lcfirst(LangLoader::get_message('in', 'common'))} <a itemprop="about" href="{news_items.U_CATEGORY}">{news_items.CATEGORY_NAME}</a>
				</div>
				<p class="item-desc">
					<div itemprop="text">{news_items.DESCRIPTION}# IF news_items.C_READ_MORE #... <a href="{news_items.U_LINK}">[${LangLoader::get_message('read-more', 'common')}]</a># ENDIF #</div>
				</p>
			</div>
		</div>
	# END news_items #
	<footer></footer>
</article>