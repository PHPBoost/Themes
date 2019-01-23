<div id="${escape(HTML_ID)}"# IF C_HIDDEN # style="display:none;"# ENDIF #>
# START actions #
	<label>
		{actions.LABEL} # IF actions.DESCRIPTION #<small class="help-block">{actions.DESCRIPTION}</small># ENDIF #
	</label>
	<div>
		{actions.AUTH_FORM}
    </div>
# END actions #
</div>
