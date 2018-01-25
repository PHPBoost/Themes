
<article class="mb15" id="last_download" style="order: {DOWNLOAD_POSITION}; -webkit-order: {DOWNLOAD_POSITION}; -ms-flex-order: {DOWNLOAD_POSITION}">
	<header>
		<div class="pull-right text-right">
			<a class="btn btn-pbt btn-xs" href="{PATH_TO_ROOT}/download" title="${Langloader::get_message('link.to.download', 'common', 'HomeLanding')}">
				${Langloader::get_message('link.to.download', 'common', 'HomeLanding')}
			</a>
		</div>
		<h2>
			${Langloader::get_message('last.download', 'common', 'HomeLanding')}
		</h2>
	</header>
	# START download_items #
		<div class="media">
			<div class="media-left">
				<a href="{download_items.U_LINK}" title="{download_items.NAME}">
					# IF download_items.C_PICTURE #
						<img class="media-object" src="{download_items.U_PICTURE}" alt="{download_items.NAME}" />
					# ELSE #
						<img class="media-object" src="{PATH_TO_ROOT}/templates/{THEME}/theme/images/logo.png" alt="{download_items.NAME}" />
					# ENDIF #
				</a>
			</div>
			<div class="media-body">
				<div class="media-heading">
					<div class="pull-right text-right">
						<div class="btn-group btn-group-xs">
							# IF download_items.C_EDIT #
								<a class="btn btn-info" href="{download_items.U_EDIT}" title="${LangLoader::get_message('edit', 'common')}"><i class="fa fa-edit"></i></a>
							# ENDIF #
							# IF download_items.C_DELETE #
								<a class="btn btn-danger" href="{download_items.U_DELETE}" title="${LangLoader::get_message('delete', 'common')}" data-confirmation="delete-element"><i class="fa fa-delete"></i></a>
							# ENDIF #
						</div>
					</div>
					<h3>
						<a href="{download_items.U_LINK}">{download_items.NAME}</a>
					</h3>
				</div>

				<div class="well well-sm">
					# IF download_items.C_AUTHOR_DISPLAYED #
						${LangLoader::get_message('by', 'common')}
						# IF download_items.C_AUTHOR_EXIST #<a itemprop="author" href="{download_items.U_AUTHOR}" class="{download_items.USER_LEVEL_CLASS}" # IF C_USER_GROUP_COLOR # style="color:{download_items.USER_GROUP_COLOR}"# ENDIF #>{download_items.PSEUDO}</a># ELSE #{download_items.PSEUDO}# ENDIF #,
					# ENDIF #
					${TextHelper::lcfirst(LangLoader::get_message('the', 'common'))} <time datetime="{download_items.DATE_ISO8601}" itemprop="datePublished">{download_items.DATE}</time>
					${TextHelper::lcfirst(LangLoader::get_message('in', 'common'))} <a itemprop="about" href="{download_items.U_CATEGORY}">{download_items.CATEGORY_NAME}</a>
				</div>
				<p class="item-desc">
					{download_items.DESCRIPTION}# IF download_items.C_READ_MORE #... <a href="{download_items.U_LINK}">[${LangLoader::get_message('read-more', 'common')}]</a># ENDIF #
				</p>
			</div>


		</div>
	# END download_items #
	<footer></footer>
</article>
