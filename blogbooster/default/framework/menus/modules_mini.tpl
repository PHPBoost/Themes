# IF C_VERTICAL #
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
		jQuery('\#{ID}').swapMini();
	</script>
# ELSE #
	<div id="{ID}"class="block-container# IF C_HIDDEN_WITH_SMALL_SCREENS # hidden-small-screens# ENDIF #">
		<div class="sub-title">{TITLE}</div>
		{CONTENTS}
	</div>
# ENDIF #
