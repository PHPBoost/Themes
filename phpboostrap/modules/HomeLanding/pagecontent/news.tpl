
<article class="mb15" id="news" style="order: {NEWS_POSITION}; -webkit-order: {NEWS_POSITION}; -ms-flex-order: {NEWS_POSITION}">
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
	# START item #
		<div class="media" itemscope="itemscope" itemtype="http://schema.org/CreativeWork">
			<div class="media-left">
				# IF item.C_PICTURE #
					<img class="media-object" src="{item.U_PICTURE}" alt="{item.NAME}" />
				# ELSE #
				<img class="media-object" src="{PATH_TO_ROOT}/templates/{THEME}/theme/images/theme.jpg" alt="{item.NAME}" />
				# ENDIF #
			</div>
			<div class="media-body">
				<div class="media-heading">
					<div class="pull-right text-right">
						<div class="btn-group btn-group-xs">
							# IF item.C_EDIT #
								<a class="btn btn-info" href="{item.U_EDIT}" title="${LangLoader::get_message('edit', 'common')}"><i class="fa fa-edit"></i></a>
							# ENDIF #
							# IF item.C_DELETE #
								<a class="btn btn-danger" href="{item.U_DELETE}" title="${LangLoader::get_message('delete', 'common')}" data-confirmation="delete-element"><i class="fa fa-trash-alt"></i></a>
							# ENDIF #
						</div>
					</div>
					<h3>
						<a href="{item.U_LINK}">{item.NAME}</a>
					</h3>
				</div>
				<div class="well well-sm">
					# IF item.C_AUTHOR_DISPLAYED #
						${LangLoader::get_message('by', 'common')}
						# IF item.C_AUTHOR_EXIST #<a itemprop="author" class="{item.USER_LEVEL_CLASS}" href="{item.U_AUTHOR_PROFILE}"# IF item.C_USER_GROUP_COLOR # style="{item.USER_GROUP_COLOR}"# ENDIF #>{item.PSEUDO}</a>, # ELSE #{item.PSEUDO}# ENDIF #
					# ENDIF #
					${TextHelper::lcfirst(LangLoader::get_message('the', 'common'))} <time datetime="{item.DATE_ISO8601}" itemprop="datePublished">{item.DATE_DAY}/{item.DATE_MONTH}/{item.DATE_YEAR}</time>
					${TextHelper::lcfirst(LangLoader::get_message('in', 'common'))} <a itemprop="about" href="{item.U_CATEGORY}">{item.CATEGORY_NAME}</a>
				</div>
				<p class="item-desc">
					<div itemprop="text">{item.DESCRIPTION}# IF item.C_READ_MORE #... <a href="{item.U_LINK}">[${LangLoader::get_message('read-more', 'common')}]</a># ENDIF #</div>
				</p>
			</div>
		</div>
	# END item #
	<footer></footer>
</article>
