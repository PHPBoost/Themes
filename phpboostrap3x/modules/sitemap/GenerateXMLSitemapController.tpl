# IF C_GOT_ERROR #
<div class="alert alert-warning">${i18nraw('generation_failed')}</div>
# ELSE #
<div class="alert alert-success">${i18nraw('generation_succeeded')}</div>
# ENDIF #
<br />
<div class="text-center">
	<button type="button" class="btn btn-primary" onclick="window.location = '{GENERATE}'">{@try_again}</button>
</div>
