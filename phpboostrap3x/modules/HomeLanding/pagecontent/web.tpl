
<article class="mb15" id="last_web" style="order: {WEB_POSITION}; -webkit-order: {WEB_POSITION}; -ms-flex-order: {WEB_POSITION}">
	<header>
		<div class="pull-right text-right">
			<a class="btn btn-pbt btn-xs" href="{PATH_TO_ROOT}/web" title="${Langloader::get_message('link.to.web', 'common', 'HomeLanding')}">
				${Langloader::get_message('link.to.web', 'common', 'HomeLanding')}
			</a>
		</div>
		<h2>
			${Langloader::get_message('last.web', 'common', 'HomeLanding')}
		</h2>
	</header>
	<div class="row grid-columns">
	# START web_items #

		<div class="col-sm-6 col-md-3">
			<a href="{web_items.U_LINK}" title="{web_items.NAME}" class="thumbnail">
				# IF web_items.C_HAS_PARTNER_PICTURE #
					<img class="item-picture" src="{web_items.U_PARTNER_PICTURE}" alt="{web_items.NAME}" />
				# ELSE #
					{web_items.NAME}
				# ENDIF #
			</a>
		</div>

	# END web_items #
	</div>
	<footer></footer>
</article>
