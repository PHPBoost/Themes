
<article class="mb15" id="last_news_cat" style="order: {NEWS_CAT_POSITION}; -webkit-order: {NEWS_CAT_POSITION}; -ms-flex-order: {NEWS_CAT_POSITION}">
	<header>
		<div class="pull-right text-right">
			<a class="btn btn-pbt btn-xs" href="{PATH_TO_ROOT}/news" title="${Langloader::get_message('link.to.news', 'common', 'HomeLanding')}">
				${Langloader::get_message('link.to.news', 'common', 'HomeLanding')}
			</a>
		</div>
		<h2>
			${Langloader::get_message('last.news.cat', 'common', 'HomeLanding')} {CATEGORY_NAME}
		</h2>
	</header>
	<div class="row grid-columns">
		# IF C_NO_NEWS_ITEM #
		<div class="col-sm-12 text-center">
			${LangLoader::get_message('no.news.item', 'common', 'HomeLanding')}
		</div>
		# ENDIF #
	# START item #
		<div class="col-sm-6 col-md-4" itemscope="itemscope" itemtype="http://schema.org/CreativeWork">
			<div class="thumbnail">
				<a href="{item.U_LINK}">
					# IF item.C_PICTURE #
						<img class="item-picture" src="{item.U_PICTURE}" alt="{item.NAME}" itemprop="image" />
					# ELSE #
						<img src="{PATH_TO_ROOT}/templates/{THEME}/theme/images/theme.jpg" alt="{item.NAME}" />
					# ENDIF #
				</a>
				<h4>
					<a href="{item.U_LINK}">{item.NAME}</a>
				</h4>
				<div class="well well-sm">
					# IF item.C_AUTHOR_DISPLAYED #
					<i class="fa fa-user"></i> # IF item.C_AUTHOR_EXIST #<a itemprop="author" class="{item.USER_LEVEL_CLASS}" href="{item.U_AUTHOR_PROFILE}"# IF item.C_USER_GROUP_COLOR # style="{item.USER_GROUP_COLOR}"# ENDIF #>{item.PSEUDO}</a># ELSE #{item.PSEUDO}# ENDIF # -
					# ENDIF #
					<i class="fa fa-clock-o"></i> <time datetime="{item.DATE_ISO8601}" itemprop="datePublished">{item.DATE_DAY}/{item.DATE_MONTH}/{item.DATE_YEAR}</time>
				</div>
				<p>
					<div itemprop="text"># IF item.C_DESCRIPTION #{item.DESCRIPTION}# ELSE #{item.CONTENTS}# ENDIF ## IF item.C_READ_MORE #... <a href="{item.U_LINK}">[${LangLoader::get_message('read-more', 'common')}]</a># ENDIF #</div>
				</p>
			</div>
		</div>
	# END item #
	</div>
	<footer></footer>
</article>
