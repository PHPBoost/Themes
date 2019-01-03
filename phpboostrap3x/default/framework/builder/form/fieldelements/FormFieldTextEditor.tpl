<input
	type="{TYPE}"
	name="${escape(NAME)}"
	id="${escape(HTML_ID)}"
	value="{VALUE}"
	class="form-control # IF C_READONLY #low-opacity # ENDIF #${escape(CLASS)}"
	# IF C_PLACEHOLDER # placeholder="{PLACEHOLDER}" # ENDIF #
	# IF C_PATTERN # pattern="{PATTERN}" # ENDIF #
	# IF C_DISABLED # disabled="disabled" # ENDIF #
	# IF C_READONLY # readonly="readonly" # ENDIF # />
