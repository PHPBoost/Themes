
<article id="last_news" style="order: {NEWS_POSITION}; -webkit-order: {NEWS_POSITION}; -ms-flex-order: {NEWS_POSITION}">
	<header>
		<h2>
			${Langloader::get_message('last.news', 'common', 'HomeLanding')}
			<span class="actions">
				<a href="{PATH_TO_ROOT}/news" title="${Langloader::get_message('link.to.news', 'common', 'HomeLanding')}">
					${Langloader::get_message('link.to.news', 'common', 'HomeLanding')}
				</a>
			</span>
		</h2>
	</header>
	<div class="content">     
	# START news_items #	
		<div class="module-home">					
			<div class="home-cat">
				<a itemprop="about" href="{news_items.U_CATEGORY}" title="{news_items.CATEGORY_NAME}">{news_items.CATEGORY_NAME}</a>
			</div>
			
			<a href="{news_items.U_LINK}" title="{news_items.NAME}" class="picture-link">
				<div class="home-picture" # IF news_items.C_PICTURE #style="background-image: url({news_items.U_PICTURE})"# ENDIF # itemprop="thumbnailUrl"></div>
			</a>
			
			<div class="home-more">
				<span class="float-left"><i class="fa fa-clock-o"></i> {news_items.DATE} </span>
			</div>
			
			<h3>
				<a href="{news_items.U_LINK}">{news_items.NAME}</a>
				<span class="actions">
					# IF news_items.C_EDIT #
						<a href="{news_items.U_EDIT}" title="${LangLoader::get_message('edit', 'common')}"><i class="fa fa-edit"></i></a>
					# ENDIF #
					# IF news_items.C_DELETE #
						<a href="{news_items.U_DELETE}" title="${LangLoader::get_message('delete', 'common')}" data-confirmation="delete-element"><i class="fa fa-delete"></i></a>
					# ENDIF #
				</span>
			</h3>
			<div class="content">
				<div itemprop="text">{news_items.DESCRIPTION}# IF news_items.C_READ_MORE #... # ENDIF #</div>
			</div>
			
		</div>	
	# END news_items #
	</div>            
	<footer></footer>
</article>