<div id="${escape(HTML_ID)}_field" class="mb15# IF C_REQUIRED_AND_HAS_VALUE # constraint-status-right# ENDIF ## IF C_EDITOR_ENABLED # editor-{EDITOR_NAME}# ENDIF #"# IF C_HIDDEN # style="display:none;"# ENDIF #>
	<label class="control-label" for="${escape(HTML_ID)}">
		{LABEL}
		# IF C_DESCRIPTION #<small class="help-block">{DESCRIPTION}</small># ENDIF #
	</label>

	# IF C_EDITOR_ENABLED #
	{EDITOR}
	# ENDIF #

	<div id="onblurContainerResponse${escape(HTML_ID)}" class="picture-status-constraint# IF C_REQUIRED # field-required # ENDIF #">
		<textarea id="${escape(HTML_ID)}" name="${escape(HTML_ID)}" rows="{ROWS}" cols="{COLS}" class="form-control# IF C_READONLY # low-opacity# ENDIF # ${escape(CLASS)}" onblur="{ONBLUR}"# IF C_DISABLED # disabled="disabled"# ENDIF ## IF C_READONLY #readonly="readonly" # ENDIF #>{VALUE}</textarea>
		<span class="text-status-constraint" style="display:none" id="onblurMessageResponse${escape(HTML_ID)}"></span>
	</div>

	# IF C_EDITOR_ENABLED #
	<div class="text-center">
		<div class="form-element-preview">{PREVIEW_BUTTON}</div>
		# IF C_RESET_BUTTON_ENABLED #
		<div class="form-element-reset">{RESET_BUTTON}</div>
		# ENDIF #
	</div>
	# ENDIF #

</div>

# INCLUDE ADD_FIELD_JS #
