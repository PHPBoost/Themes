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
# IF C_VERTICAL #
	<form action="{U_FORM_VALID}" onsubmit="return check_search_mini_form_post();" method="post">
		<div id="mini-search-form" class="input-element-button">
			<input type="search" id="TxTMiniSearched" name="q" value="{TEXT_SEARCHED}" placeholder="{L_SEARCH}...">
			<input type="hidden" id="search-token" name="token" value="{TOKEN}">
			<button type="submit" name="search_submit"><i class="fa fa-search" aria-hidden="true"></i><span class="sr-only">{L_SEARCH}</span></button>
		</div>
		<a href="{U_ADVANCED_SEARCH}" class="small">{L_ADVANCED_SEARCH}</a>
	</form>
# ELSE #
	<div id="search-menu" class="search-container horizontal-fieldset float-right">
		<div class="search-top">
			<a href="" class="search-button" aria-label="{L_SEARCH}"><i class="fa fa-search" aria-hidden="true"></i></a>
		</div>
		<div class="search-content">
			<i class="close-search fa fa-window-close" aria-hidden="true"></i> <span class="sr-only">${LangLoader::get_message('close', 'main')}</span>
			<form action="{U_FORM_VALID}" onsubmit="return check_search_mini_form_post();" method="post">
				<div id="mini-search-form" class="input-element-button">
					<input type="search" id="TxTMiniSearched" name="q" value="{TEXT_SEARCHED}" placeholder="{L_SEARCH}...">
					<input type="hidden" id="search-token" name="token" value="{TOKEN}">
					<button class="search-submit" type="submit" name="search_submit"><i class="fa fa-search" aria-hidden="true"></i><span class="sr-only">{L_SEARCH}</span></button>
				</div>
				<a href="{U_ADVANCED_SEARCH}" class="advanced-search">{L_ADVANCED_SEARCH}</a>
			</form>
		</div>
	</div>
	<script>
		<!--
		jQuery('.search-button').opensubmenu({
			osmTarget: '.search-container',
			osmCloseExcept: '.search-content *',
			osmCloseButton: '.close-search',
		});
		-->
	</script>
# ENDIF #
</div>
