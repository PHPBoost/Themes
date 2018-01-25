		<script>
		<!--
			var tinymce_editor = {C_TINYMCE_EDITOR};
			var enter_text = "{L_PLEASE_ENTER_A_TITLE}";
			var title_link = "{L_TITLE_LINK}";
			var enter_paragraph_name = "{L_PARAGRAPH_NAME}";
			var title_paragraph = "{PARAGRAPH_NAME}";
		-->
		</script>

		<script src="{PICTURES_DATA_PATH}/js/wiki.js"></script>

		<div class="bbcode wiki-bbcode text-center">
			<div class="bbcode-containers btn-toolbar">
				<div id="wiki-link-container" class="btn-group btn-group-xs">
					<a href="javascript:insert_link();" title="{L_INSERT_LINK}" class="btn btn-default">{L_INSERT_LINK} <i class="fa fa-link"></i></a>
				</div>
				<div id="wiki-paragraph-container" class="btn-group btn-group-xs">
					<a href="javascript:insert_paragraph(1);" title="{L_EXPLAIN_PARAGRAPH_1}" class="btn btn-default btn-wiki"><img src="{PICTURES_DATA_PATH}/images/bbcode/paragraph1.png" alt="{L_EXPLAIN_PARAGRAPH_1}" id="link1" /></a>
					<a href="javascript:insert_paragraph(2);" title="{L_EXPLAIN_PARAGRAPH_2}" class="btn btn-default btn-wiki"><img src="{PICTURES_DATA_PATH}/images/bbcode/paragraph2.png" alt="{L_EXPLAIN_PARAGRAPH_2}" id="link2" /></a>
					<a href="javascript:insert_paragraph(3);" title="{L_EXPLAIN_PARAGRAPH_3}" class="btn btn-default btn-wiki"><img src="{PICTURES_DATA_PATH}/images/bbcode/paragraph3.png" alt="{L_EXPLAIN_PARAGRAPH_3}" id="link3" /></a>
					<a href="javascript:insert_paragraph(4);" title="{L_EXPLAIN_PARAGRAPH_4}" class="btn btn-default btn-wiki"><img src="{PICTURES_DATA_PATH}/images/bbcode/paragraph4.png" alt="{L_EXPLAIN_PARAGRAPH_4}" id="link4" /></a>
					<a href="javascript:insert_paragraph(5);" title="{L_EXPLAIN_PARAGRAPH_5}" class="btn btn-default btn-wiki"><img src="{PICTURES_DATA_PATH}/images/bbcode/paragraph5.png" alt="{L_EXPLAIN_PARAGRAPH_5}" id="link5" /></a>
				</div>
				<div id="wiki-help-container" class="btn-group btn-group-xs">
					<a href="http://www.phpboost.com/wiki/" title="{L_HELP_WIKI_TAGS}" class="btn btn-default"><i class="fa bbcode-icon-help"></i></a>
				</div>
			</div>
		</div>
		<noscript><div>{L_NO_JS}</div></noscript>
