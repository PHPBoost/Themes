# IF HAS_TIME #
<meta http-equiv="refresh" content="{TIME};url=${U_LINK}">
# ENDIF #
<section id="module-user-error-404" class="row">
	<header class="col-sm-12"><h1>${escape(TITLE)}</h1></header>
	<div class="col-sm-12">
		<div class="alert alert-info text-center">
			{MESSAGE}
		</div>

		<div class="text-center">
			<i class="fa fa-warning fa-4x"></i>
		</div>

		<div class="alert alert-warning text-center">
			${LangLoader::get_message('error.404.message', 'status-messages-common')}
		</div>

		<div class="clearfix"></div>
		# IF HAS_LINK #
		<div class="text-center">
			<a class="btn btn-primary" href="{U_LINK}" title="${escape(LINK_NAME)}">${escape(LINK_NAME)}</a>
		</div>
		# ENDIF #
	</div>
	<footer></footer>
</section>
