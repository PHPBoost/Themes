<div id="${escape(HTML_ID)}_field" class="form-element# IF C_REQUIRED_AND_HAS_VALUE # constraint-status-right# ENDIF #"# IF C_HIDDEN # style="display:none;"# ENDIF #>
	<label class="control-label" for="${escape(HTML_ID)}">
		{LABEL}
		# IF C_DESCRIPTION #<small class="help-block">{DESCRIPTION}</small># ENDIF #
	</label>
	<div id="onblurContainerResponse${escape(HTML_ID)}" class="picture-status-constraint# IF C_REQUIRED # field-required# ENDIF #">
		# START fieldelements #
		{fieldelements.ELEMENT}
		# END fieldelements #
		<p class="text-status-constraint alert alert-danger" style="display:none" id="onblurMessageResponse${escape(HTML_ID)}"></p>
	</div>
</div>
# INCLUDE ADD_FIELD_JS #
