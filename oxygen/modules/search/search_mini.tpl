<script>
<!--
	function check_search_mini_form_post()
	{
		var textSearched = document.getElementById('TxTMiniSearched').value;
		if (textSearched.length > 3)
		{
			textSearched = escape_xmlhttprequest(textSearched);
			return true;
		}
		else
		{
			alert('{WARNING_LENGTH_STRING_SEARCH}');
			return false;
		}
	}
	
	jQuery(document).ready(function() {
		jQuery('#search-token').val(TOKEN);
	});
-->
</script>

<form action="{U_FORM_VALID}" onsubmit="return check_search_mini_form_post();" method="post" style="float:right;">
	<div id="mini-search-form" class="input-element-button">
		<button type="submit" name="search_submit"><i class="fa fa-search"></i></button>
		<input type="search" id="TxTMiniSearched" name="q" value="{TEXT_SEARCHED}" placeholder="{L_SEARCH}...">
		<input type="hidden" id="search-token" name="token" value="{TOKEN}">
	</div>
	# IF C_VERTICAL #<a href="{U_ADVANCED_SEARCH}" class="small">{L_ADVANCED_SEARCH}</a># ENDIF #
</form>
