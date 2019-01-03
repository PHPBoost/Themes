<div id="${escape(HTML_ID)}_field"# IF C_HIDDEN # style="display:none;" # ENDIF # class="form-group# IF C_REQUIRED_AND_HAS_VALUE # constraint-status-right# ENDIF ## IF C_HAS_FIELD_CLASS # {FIELD_CLASS}# ENDIF #">
	# IF C_HAS_LABEL #
		<label class="col-sm-4"# IF NOT C_HIDE_FOR_ATTRIBUTE # for="${escape(HTML_ID)}"# ENDIF #>
			{LABEL}
			# IF C_DESCRIPTION #
			<small class="help-block">{DESCRIPTION}</small>
			# ENDIF #
		</label>
	# ENDIF #

	<div id="onblurContainerResponse${escape(HTML_ID)}" class="# IF C_HAS_LABEL #col-sm-8# ENDIF ## IF C_HAS_FORM_FIELD_CLASS # {FORM_FIELD_CLASS}# ENDIF # picture-status-constraint# IF C_REQUIRED # field-required # ENDIF #">
		# START fieldelements #
		{fieldelements.ELEMENT}
		# END fieldelements #
		<p class="text-status-constraint alert alert-danger" style="display:none" id="onblurMessageResponse${escape(HTML_ID)}"></p>
	</div>

</div>
# INCLUDE ADD_FIELD_JS #
