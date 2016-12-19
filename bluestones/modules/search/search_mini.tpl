<div id="module-mini-search" # IF C_HIDDEN_WITH_SMALL_SCREENS # class="hidden-small-screens"# ENDIF #>
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
	<script>
		<!--
		function open_submenu(myid)
		{
			jQuery('#' + myid).toggleClass('active');
		}
		-->
	</script>
# IF C_VERTICAL #
	<form action="{U_FORM_VALID}" onsubmit="return check_search_mini_form_post();" method="post">
		<div id="mini-search-form" class="input-element-button">
			<input type="search" id="TxTMiniSearched" name="q" value="{TEXT_SEARCHED}" placeholder="{L_SEARCH}...">
			<input type="hidden" id="search-token" name="token" value="{TOKEN}">
			<button type="submit" name="search_submit"><i class="fa fa-search"></i></button>
		</div>
		<a href="{U_ADVANCED_SEARCH}" class="small">{L_ADVANCED_SEARCH}</a>
	</form>
# ELSE #
	<div id="search-menu" class="horizontal-fieldset">
		<a href="" class="js-menu-button" onclick="open_submenu('search-menu');return false;" title="{L_SEARCH}"><i class="fa fa-search"></i></a>
		<div class="search-content">
			<form action="{U_FORM_VALID}" onsubmit="return check_search_mini_form_post();" method="post">
				<div id="mini-search-form" class="input-element-button">
					<input type="search" id="TxTMiniSearched" name="q" value="{TEXT_SEARCHED}" placeholder="{L_SEARCH}...">
					<input type="hidden" id="search-token" name="token" value="{TOKEN}">
					<button class="search-submit" type="submit" name="search_submit"><i class="fa fa-search"></i></button>
				</div>
				<a href="{U_ADVANCED_SEARCH}" class="advanced-search">{L_ADVANCED_SEARCH}</a>
			</form>
		</div>
	</div>
	
# ENDIF #
</div>
