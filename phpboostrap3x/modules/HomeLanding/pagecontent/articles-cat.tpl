
<article class="mb15" id="last_articles_cat" style="order: {ARTICLES_CAT_POSITION}; -webkit-order: {ARTICLES_CAT_POSITION}; -ms-flex-order: {ARTICLES_CAT_POSITION}">
	<header>
		<div class="pull-right text-right">
			<a class="btn btn-pbt btn-xs" href="{PATH_TO_ROOT}/articles" title="${Langloader::get_message('link.to.articles', 'common', 'HomeLanding')}">
				${Langloader::get_message('link.to.articles', 'common', 'HomeLanding')}
			</a>
		</div>
		<h2>
			${Langloader::get_message('last.articles.cat', 'common', 'HomeLanding')} {CATEGORY_NAME}
		</h2>
	</header>
	<div class="row grid-columns">
		# IF C_NO_ARTICLES_ITEM #
		<div class="col-sm-12 text-center">
			${LangLoader::get_message('no.articles.item', 'common', 'HomeLanding')}
		</div>
		# ENDIF #
	# START item #
		<div class="col-sm-6 col-md-4" itemscope="itemscope" itemtype="http://schema.org/CreativeWork">
			<div class="thumbnail">
				<a href="{item.U_ARTICLE}">
					# IF item.C_HAS_PICTURE #
						<img src="{item.PICTURE}" alt="{item.TITLE}" itemprop="thumbnailUrl" />
					# ELSE #
						<img src="{PATH_TO_ROOT}/templates/{THEME}/theme/images/theme.jpg" alt="{item.TITLE}" />
					# ENDIF #
				</a>
				<h4>
					<a href="{item.U_ARTICLE}">{item.TITLE}</a>
				</h4>
				<div class="well well-sm">
					# IF item.C_AUTHOR_DISPLAYED #
					<i class="fa fa-user"></i> # IF item.C_AUTHOR_EXIST #<a itemprop="author" class="{item.USER_LEVEL_CLASS}" href="{item.U_AUTHOR}"# IF item.C_USER_GROUP_COLOR # style="{item.USER_GROUP_COLOR}"# ENDIF #>{item.PSEUDO}</a># ELSE #{item.PSEUDO}# ENDIF # -
					# ENDIF #
					<i class="fa fa-clock-o"></i> <time datetime="{item.DATE_ISO8601}" itemprop="datePublished">{item.DATE_SHORT}</time> - <i class="fa fa-eye"></i> {item.NUMBER_VIEW}
				</div>
				<p>
					<div itemprop="text"># IF item.C_DESCRIPTION #{item.DESCRIPTION}# ELSE #{item.CONTENTS}# ENDIF ## IF item.C_READ_MORE #... <a href="{item.U_ARTICLE}">[${LangLoader::get_message('read-more', 'common')}]</a># ENDIF #</div>
				</p>
			</div>
		</div>
	# END item #
	</div>
	<footer></footer>
</article>
