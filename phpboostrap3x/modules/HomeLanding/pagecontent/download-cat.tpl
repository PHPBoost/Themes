
<article class="mb15" id="last_download_cat" style="order: {DOWNLOAD_CAT_POSITION}; -webkit-order: {DOWNLOAD_CAT_POSITION}; -ms-flex-order: {DOWNLOAD_CAT_POSITION}">
	<header>
		<h2>
			<div class="pull-right text-right">
				<a class="btn btn-pbt btn-xs" href="{PATH_TO_ROOT}/download" title="${Langloader::get_message('link.to.download', 'common', 'HomeLanding')}">
					${Langloader::get_message('link.to.download', 'common', 'HomeLanding')}
				</a>
			</div>
			${Langloader::get_message('last.download.cat', 'common', 'HomeLanding')} {CATEGORY_NAME}
		</h2>
	</header>
	<div class="row grid-columns">
		# IF C_NO_DOWNLOAD_ITEM #
		<div class="col-sm-12 text-center">
			${LangLoader::get_message('no.download.item', 'common', 'HomeLanding')}
		</div>
		# ENDIF #
	# START item #
		<div class="col-sm-6 col-md-4" itemscope="itemscope" itemtype="http://schema.org/CreativeWork">
			<div class="thumbnail">
				<a href="{item.U_LINK}">
					# IF item.C_PICTURE #
						<img src="{item.U_PICTURE}" alt="{item.NAME}" itemprop="image" />
					# ELSE #
						<img src="{PATH_TO_ROOT}/templates/{THEME}/theme/images/logo.png" alt="{item.NAME}" itemprop="image" />
					# ENDIF #
				</a>
				<h4>
					<a href="{item.U_LINK}">{item.NAME}</a>
				</h4>
				<div class="well well-sm">
					<i class="fa fa-user"></i> # IF item.C_AUTHOR_EXIST #<a itemprop="author" rel="author" class="{item.USER_LEVEL_CLASS}" href="{item.U_AUTHOR_PROFILE}"# IF item.C_USER_GROUP_COLOR # style="{item.USER_GROUP_COLOR}"# ENDIF #>{item.PSEUDO}</a># ELSE #{item.PSEUDO}# ENDIF # -
					<i class="fa fa-clock-o"></i> {item.DATE} - <i class="fa fa-download"></i> {item.NUMBER_DOWNLOADS}
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
