<div id="${escape(HTML_ID)}_field" class="form-group# IF C_REQUIRED_AND_HAS_VALUE # constraint-status-right# ENDIF ## IF C_HAS_FIELD_CLASS # {FIELD_CLASS}# ENDIF #"# IF C_HIDDEN # style="display:none;"# ENDIF #>
	# IF C_HAS_LABEL #
		<label class="col-sm-4 control-label" for="${escape(HTML_ID)}">
			{LABEL}
			# IF C_DESCRIPTION #
			<small class="help-block">{DESCRIPTION}</small>
			# ENDIF #
		</label>
	# ENDIF #

	<div id="onblurContainerResponse${escape(HTML_ID)}" class="col-sm-8 # IF C_AUTH_UPLOAD #form-field-upload-file# ENDIF # picture-status-constraint# IF C_REQUIRED # field-required # ENDIF #">
		<div class="input-group">
			<input type="text" name="${escape(NAME)}" id="${escape(HTML_ID)}" value="{VALUE}" class="form-control ${escape(CLASS)}"# IF C_DISABLED # disabled="disabled"# ENDIF ## IF C_READONLY # readonly="readonly"# ENDIF #/>
			# IF C_AUTH_UPLOAD #
			<div class="input-group-addon">
				<a title="${LangLoader::get_message('files_management', 'main')}" href="" class="fa fa-cloud-upload" onclick="window.open('{PATH_TO_ROOT}/user/upload.php?popup=1&amp;fd=${escape(NAME)}&amp;parse=true&amp;no_path=true', '', 'height=512,width=768,resizable=yes,scrollbars=yes');return false;"></a>
			</div>
			# ENDIF #
		</div>

		<span class="text-status-constraint" style="display:none" id="onblurMessageResponse${escape(HTML_ID)}"></span>
	</div>
</div>
<div id="${escape(HTML_ID)}_preview"# IF C_PREVIEW_HIDDEN # style="display:none;"# ENDIF # class="row# IF C_HAS_FIELD_CLASS # {FIELD_CLASS}# ENDIF #">
	<label class="col-sm-4" for="${escape(HTML_ID)}_preview">
		${LangLoader::get_message('form.picture.preview', 'common')}
	</label>

	<div class="col-sm-8 image-preview">
		<img id="${escape(HTML_ID)}_preview_picture" src="# IF NOT C_PREVIEW_HIDDEN #{FILE_PATH}# ENDIF #" alt="preview" style="vertical-align:top" />
	</div>
</div>

# INCLUDE ADD_FIELD_JS #

<script>
<!--

jQuery("#" + ${escapejs(NAME)}).blur(function(){
	var fileName = HTMLForms.getField(${escapejs(ID)}).getValue();
	var extension = fileName.substring(fileName.lastIndexOf('.')+1);

	if ((/^(png|gif|jpg|jpeg|tiff|ico|svg)$/i).test(extension)) {
		jQuery('#${escape(HTML_ID)}_preview').show();
		jQuery.ajax({
			url: PATH_TO_ROOT + '/kernel/framework/ajax/dispatcher.php?url=/image/preview/',
			type: "post",
			dataType: "json",
			data: {token: ${escapejs(TOKEN)}, image: HTMLForms.getField(${escapejs(ID)}).getValue()},
			beforeSend: function(){
				jQuery('#${escape(HTML_ID)}_preview_picture').hide();
				jQuery('#${escape(HTML_ID)}_preview_picture').after('<i id="${escape(HTML_ID)}_preview_loading" class="fa fa-spinner fa-spin"></i>');
			},
			success: function(returnData){
				jQuery('#${escape(HTML_ID)}_preview_loading').remove();

				if (returnData.url) {
					jQuery('#${escape(HTML_ID)}_preview_picture').attr("src", returnData.url);
					jQuery('#${escape(HTML_ID)}_preview_picture').show();
				} else {
					jQuery('#${escape(HTML_ID)}_preview').hide();
				}
			},
			error: function(e){
				jQuery('#${escape(HTML_ID)}_preview_loading').remove();
				jQuery('#${escape(HTML_ID)}_preview').hide();
			}
		});
	} else {
		jQuery('#${escape(HTML_ID)}_preview').hide();
	}
});
-->
</script>
