
<article id="last_download" style="order: {DOWNLOAD_POSITION}; -webkit-order: {DOWNLOAD_POSITION}; -ms-flex-order: {DOWNLOAD_POSITION}">
	<header>
		<h2>
			${Langloader::get_message('last.download', 'common', 'HomeLanding')}
			<span class="actions">
				<a href="{PATH_TO_ROOT}/download" title="${Langloader::get_message('link.to.download', 'common', 'HomeLanding')}">
					${Langloader::get_message('link.to.download', 'common', 'HomeLanding')}
				</a>
			</span>
		</h2>
	</header>
	<div class="content"> 
	# START download_items #	
		<div class="module-home">					
			<div class="home-cat">
				<a itemprop="about" href="{download_items.U_CATEGORY}" title="{download_items.CATEGORY_NAME}">{download_items.CATEGORY_NAME}</a>
			</div>
			
			<a href="{download_items.U_LINK}" title="{download_items.NAME}" class="picture-link">
				<div class="home-picture" # IF download_items.C_PICTURE #style="background-image: url({download_items.U_PICTURE})"# ENDIF # itemprop="thumbnailUrl"></div>
			</a>
			
			<div class="home-more">
				<span class="float-left"><i class="fa fa-clock-o"></i> {download_items.DATE} </span>
				<span class="float-right"><i class="fa fa-download"></i> {download_items.NUMBER_DOWNLOADS} </span>
			</div>
			
			<h3>
				<a href="{download_items.U_LINK}">{download_items.NAME}</a>
				<span class="actions">
					# IF download_items.C_EDIT #
						<a href="{download_items.U_EDIT}" title="${LangLoader::get_message('edit', 'common')}"><i class="fa fa-edit"></i></a>
					# ENDIF #
					# IF download_items.C_DELETE #
						<a href="{download_items.U_DELETE}" title="${LangLoader::get_message('delete', 'common')}" data-confirmation="delete-element"><i class="fa fa-delete"></i></a>
					# ENDIF #
				</span>
			</h3>
			<div class="content">
				{download_items.DESCRIPTION}# IF download_items.C_READ_MORE #... # ENDIF #
			</div>
			
		</div>		
	# END download_items #
	</div>            
	<footer></footer>
</article>