# IF C_VERTICAL_BLOCK #
<div class="panel panel-pbt# IF C_HIDDEN_WITH_SMALL_SCREENS # hidden-xs# ENDIF #">
	# IF C_DISPLAY_TITLE #
	<div class="panel-heading">
		<div class="panel-title">{TITLE}</div>
	</div>
	# ENDIF #
	<div class="panel-body">
		{CONTENT}
	</div>
</div>
# ELSE #
<div class="panel panel-pbt# IF C_HIDDEN_WITH_SMALL_SCREENS # hidden-xs# ENDIF #">
	# IF C_DISPLAY_TITLE #
	<div class="panel-heading">
		<div class="panel-title">{TITLE}</div>
	</div>
	# ENDIF #
	<div class="panel-body">
		{CONTENT}
	</div>
</div>
# ENDIF #
