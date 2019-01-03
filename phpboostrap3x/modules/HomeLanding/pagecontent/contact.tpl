
<article class="mb15" id="home_contact" style="order: {CONTACT_POSITION}; -webkit-order: {CONTACT_POSITION}; -ms-flex-order: {CONTACT_POSITION}">
	<header>
		<div class="pull-right text-right">
			<a class="btn btn-pbt btn-xs" href="{PATH_TO_ROOT}/contact" title="${Langloader::get_message('link.to.contact', 'common', 'HomeLanding')}">
				${Langloader::get_message('link.to.contact', 'common', 'HomeLanding')}
			</a>
		</div>
	</header>
	<div class="row">
		<div class="col-sm-12">
			# INCLUDE MSG #
			# IF C_MAIL_SENT #
				<a href="{PATH_TO_ROOT}/contact" title="${Langloader::get_message('send.another.email', 'common', 'HomeLanding')}">
					${Langloader::get_message('send.another.email', 'common', 'HomeLanding')}
				</a>
			# ELSE #
				# INCLUDE CONTACT_FORM #
			# ENDIF #
		</div>		
	</div>
	<footer></footer>
</article>
