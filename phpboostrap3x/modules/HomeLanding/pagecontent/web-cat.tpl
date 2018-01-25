
<article class="mb15" id="last_web" style="order: {WEB_CAT_POSITION}; -webkit-order: {WEB_CAT_POSITION}; -ms-flex-order: {WEB_CAT_POSITION}">
	<header>
		<div class="pull-right text-right">
			<a class="btn btn-pbt btn-xs" href="{PATH_TO_ROOT}/news" title="${Langloader::get_message('link.to.web', 'common', 'HomeLanding')}">
				${Langloader::get_message('link.to.web', 'common', 'HomeLanding')}
			</a>
		</div>
		<h2>
			${Langloader::get_message('last.web.cat', 'common', 'HomeLanding')} {CATEGORY_NAME}
		</h2>
	</header>
	<div class="row grid-columns">
		# IF C_NO_WEB_ITEM #
		<div class="col-sm-12 text-center">
			${LangLoader::get_message('no.web.item', 'common', 'HomeLanding')}
		</div>
		# ENDIF #
		# START item #
			<div class="col-sm-6 col-md-3">
				<a href="{item.U_LINK}" title="{item.NAME}" class="thumbnail">
					# IF item.C_HAS_PARTNER_PICTURE #
						<img class="item-picture" src="{item.U_PARTNER_PICTURE}" alt="{item.NAME}" itemprop="image" />
					# ELSE #
						{item.NAME}
					# ENDIF #
				</a>
			</li>
		# END item #
	</div>
	<footer></footer>
</article>
