
<article id="last_download_cat" style="order: {DOWNLOAD_CAT_POSITION}; -webkit-order: {DOWNLOAD_CAT_POSITION}; -ms-flex-order: {DOWNLOAD_CAT_POSITION}">
	<header>
		<h2>
			${Langloader::get_message('last.download.cat', 'common', 'HomeLanding')} {CATEGORY_NAME}
			<span class="actions">
				<a href="{PATH_TO_ROOT}/download" title="${Langloader::get_message('link.to.download', 'common', 'HomeLanding')}">
					${Langloader::get_message('link.to.download', 'common', 'HomeLanding')}
				</a>
			</span>
		</h2>
	</header>
	<div class="content"> 
		# IF C_NO_DOWNLOAD_ITEM #
		<div class="center">
			${LangLoader::get_message('no.download.item', 'common', 'HomeLanding')}
		</div>
		# ENDIF #
	# START item #
		<div class="module-home" itemscope="itemscope" itemtype="http://schema.org/CreativeWork">
								
			<div class="home-cat">
				<a itemprop="about" href="{item.U_CATEGORY}" title="{item.CATEGORY_NAME}">{item.CATEGORY_NAME}</a>
			</div>
			
			<a href="{item.U_LINK}" title="{item.NAME}" class="picture-link">
				<div class="home-picture" # IF item.C_PICTURE #style="background-image: url({item.U_PICTURE})"# ENDIF # itemprop="thumbnailUrl"></div>
			</a>
			
			<div class="home-more">
				<span class="float-left"><i class="fa fa-clock-o"></i> {item.DATE} </span>
				<span class="float-right"><i class="fa fa-download"></i> {item.NUMBER_DOWNLOADS} </span>
			</div>
			
			<h3>
				<a href="{item.U_LINK}">{item.NAME}</a>
			</h3>
			
			<div class="content">
				<div itemprop="text"># IF item.C_DESCRIPTION #{item.DESCRIPTION}# ELSE #{item.CONTENTS}# ENDIF ## IF item.C_READ_MORE #... # ENDIF #</div>
			</div>
			
		</div>
	# END item #
	</div>            
	<footer></footer>
</article>