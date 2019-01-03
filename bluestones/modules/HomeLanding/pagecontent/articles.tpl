
<article id="last_articles" style="order: {ARTICLES_POSITION}; -webkit-order: {ARTICLES_POSITION}; -ms-flex-order: {ARTICLES_POSITION}">
	<header>
		<h2>
			${Langloader::get_message('last.articles', 'common', 'HomeLanding')}
			<span class="actions">
				<a href="{PATH_TO_ROOT}/articles" title="${Langloader::get_message('link.to.articles', 'common', 'HomeLanding')}">
					${Langloader::get_message('link.to.articles', 'common', 'HomeLanding')}
				</a>
			</span>
		</h2>
	</header>
	<div class="content">
	# START articles_items #
		<div class="module-home">				
					
			<div class="home-cat">
				<a itemprop="about" href="{articles_items.U_CATEGORY}" title="{articles_items.CATEGORY_NAME}">{articles_items.CATEGORY_NAME}</a>
			</div>
					
			<a href="{articles_items.U_ARTICLE}" title="{articles_items.TITLE}" class="picture-link">
				<div class="home-picture" # IF articles_items.C_HAS_PICTURE #style="background-image: url({articles_items.PICTURE})"# ENDIF # itemprop="thumbnailUrl"></div>
			</a>
			
			<div class="home-more"> 
				<span class="float-left"><time datetime="{articles_items.DATE_ISO8601}" itemprop="datePublished">{articles_items.DATE_SHORT}</time> </span>
				<span class="float-right"><i class="fa fa-eye"></i> {articles_items.NUMBER_VIEW}</span> 
			</div>
			
			<h3>
				<a href="{articles_items.U_ARTICLE}">{articles_items.TITLE}</a>
				<span class="actions">
					# IF articles_items.C_EDIT #
						<a href="{articles_items.U_EDIT_ARTICLE}" title="${LangLoader::get_message('edit', 'common')}"><i class="fa fa-edit"></i></a>
					# ENDIF #
					# IF articles_items.C_DELETE #
						<a href="{articles_items.U_DELETE_ARTICLE}" title="${LangLoader::get_message('delete', 'common')}" data-confirmation="delete-element"><i class="fa fa-delete"></i></a>
					# ENDIF #
				</span>
			</h3>
			<div class="content">
				{articles_items.DESCRIPTION}# IF articles_items.C_READ_MORE #... # ENDIF #
			</div>
			
		</div>
	# END articles_items #
	</div>
	<footer></footer>
</article>