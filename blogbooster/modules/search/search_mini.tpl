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
-->
</script>

# IF C_VERTICAL #
	<form role="search" action="{U_FORM_VALID}" onsubmit="return check_search_mini_form_post();" method="post">
		<div id="mini-search-form" class="input-element-button">
			<input type="search" id="TxTMiniSearched" title="{L_YOUR_SEARCH}" name="q" value="{TEXT_SEARCHED}" placeholder="{L_SEARCH_TITLE}..." aria-labelledby="SearchButton">
			<input type="hidden" id="search-token" name="token" value="{TOKEN}">
			<button id="SearchButton" class="submit" type="submit" name="search_submit"><i class="fa fa-search" aria-hidden="true"></i><span class="sr-only">{L_SEARCH}</span></button>
		</div>
		<a href="{U_ADVANCED_SEARCH}" class="small">{L_ADVANCED_SEARCH}</a>
	</form>
# ELSE #
	<div class="search-tab">
		<div class="search-tab-btn mini-gradient b-blue"><i class="fa fa-search"></i> <span class="search-btn-title">{L_SEARCH}</span></div>
		<form action="{U_FORM_VALID}" onsubmit="return check_search_mini_form_post();" method="post">
			<div id="mini-search-form" class="input-element-button">
				<input type="search" id="TxTMiniSearched" title="{L_YOUR_SEARCH}" name="q" value="{TEXT_SEARCHED}" placeholder="{L_SEARCH_TITLE}..." aria-labelledby="SearchButton">
				<input type="hidden" id="search-token" name="token" value="{TOKEN}">
				<button id="SearchButton" class="submit gradient b-blue" type="submit" name="search_submit"><i class="fa fa-search" aria-hidden="true"></i><span class="sr-only">{L_SEARCH}</span></button>
			</div>
		</form>
	</div>
	<script>
		jQuery('.search-tab-btn').opensubmenu({
			osmTarget: '.search-tab',
			osmCloseExcept: 'form *',
			osmCloseButton: '',
			osmClass: 'opened'
		})
	</script>
# ENDIF #
