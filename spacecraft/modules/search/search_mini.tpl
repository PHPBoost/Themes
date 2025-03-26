<script>
	let textSearched = document.getElementById('search-text').value;

	const searchInput = document.getElementById('search-text');
	const searchButton = document.getElementById('search-button');
	searchButton.style.opacity = '0.3';

	let onChange = (e) => {
		if(e.target.value.length >= 3)
		{
			searchButton.style.opacity = '1';
			searchButton.toggleAttribute('disabled');
		}
		else
		{
			searchButton.style.opacity = '0.3';
			searchButton.setAttribute('disabled', '');
		}
	};
	searchInput.addEventListener('input', onChange, false);

	function check_search_mini_form_post()
	{
		if (textSearched.length >= 3)
		{
			textSearched = escape_xmlhttprequest(textSearched);
			return true;
		}
		else
		{
			alert(${escapejs(@search.warning.length)});
			return false;
		}
	}

	jQuery(document).ready(function() {
		jQuery('#search-token').val(TOKEN);
	});
</script>

# IF C_HORIZONTAL #
	<div id="module-mini-search" class="cell-hover-container cell-mini# IF C_HIDDEN_WITH_SMALL_SCREENS # hidden-small-screens# ENDIF #">
		<span class="cell-hover-trigger" data-tooltip-pos="left" aria-label="{@search.module.title}"><i class="fa fa-search fa-lg" aria-hidden="true"></i></span>
		<div id="horizontal-search-form" class="cell-hover-content">
# ELSE #
	<div id="vertical-search-form" class="cell-form">
# ENDIF #
		<form role="search" action="{U_FORM_VALID}" onsubmit="return check_search_mini_form_post();" method="post">
			<fieldset>
				<legend class="sr-only">{@search.module.title}</legend>
				<div class="grouped-inputs">
					<input class="grouped-element" type="search" id="search-text" name="q" value="{SEARCH_TEXT}" placeholder="{@theme.searched.text}..." aria-labelledby="search-button">
					<input type="hidden" id="search-token" name="token" value="{TOKEN}">
					<button id="search-button" class="button submit" disabled type="submit" name="search_submit" aria-label="{@form.search}"><i class="fa fa-search" aria-hidden="true"></i></button>
				</div>
			</fieldset>
		</form>
# IF C_HORIZONTAL #
		</div>
	</div>
# ELSE #
		<div class="cell-body">
			<div class="cell-content align-center"><a href="{U_ADVANCED_SEARCH}" class="button small offload">{@search.advanced}</a></div>
		</div>
	</div>
# ENDIF #
