<div id="{ID}" class="module-mini-container# IF C_HIDDEN_WITH_SMALL_SCREENS # hidden-small-screens# ENDIF #">
	<div class="module-mini-top">
		<div class="sub-title">{TITLE}</div>
	</div>
	<div class="module-mini-contents">
		{CONTENTS}
	</div>
	<div class="module-mini-bottom">
	</div>
</div>
<script>

	jQuery('\#{ID} .module-mini-top').on('click',function() {
		jQuery('\#{ID} .module-mini-top').parent().toggleClass('opened');
		if(jQuery('\#{ID}').hasClass('opened')) {
			var value = jQuery('\#{ID} .module-mini-contents').innerHeight();
			var openedHeight = (value + 60);
		}
		else
			var openedHeight = 60;

		jQuery('\#{ID}').css('height', openedHeight+'px');
	});

</script>
