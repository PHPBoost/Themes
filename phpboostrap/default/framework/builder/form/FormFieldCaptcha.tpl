# IF C_IS_ENABLED #
	<div id="${escape(HTML_ID)}_field" class="row" # IF C_HIDDEN # style="display:none;"# ENDIF # class="form-element">
		<label class="col-sm-4" for="${escape(HTML_ID)}">* {LABEL} # IF DESCRIPTION #<small class="help-block">{DESCRIPTION}</small> # ENDIF #</label>
		<div class="col-sm-8">
			{CAPTCHA}
		</div>
	</div>
	# INCLUDE ADD_FIELD_JS #
# ENDIF #
