# IF C_HOUR #
<script>
<!--
jQuery(document).ready(function() {
	if (jQuery("#${escape(HTML_ID)}_hours").length)
	{
		jQuery("#${escape(HTML_ID)}_hours").blur(function() {
			HTMLForms.get("${escape(FORM_ID)}").getField("${escape(ID)}").enableValidationMessage();
			HTMLForms.get("${escape(FORM_ID)}").getField("${escape(ID)}").liveValidate();
		});
	}
	if (jQuery("#${escape(HTML_ID)}_minutes").length)
	{
		jQuery("#${escape(HTML_ID)}_minutes").blur(function() {
			HTMLForms.get("${escape(FORM_ID)}").getField("${escape(ID)}").enableValidationMessage();
			HTMLForms.get("${escape(FORM_ID)}").getField("${escape(ID)}").liveValidate();
		});
	}
});
-->
</script>
# ENDIF #
<div id="${escape(HTML_ID)}_field" class="form-group pos-rel# IF C_HOUR # date-control# ENDIF ## IF C_REQUIRED_AND_HAS_VALUE # constraint-status-right# ENDIF #"# IF C_HIDDEN # style="display:none;"# ENDIF #>
	# IF C_HAS_LABEL #
		<label class="col-sm-4 control-label" for="${escape(HTML_ID)}">
			{LABEL}
			# IF C_DESCRIPTION #
			<small class="help-block">{DESCRIPTION}</small>
			# ENDIF #
		</label>
	# ENDIF #

	<div id="onblurContainerResponse${escape(HTML_ID)}" class="col-sm-8 # IF C_HAS_FORM_FIELD_CLASS # {FORM_FIELD_CLASS}# ENDIF # picture-status-constraint# IF C_REQUIRED # field-required # ENDIF #">
			<div class="input-group">
				{CALENDAR}
				# IF C_HOUR #
				<span class="input-group-addon">{L_AT}</span>
				<input type="number" min="0" max="23" id="${escape(HTML_ID)}_hours" class="form-control hours-control" name="${escape(HTML_ID)}_hours" value="{HOURS}" # IF C_DISABLED # disabled="disabled"# ENDIF ## IF C_READONLY # readonly="readonly"# ENDIF #/>
				<input type="number" min="0" max="59" id="${escape(HTML_ID)}_minutes" class="form-control minutes-control" name="${escape(HTML_ID)}_minutes" value="{MINUTES}"# IF C_DISABLED # disabled="disabled"# ENDIF ## IF C_READONLY # readonly="readonly"# ENDIF #/>
				<span class="input-group-addon">{L_H}</span>
				# ENDIF #
			</div>
			<span class="text-status-constraint alert alert-danger" style="display:none" id="onblurMessageResponse${escape(HTML_ID)}"></span>
	</div>

</div>

# INCLUDE ADD_FIELD_JS #
