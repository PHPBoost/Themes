<script>
<!--
	function bbcode_page()
	{
		var page = prompt('{@articles.form.add_page.title}');

		if (page) {
			var textarea = $('ArticlesFormController_contents');
			var start = textarea.selectionStart;
			var end = textarea.selectionEnd;

			if (start == end) {
				var insert_value = '[page]' + page + '[/page]';
				textarea.value = textarea.value.substr(0, start) + insert_value + textarea.value.substr(end);
			}
			else {
				var value = textarea.value;
				var insert_value = '[page]' + value.substring(start, end) + '[/page]';
				textarea.value = textarea.value.substr(0, start) + insert_value + textarea.value.substr(end);
			}

			textarea.selectionStart = start + insert_value.length;
			textarea.selectionEnd = start + insert_value.length;
		}
	}
	
	function page_to_edit(page) 
	{
		var searchText = page;
		var content_input = $('ArticlesFormController_contents');
		var matched_page = content_input.value.indexOf('[page]' + searchText + '[/page]');

		if (matched_page != -1)
		{
			content_input.focus();
			content_input.selectionStart = matched_page + 6;
			content_input.selectionEnd = matched_page + searchText.length + 6;
			content_input.scrollTop = content_input.scrollHeight;
		}
	}

	function setPagePosition(page) {
		page_to_edit(page);
	}
	
	# IF C_PAGE #
	window.onload = function(){setPagePosition({PAGE})};
	# ENDIF #
-->
</script>
# INCLUDE MSG # # INCLUDE FORM #