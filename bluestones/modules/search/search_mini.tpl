<script>
	function check_search_mini_form_post()
	{
		var textSearched = document.getElementById('search-text').value;
		if (textSearched.length >= 3)
		{
			textSearched = escape_xmlhttprequest(textSearched);
			return true;
		}
		else
		{
			alert('{@search.warning.length}');
			return false;
		}
	}

	jQuery(document).ready(function() {
		jQuery('#search-token').val(TOKEN);
	});
</script>

# IF C_VERTICAL #
	<form id="mini-search-form" role="search" action="{U_FORM_VALID}" onsubmit="return check_search_mini_form_post();" method="post">
		<fieldset>
			<legend class="sr-only">{@search.module.title}</legend>
			<div class="cell-form grouped-inputs">
				<input class="grouped-element" type="search" id="search-text" name="q" value="{SEARCH_TEXT}" placeholder="{@search.text}..." aria-labelledby="search-button">
				<input type="hidden" id="search-token" name="token" value="{TOKEN}">
				<button id="search-button" class="button submit" type="submit" name="search_submit" aria-label="{@form.search}"><i class="fa fa-search" aria-hidden="true"></i></button>
			</div>
		</fieldset>
	</form>
	<div class="cell-body">
		<div class="cell-content align-center"><a class="offload" href="{U_ADVANCED_SEARCH}" class="button small">{@search.advanced}</a></div>
	</div>
# ELSE #
	<div role="search" id="module-mini-search" class="cell-mini# IF C_HIDDEN_WITH_SMALL_SCREENS # hidden-small-screens# ENDIF #">
		<div class="cell">
			<a href="" class="search-button" aria-label="{@form.search}"><i class="fa fa-search" aria-hidden="true"></i></a>
			<div class="search-container">
				<i class="close-search fa fa-window-close" aria-hidden="true"></i> <span class="sr-only">${LangLoader::get_message('common.close', 'common-lang')}</span>
				<form role="search" action="{U_FORM_VALID}" onsubmit="return check_search_mini_form_post();" method="post">
					<fieldset>
						<legend class="sr-only">{@search.module.title}</legend>
						<div class="cell-form grouped-inputs grouped-auto grouped-search grouped-right">
							<input class="grouped-element" type="search" id="search-text" name="q" value="{SEARCH_TEXT}" placeholder="{@search.text}..." aria-labelledby="search-button">
							<input type="hidden" id="search-token" name="token" value="{TOKEN}">
							<button id="search-button" class="button submit" type="submit" name="search_submit" aria-label="{@form.search}"><i class="fa fa-search" aria-hidden="true"></i></button>
						</div>
					</fieldset>
				</form>
				<a class="offload" href="{U_ADVANCED_SEARCH}" class="button small bgc-full visitor advanced-search">{@search.advanced}</a>
			</div>

		</div>
	</div>
	<script>
		jQuery('.search-button').opensubmenu({
			osmTarget: '#module-mini-search',
			osmCloseExcept: '#module-mini-search .cell form',
			osmCloseButton: '.close-search',
		}).closest('#module-mini-search').parent().css('position', 'relative');
	</script>
# ENDIF #
