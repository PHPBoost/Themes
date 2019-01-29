# IF HAS_TIME #
<meta http-equiv="refresh" content="{TIME};url=${U_LINK}">
# ENDIF #
<section id="module-user-error" class="row">
	<header class="col-sm-12"><h1>${escape(TITLE)}</h1></header>
	<div class="col-sm-12">
		<div class="{ERROR_TYPE}">{MESSAGE}</div>
		# IF HAS_LINK #
		<div class="text-center">
			<strong><a class="btn btn-primary" href="{U_LINK}" title="${escape(LINK_NAME)}">${escape(LINK_NAME)}</a></strong>
		</div>
		# ENDIF #
	</div>
	<footer></footer>
</section>
