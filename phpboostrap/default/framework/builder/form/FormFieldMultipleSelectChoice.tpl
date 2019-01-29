<script>
<!--
	function ${escapejscharacters(NAME)}_select_all()
	{
		var select = jQuery('#' + ${escapejs(HTML_ID)})[0];
		for(i = 0; i < select.length; i++)
		{
			if (select[i])
				select[i].selected = true;
		}
	}
	function ${escapejscharacters(NAME)}_unselect_all()
	{
		var select = jQuery('#' + ${escapejs(HTML_ID)})[0];
		for(i = 0; i < select.length; i++)
		{
			if (select[i])
				select[i].selected = false;
		}
	}

	jQuery(document).ready(function() {
		jQuery("#${escapejscharacters(NAME)}_select_all").click(function() {
			${escapejscharacters(NAME)}_select_all();
			# IF C_REQUIRED #
			HTMLForms.get("${escape(FORM_ID)}").getField("${escape(ID)}").enableValidationMessage();
			HTMLForms.get("${escape(FORM_ID)}").getField("${escape(ID)}").liveValidate();
			# ENDIF #
		});
		jQuery("#${escapejscharacters(NAME)}_unselect_all").click(function() {
			${escapejscharacters(NAME)}_unselect_all();
			# IF C_REQUIRED #
			HTMLForms.get("${escape(FORM_ID)}").getField("${escape(ID)}").enableValidationMessage();
			HTMLForms.get("${escape(FORM_ID)}").getField("${escape(ID)}").liveValidate();
			# ENDIF #
		});
	});
-->
</script>
<select multiple="multiple" name="${escape(NAME)}[]" id="${escape(HTML_ID)}" class="form-control ${escape(CSS_CLASS)}"# IF C_DISABLED # disabled="disabled"# ENDIF ## IF C_HIDDEN # style="display:none;"# ENDIF #>
	# START options # # INCLUDE options.OPTION # # END options #
</select>
<div class="btn-group btn-group-xs">
	<a href="" id="${escapejscharacters(NAME)}_select_all" onclick="return false;" class="btn btn-default">{L_SELECT_ALL}</a>
	<a href="" id="${escapejscharacters(NAME)}_unselect_all" onclick="return false;" class="btn btn-default">{L_UNSELECT_ALL}</a>
</div>
<span class="help-block">{L_SELECT_EXPLAIN}</span>
