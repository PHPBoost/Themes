# IF C_MENU #
    # IF C_FIRST_MENU #
    <nav class="dynamic-menu horizontal-scrolling color-sub">
            <h5 class="links color-sub">
                # IF C_URL #<a href="{REL_URL}" title="{TITLE}"># ENDIF #
                        # IF C_IMG #<img src="{REL_IMG}" class="valign-middle" alt="" /> # ENDIF #
                        {TITLE}
                # IF C_URL #</a> # ENDIF #
            </h5>
            <ul class="horizontal-scrolling-menu">
                # START elements #{elements.DISPLAY}# END elements #
            </ul>
        </nav>
    # ENDIF #
    # IF C_NEXT_MENU #
        <li class="first-level-extend # IF C_FIRST_LEVEL #first-level # ELSE #extend# ENDIF # color-hor-scro">
            # IF C_URL #
                <a href="{REL_URL}"># IF C_IMG #<img src="{REL_IMG}"/> # ENDIF #{TITLE}</a>
            # ELSE #
                <span># IF C_IMG #<img src="{REL_IMG}"/> # ENDIF #{TITLE}</span>
            # ENDIF #
            <ul class="color-sub"># START elements #{elements.DISPLAY}# END elements #</ul>
        </li>
    # ENDIF #
# ELSE #
    <li class="# IF C_FIRST_LEVEL #first-level# ENDIF # color-hor-scro"><a href="{REL_URL}" title="{TITLE}"># IF C_IMG #<img src="{REL_IMG}"/> # ENDIF #{TITLE}</a></li>
# ENDIF #
