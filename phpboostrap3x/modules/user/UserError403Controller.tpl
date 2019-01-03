# IF HAS_TIME #
<meta http-equiv="refresh" content="{TIME};url=${U_LINK}">
# ENDIF #
<section id="module-user-error-403" class="row">
	<header class="col-sm-12"><h1>${escape(TITLE)}</h1></header>
	<div class="col-sm-12">
		<i class="fa fa-forbidden fa-4x"></i>

		<div class="type-error">
			{MESSAGE}
		</div>

		<div class="message-error">
			${LangLoader::get_message('error.403.message', 'status-messages-common')}
		</div>

		<div class="clearfix"></div>
		# IF HAS_LINK #
		<div class="text-center">
			<strong><a class="btn btn-primary" href="{U_LINK}" title="${escape(LINK_NAME)}">${escape(LINK_NAME)}</a></strong>
		</div>
		# ENDIF #
	</div>
	<footer></footer>
</section>
