<ul class="list-group">
    # START messages #
    <li class="list-group-item">
        <span id="shoutbox-message-{messages.ID}">
            <div class="btn-group btn-group-xs">
                # IF messages.C_DELETE #
                <a href=""
                    onclick="shoutbox_delete_message({messages.ID});return false;"
                    title="${LangLoader::get_message('delete', 'common')}"
                    id="delete_{messages.ID}"
                    class="btn btn-danger">
                    <i class="fa fa-remove"></i>
                </a>
                # ENDIF #
                # IF C_DISPLAY_DATE #
                <small class="btn btn-default">{messages.DATE}</small>
                # ENDIF #
            # IF messages.C_AUTHOR_EXIST #
            <a href="{messages.U_AUTHOR_PROFILE}"
                class="btn btn-default {messages.USER_LEVEL_CLASS}"
                # IF messages.C_USER_GROUP_COLOR # style="color:{messages.USER_GROUP_COLOR}" # ENDIF #>
                {messages.PSEUDO}
            </a>
            # ELSE #
            <span class="btn btn-default">{messages.PSEUDO}</span>
            # ENDIF #
            </div>
            <div>
                {messages.CONTENTS}
            </div>            
    </li>

    # END messages #
</ul>
