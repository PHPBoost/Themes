# IF C_HAS_SUB_LINK #
<li class="dropdown">
	<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false" title="{NAME}">
		<span class="caret"></span> {NAME} 
	</a>
	<ul class="dropdown-menu">
		# START element #
			# INCLUDE element.ELEMENT #
		# END element #
	</ul>
</li>
# ELSE #
<li>
	<a href="{U_LINK}" title="{NAME}">{NAME}</a>
</li>
# ENDIF #
