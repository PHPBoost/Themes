<textarea
    id="${escape(HTML_ID)}"
    name="${escape(NAME)}"
    rows="{ROWS}"
    cols="{COLS}"
    class="form-control # IF C_READONLY #low-opacity # ENDIF #${escape(CLASS)}"
    style="{WIDTH}"
    # IF C_DISABLED # disabled="disabled" # ENDIF #
    # IF C_READONLY # readonly="readonly" # ENDIF #>
    {VALUE}
</textarea>
