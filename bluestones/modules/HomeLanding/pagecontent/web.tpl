
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
		<div class="str3 str_wrap">
			# START item #
					<a href="{item.U_LINK}">
						# IF item.C_HAS_PARTNER_PICTURE #
							<img class="item-picture" src="{item.U_PARTNER_PICTURE}" alt="{item.NAME}" itemprop="image" />
						# ELSE #
							{item.NAME}
						# ENDIF #
					</a>
			# END item #
		</div>
	</div>
	<footer></footer>
</article>

<script src="{PATH_TO_ROOT}/templates/{THEME}/modules/HomeLanding/js/jquery.liMarquee.js"></script>
<script>
jQuery(window).load(function() {

	jQuery('.str3').liMarquee({
		direction: 'left',
		loop:-1,
		scrolldelay: 0,
		scrollamount:80,
		circular: true,
		drag: true
	});

})
</script>
