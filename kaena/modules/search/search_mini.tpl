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
		<div class="cell-content align-center"><a href="{U_ADVANCED_SEARCH}" class="button small offload">{@search.advanced}</a></div>
	</div>
# ELSE #
	<div class="header-mini-menu modal-container">
		<a class="pinned modal-button --module-mini-search" aria-label="{@search.module.title}"><i class="fa fa-search fa-fw" aria-hidden="true"></i></a>
		<div role="search" id="module-mini-search" class="modal modal-auto">
			<div class="modal-overlay close-modal" role="button" aria-label="@common.close"></div>
			<div class="modal-content">
                <span class="error hide-modal close-modal close-bbcode-sub" aria-label="{@common.close}"><i class="far fa-circle-xmark" aria-hidden="true"></i></span>
                <form role="search" action="{U_FORM_VALID}" onsubmit="return check_search_mini_form_post();" method="post">
					<fieldset>
						<legend class="sr-only">{@search.module.title}</legend>
						<div class="cell-form grouped-inputs grouped-auto grouped-search grouped-right">
							<input class="grouped-element" type="search" id="search-text" name="q" value="{SEARCH_TEXT}" placeholder="{@search.text}..." aria-labelledby="search-button">
							<input type="hidden" id="search-token" name="token" value="{TOKEN}">
							<button id="search-button" class="button submit" type="submit" name="search_submit" aria-label="{@form.search}"><i class="fa fa-search" aria-hidden="true"></i></button>
						</div>
						<div class="cell-body">
							<div class="cell-content align-center"><a href="{U_ADVANCED_SEARCH}" class="button small offload">{@search.advanced}</a></div>
						</div>
					</fieldset>
				</form>
			</div>
		</div>
	</div>
# ENDIF #
