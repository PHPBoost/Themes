
<article id="download" style="order: {DOWNLOAD_POSITION}; -webkit-order: {DOWNLOAD_POSITION}; -ms-flex-order: {DOWNLOAD_POSITION}">
	<header>
		<h2>
			${Langloader::get_message('last.download', 'common', 'HomeLanding')}
		</h2>
		<span class="actions">
			<a href="{PATH_TO_ROOT}/download">
				${Langloader::get_message('link.to.download', 'common', 'HomeLanding')}
			</a>
		</span>
	</header>
	<div class="content">
	# START item #
		<div class="module-home">
			<div class="home-cat">
				<a itemprop="about" href="{item.U_CATEGORY}">{item.CATEGORY_NAME}</a>
			</div>

			<a href="{item.U_LINK}" class="picture-link">
				<div class="home-picture" # IF item.C_PICTURE #style="background-image: url({item.U_PICTURE})"# ENDIF # itemprop="thumbnailUrl"></div>
			</a>

			<div class="home-more">
				<span class="float-left"><i class="fa fa-clock-o" aria-hidden="true"></i> {item.DATE} </span>
				<span class="float-right"><i class="fa fa-download" aria-hidden="true"></i> {item.NUMBER_DOWNLOADS} </span>
			</div>

			<h3>
				<a href="{item.U_LINK}">{item.NAME}</a>
			</h3>
			<span class="actions">
				# IF item.C_EDIT #
					<a href="{item.U_EDIT}" aria-label="${LangLoader::get_message('edit', 'common')}"><i class="fa fa-edit" aria-hidden="true"></i></a>
				# ENDIF #
				# IF item.C_DELETE #
					<a href="{item.U_DELETE}" aria-label="${LangLoader::get_message('delete', 'common')}" data-confirmation="delete-element"><i class="fa fa-delete" aria-hidden="true"></i></a>
				# ENDIF #
			</span>
			<div class="content">
				{item.DESCRIPTION}# IF item.C_READ_MORE #... # ENDIF #
			</div>

		</div>
	# END item #
	</div>
	<footer></footer>
</article>
