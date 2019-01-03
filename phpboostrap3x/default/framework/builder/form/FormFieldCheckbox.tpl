<script>
	<!--
	jQuery(document).ready(function() {
		jQuery("#${escape(NAME)}").click(function() {
			HTMLForms.get("${escape(FORM_ID)}").getField("${escape(ID)}").enableValidationMessage();
			HTMLForms.get("${escape(FORM_ID)}").getField("${escape(ID)}").liveValidate();
		});
	});
	-->
</script>



	<div id="${escape(HTML_ID)}_field" class="form-group# IF C_REQUIRED_AND_HAS_VALUE # constraint-status-right# ENDIF #"# IF C_HIDDEN # style="display:none;"# ENDIF #>
			# IF C_HAS_LABEL #
				<label class="col-sm-4" for="${escape(HTML_ID)}">
					{LABEL}
					# IF C_DESCRIPTION #
					<small class="help-block ">{DESCRIPTION}</small>
					# ENDIF #
				</label>
			# ENDIF #

			<div id="onblurContainerResponse${escape(HTML_ID)}" class="col-sm-8# IF C_HAS_FORM_FIELD_CLASS # {FORM_FIELD_CLASS}# ENDIF # picture-status-constraint# IF C_REQUIRED # field-required # ENDIF #">
				<input type="checkbox" name="${escape(NAME)}" id="${escape(HTML_ID)}" # IF C_DISABLED # disabled="disabled" # ENDIF # # IF C_CHECKED # checked="checked" # ENDIF # # IF C_READONLY # readonly="readonly" # ENDIF #/>
				<span class="text-status-constraint" style="display:none" id="onblurMessageResponse${escape(HTML_ID)}"></span>
			</div>

	</div>


# INCLUDE ADD_FIELD_JS #
