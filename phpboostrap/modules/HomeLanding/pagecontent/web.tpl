
<article class="mb15" id="web" style="order: {WEB_POSITION}; -webkit-order: {WEB_POSITION}; -ms-flex-order: {WEB_POSITION}">
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
	# START item #

		<div class="col-sm-6 col-md-3">
			<a href="{item.U_LINK}" title="{item.NAME}" class="thumbnail">
				# IF item.C_HAS_PARTNER_PICTURE #
					<img class="item-picture" src="{item.U_PARTNER_PICTURE}" alt="{item.NAME}" />
				# ELSE #
					{item.NAME}
				# ENDIF #
			</a>
		</div>

	# END item #
	</div>
	<footer></footer>
</article>
