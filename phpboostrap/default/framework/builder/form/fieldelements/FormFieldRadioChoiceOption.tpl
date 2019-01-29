<div class="form-field-radio">
    <input id="${escape(ID)}" type="radio" name="${escape(NAME)}" value="${escape(VALUE)}" # IF C_CHECKED # checked="checked" # ENDIF # # IF C_DISABLE # disabled="disabled" # ENDIF #>
    <label for="${escape(ID)}"></label>
    <span class="form-field-radio-span"> {LABEL}</span>
</div>
