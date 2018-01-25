# INCLUDE ADD_FIELDSET_JS #<div id="${escape(HTML_ID)}" class="form-group"# IF C_DISABLED # style="display:none;"# ENDIF #>
	    # IF C_DESCRIPTION #<div class="col-sm-12">${escape(DESCRIPTION)}</div># ENDIF #
	    # START elements #<div class="col-sm-6"># INCLUDE elements.ELEMENT #</div># END elements #
    </div>
	<div class="clearfix"></div>
