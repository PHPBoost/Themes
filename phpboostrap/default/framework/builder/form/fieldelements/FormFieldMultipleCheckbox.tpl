 # START choice #
	<div class="form-field-checkbox">
		<input type="checkbox" name="${escape(choice.HTML_ID)}" id="${escape(choice.HTML_ID)}" # IF choice.C_CHECKED # checked="checked"# ENDIF # />
		<label for="${escape(choice.HTML_ID)}"> </label>
		${escape(choice.NAME)}
	</div>
# END choice #
