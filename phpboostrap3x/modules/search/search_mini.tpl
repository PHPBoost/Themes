<div id="module-mini-search"# IF C_HIDDEN_WITH_SMALL_SCREENS # class="hidden-xs"# ENDIF #>
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

	<form action="{U_FORM_VALID}" onsubmit="return check_search_mini_form_post();" method="post">
		# IF C_VERTICAL #
		<div id="mini-search-form" class="input-group">
			<input class="form-control" type="search" id="TxTMiniSearched" name="q" value="{TEXT_SEARCHED}" placeholder="{L_SEARCH}...">
			<input type="hidden" id="search-token" name="token" value="{TOKEN}">
			<p class="input-group-btn">
				<button class="btn btn-pbt" type="submit" name="search_submit"><i class="fa fa-search"></i></button>
			</p>

		</div>
		<p class="text-center">
			<a class="btn btn-info" href="{U_ADVANCED_SEARCH}">{L_ADVANCED_SEARCH}</a>
		</p>
		# ELSE #
		<div id="mini-search-form" class="input-group col-md-2 pull-right">
			<input class="form-control" type="search" id="TxTMiniSearched" name="q" value="{TEXT_SEARCHED}" placeholder="{L_SEARCH}...">
			<input type="hidden" id="search-token" name="token" value="{TOKEN}">
			<span class="input-group-btn">
				<button class="btn btn-default" type="submit" name="search_submit"><i class="fa fa-search"></i></button>
			</span>
		</div>
		# ENDIF #
	</form>
</div>
