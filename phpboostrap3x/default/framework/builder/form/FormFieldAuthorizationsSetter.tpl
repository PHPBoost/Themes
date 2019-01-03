<div id="${escape(HTML_ID)}"# IF C_HIDDEN # style="display:none;"# ENDIF #>
# START actions #
    <div class="row mb15">
    	<label class="col-sm-4">
    		{actions.LABEL} # IF actions.DESCRIPTION #<small class="help-block">{actions.DESCRIPTION}</small># ENDIF #
    	</label>
    	<div class="col-sm-8">
    		{actions.AUTH_FORM}
        </div>
    </div>
# END actions #
</div>
