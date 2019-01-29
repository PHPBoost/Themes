# IF C_QUOTE #
    <p >{QUOTE}</p>
    <p><a href="{U_AUTHOR_LINK}" class="small text-strong">{AUTHOR}</a></p>
# ELSE #
    <p>${LangLoader::get_message('no_item_now', 'common')}</p>
# ENDIF #
<div class="text-center">
    <a class="btn btn-pbt" href="{U_MODULE_HOME_PAGE}">{@module_title}</a>
</div>
