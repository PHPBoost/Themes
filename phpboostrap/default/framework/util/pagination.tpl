
<ul class="pagination# IF C_FULL # pagination-block# ENDIF #">
	# START page #
	<li # IF page.C_CURRENT_PAGE #class="active"# ENDIF #>
		# IF page.C_PREVIOUS #
		<a href="{page.URL}" rel="prev" title="" class="prev-page"><span aria-hidden="true"><i class="fa fa-angle-double-left"></span></i></a>
		# ENDIF #

		# IF page.NAME #
		<a href="{page.URL}" title="{page.NAME}">{page.NAME}</a>
		# ENDIF #

		# IF page.C_NEXT #
		<a href="{page.URL}" rel="next" title="" class="next-page"><span aria-hidden="true"><i class="fa fa-angle-double-right"></span></i></a>
		# ENDIF #
	</li>
	# END page #
</ul>
