
<article id="news" style="order: {NEWS_POSITION}; -webkit-order: {NEWS_POSITION}; -ms-flex-order: {NEWS_POSITION}">
	<header>
		<h2>
			${Langloader::get_message('last.news', 'common', 'HomeLanding')}
		</h2>
		<span class="actions">
			<a href="{PATH_TO_ROOT}/news">
				${Langloader::get_message('link.to.news', 'common', 'HomeLanding')}
			</a>
		</span>
	</header>
	<div class="content">
	# START news_items #
		<div class="module-home">
			<div class="home-cat">
				<a itemprop="about" href="{news_items.U_CATEGORY}">{news_items.CATEGORY_NAME}</a>
			</div>

			<a href="{news_items.U_LINK}" class="picture-link">
				<div class="home-picture" # IF news_items.C_PICTURE #style="background-image: url({news_items.U_PICTURE})"# ENDIF # itemprop="thumbnailUrl"></div>
			</a>

			<div class="home-more">
				<span class="float-left"><i class="fa fa-clock-o" aria-hidden="true"></i> {news_items.DATE} </span>
			</div>

			<h3>
				<a href="{news_items.U_LINK}">{news_items.NAME}</a>
			</h3>
			<span class="actions">
				# IF news_items.C_EDIT #
					<a href="{news_items.U_EDIT}" aria-label="${LangLoader::get_message('edit', 'common')}"><i class="fa fa-edit" aria-hidden="true"></i></a>
				# ENDIF #
				# IF news_items.C_DELETE #
					<a href="{news_items.U_DELETE}" aria-label="${LangLoader::get_message('delete', 'common')}" data-confirmation="delete-element"><i class="fa fa-delete" aria-hidden="true"></i></a>
				# ENDIF #
			</span>
			<div class="content">
				<div itemprop="text">{news_items.DESCRIPTION}# IF news_items.C_READ_MORE #... # ENDIF #</div>
			</div>

		</div>
	# END news_items #
	</div>
	<footer></footer>
</article>
