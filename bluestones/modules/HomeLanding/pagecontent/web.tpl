
<article id="web" style="order: {WEB_POSITION}; -webkit-order: {WEB_POSITION}; -ms-flex-order: {WEB_POSITION}">
	<header>
		<h2>
			${Langloader::get_message('last.web', 'common', 'HomeLanding')}
		</h2>
		<span class="actions">
			<a href="{PATH_TO_ROOT}/web">
				${Langloader::get_message('link.to.web', 'common', 'HomeLanding')}
			</a>
		</span>
	</header>
	<div class="content">
		# IF C_NO_WEB_ITEM #
		<div class="center">
			${LangLoader::get_message('no.web.item', 'common', 'HomeLanding')}
		</div>
		# ENDIF #
		<div id="web-partners">
			<ul class="item-wrap">
				# START item #
					<li class="item">
						<a class="" href="{item.U_LINK}">
							# IF item.C_HAS_PARTNER_PICTURE #
								<img class="item-picture" src="{item.U_PARTNER_PICTURE}" alt="{item.NAME}" itemprop="image" />
							# ELSE #
								{item.NAME}
							# ENDIF #
						</a>
					</li>
				# END item #
			</ul>
		</div>

	</div>
	<footer></footer>
</article>

<script src="{PATH_TO_ROOT}/templates/{THEME}/modules/HomeLanding/js/grouploop.js"></script>
<script>
	jQuery('#web-partners').grouploop({
		velocity: 2,
		forward: false,
		childWrapper: ".item-wrap",
		childNode: ".item",
		pauseOnHover: true,
		stickFirstItem: false,
		complete: null
	});
</script>
