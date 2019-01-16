
<article id="articles-cat" style="order: {ARTICLES_CAT_POSITION}; -webkit-order: {ARTICLES_CAT_POSITION}; -ms-flex-order: {ARTICLES_CAT_POSITION}">
	<header>
		<h2>
			${Langloader::get_message('last.articles.cat', 'common', 'HomeLanding')} {CATEGORY_NAME}
		</h2>
		<span class="actions">
			<a href="{PATH_TO_ROOT}/articles">
				${Langloader::get_message('link.to.articles', 'common', 'HomeLanding')}
			</a>
		</span>
	</header>
	<div class="content">
		# IF C_NO_ARTICLES_ITEM #
		<div class="center">
			${LangLoader::get_message('no.articles.item', 'common', 'HomeLanding')}
		</div>
		# ENDIF #
	# START item #
		<div class="module-home" itemscope="itemscope" itemtype="http://schema.org/CreativeWork">

			<div class="home-cat">
				<a itemprop="about" href="{item.U_CATEGORY}">{item.CATEGORY_NAME}</a>
			</div>

			<a href="{item.U_ARTICLE}" class="picture-link">
				<div class="home-picture" # IF item.C_HAS_PICTURE #style="background-image: url({item.PICTURE})"# ENDIF # itemprop="thumbnailUrl"></div>
			</a>

			<div class="home-more">
				<span class="float-left"><i class="fa fa-clock-o" aria-hidden="true"></i> <time datetime="{item.DATE_ISO8601}" itemprop="datePublished">{item.DATE_SHORT}</time> </span>
				<span class="float-right"><i class="fa fa-eye" aria-hidden="true"></i> {item.NUMBER_VIEW}</span>
			</div>

			<h3>
				<a href="{item.U_ARTICLE}">{item.TITLE}</a>
			</h3>

			<div class="content">
				<div itemprop="text"># IF item.C_DESCRIPTION #{item.DESCRIPTION}# ELSE #{item.CONTENTS}# ENDIF ## IF item.C_READ_MORE #... # ENDIF #</div>
			</div>

		</div>
	# END item #
	</div>
	<footer></footer>
</article>
