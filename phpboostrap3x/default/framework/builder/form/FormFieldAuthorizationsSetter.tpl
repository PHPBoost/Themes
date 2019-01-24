<div id="${escape(HTML_ID)}"# IF C_HIDDEN # style="display:none;"# ENDIF #>
# START actions #
	<div class="col-sm-6 mb15">
		<label>
			{actions.LABEL} # IF actions.DESCRIPTION #<small class="help-block">{actions.DESCRIPTION}</small># ENDIF #
		</label>
		<div>
			{actions.AUTH_FORM}
	    </div>
	</div>

# END actions #
</div>
