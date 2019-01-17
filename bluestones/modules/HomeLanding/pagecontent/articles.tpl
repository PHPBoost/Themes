
<article id="articles" style="order: {ARTICLES_POSITION}; -webkit-order: {ARTICLES_POSITION}; -ms-flex-order: {ARTICLES_POSITION}">
	<header>
		<h2>
			${Langloader::get_message('last.articles', 'common', 'HomeLanding')}
		</h2>
			<span class="actions">
				<a href="{PATH_TO_ROOT}/articles">
					${Langloader::get_message('link.to.articles', 'common', 'HomeLanding')}
				</a>
			</span>
	</header>
	<div class="content">
	# START item #
		<div class="module-home">

			<div class="home-cat">
				<a itemprop="about" href="{item.U_CATEGORY}">{item.CATEGORY_NAME}</a>
			</div>

			<a href="{item.U_ARTICLE}" class="picture-link">
				<div class="home-picture" # IF item.C_HAS_PICTURE #style="background-image: url({item.PICTURE})"# ENDIF # itemprop="thumbnailUrl"></div>
			</a>

			<div class="home-more">
				<span class="float-left"><time datetime="{item.DATE_ISO8601}" itemprop="datePublished">{item.DATE_SHORT}</time> </span>
				<span class="float-right"><i class="fa fa-eye" aria-hidden="true"></i> {item.NUMBER_VIEW}</span>
			</div>

			<h3>
				<a href="{item.U_ARTICLE}">{item.TITLE}</a>
			</h3>
			<span class="actions">
				# IF item.C_EDIT #
					<a href="{item.U_EDIT_ARTICLE}" aria-label="${LangLoader::get_message('edit', 'common')}"><i class="fa fa-edit" aria-hidden="true"></i></a>
				# ENDIF #
				# IF item.C_DELETE #
					<a href="{item.U_DELETE_ARTICLE}" aria-label="${LangLoader::get_message('delete', 'common')}" data-confirmation="delete-element"><i class="fa fa-delete" aria-hidden="true"></i></a>
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
