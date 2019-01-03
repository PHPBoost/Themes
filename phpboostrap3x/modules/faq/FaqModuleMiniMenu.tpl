# IF C_QUESTION #
<div class="row mb15">
	<a class="col-xs-3" href="{U_LINK}" title="{QUESTION}">
		<img src="{PATH_TO_ROOT}/faq/faq.png" alt="{@module_title}" itemprop="image" />
	</a>
	<a href="{U_LINK}" class="col-xs-9">{QUESTION}</a>
</div>
# ELSE #
<div class="mb15">
	${LangLoader::get_message('no_item_now', 'common')}
</div>
# ENDIF #
<p class="text-center">
	<a href="${relative_url(FaqUrlBuilder::home())}" class="btn btn-pbt">{@module_title}</a>
</p>
