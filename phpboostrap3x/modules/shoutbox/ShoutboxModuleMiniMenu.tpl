<script>
<!--
function shoutbox_add_message()
{
	var pseudo = jQuery("#shout-pseudo").val();
	var contents = jQuery("#shout-contents").val();

	if (pseudo && contents)
	{
		jQuery.ajax({
			url: '${relative_url(ShoutboxUrlBuilder::ajax_add())}',
			type: "post",
			dataType: "json",
			data: {'pseudo' : pseudo, 'contents' : contents, 'token' : '{TOKEN}'},
			beforeSend: function(){
				jQuery('#shoutbox-refresh').html('<i class="fa fa-spin fa-spinner"></i>');
			},
			success: function(returnData){
				if(returnData.code > 0) {
					shoutbox_refresh_messages_box();
					jQuery('#shout-contents').val('');
				} else {
					switch(returnData.code)
					{
						case -1:
							alert(${escapejs(LangLoader::get_message('e_flood', 'errors'))});
						break;
						case -2:
							alert("{L_ALERT_LINK_FLOOD}");
						break;
						case -3:
							alert(${escapejs(LangLoader::get_message('e_incomplete', 'errors'))});
						break;
						case -4:
							alert(${escapejs(LangLoader::get_message('error.auth', 'status-messages-common'))});
						break;
					}
				}
				jQuery('#shoutbox-refresh').html('<i class="fa fa-refresh"></i>');
			},
			error: function(e){
				alert(${escapejs(LangLoader::get_message('csrf_invalid_token', 'status-messages-common'))});
			}
		});
	} else {
		alert("${LangLoader::get_message('require_text', 'main')}");
		return false;
	}
}

function shoutbox_delete_message(id_message)
{
	if (confirm(${escapejs(LangLoader::get_message('confirm.delete', 'status-messages-common'))}))
	{
		jQuery.ajax({
			url: '${relative_url(ShoutboxUrlBuilder::ajax_delete())}',
			type: "post",
			dataType: "json",
			data: {'id' : id_message, 'token' : '{TOKEN}'},
			beforeSend: function(){
				jQuery('#shoutbox-refresh').html('<i class="fa fa-spin fa-spinner"></i>');
			},
			success: function(returnData){
				var code = returnData.code;

				if(code > 0) {
					jQuery('#shoutbox-message-' + code).remove();
				} else {
					alert("{@error.message.delete}");
				}
				jQuery('#shoutbox-refresh').html('<i class="fa fa-refresh"></i>');
			},
			error: function(e){
				alert(${escapejs(LangLoader::get_message('csrf_invalid_token', 'status-messages-common'))});
			}
		});
	}
}

function shoutbox_refresh_messages_box() {
	jQuery.ajax({
		url: '${relative_url(ShoutboxUrlBuilder::ajax_refresh())}',
		type: "post",
		dataType: "json",
		data: {'token' : '{TOKEN}'},
		beforeSend: function(){
			jQuery('#shoutbox-refresh').html('<i class="fa fa-spin fa-spinner"></i>');
		},
		success: function(returnData){
			jQuery('#shoutbox-messages-container').html(returnData);

			jQuery('#shoutbox-refresh').html('<i class="fa fa-refresh"></i>');
		},
		error: function(e){
			jQuery('#shoutbox-messages-container').html(e.responseText);

			jQuery('#shoutbox-refresh').html('<i class="fa fa-refresh"></i>');
		}
	});
}

# IF C_AUTOMATIC_REFRESH_ENABLED #setInterval(shoutbox_refresh_messages_box, {SHOUT_REFRESH_DELAY});# ENDIF #
-->
</script>
# IF C_DISPLAY_SHOUT_BBCODE #<script src="{PATH_TO_ROOT}/BBCode/templates/js/bbcode.js"></script># ENDIF #

<div id="shoutbox-messages-container"class="row# IF C_HORIZONTAL # shout-horizontal# ENDIF #"># INCLUDE SHOUTBOX_MESSAGES #</div>
# IF C_DISPLAY_FORM #
<form action="#" method="post" class="form-group">
	<div class="shout-form-container shout-pseudo-container">
		# IF NOT C_MEMBER #
		<div class="text-center mtb5">
			<label for="shout-pseudo"><small class="label label-info">${LangLoader::get_message('form.name', 'common')}</small></label>
			<input type="text" name="shout-pseudo" id="shout-pseudo" class="form-control" value="${LangLoader::get_message('visitor', 'user-common')}">
		</div>
		# ELSE #
		<input type="hidden" name="shout-pseudo" id="shout-pseudo" class="form-control" value="{SHOUTBOX_PSEUDO}">
		# ENDIF #
	</div>
	<div class="text-center">
		<label for="shout-contents"><small class="label label-default">${LangLoader::get_message('message', 'main')}</small></label>
		<textarea class="form-control" id="shout-contents" name="shout-contents"# IF C_VALIDATE_ONKEYPRESS_ENTER # onkeypress="if(event.keyCode==13){shoutbox_add_message();}"# ENDIF # rows="2"></textarea>
	</div>
	<div id="shoutbox-bbcode-container" class="text-center">
		# IF C_DISPLAY_SHOUT_BBCODE #
		<div class="btn-group btn-group-sm">
			<a href="javascript:bb_display_block('1', 'shout-contents');" onmouseover="bb_hide_block('1', 'shout-contents', 1);" onmouseout="bb_hide_block('1', 'shout-contents', 0);" class="btn btn-default fa bbcode-icon-smileys" title="${LangLoader::get_message('bb_smileys', 'common', 'BBCode')}"></a>
			<div class="bbcode-block-container" style="display:none;" id="bb-block1shout-contents">
				<ul class="bbcode-block block-smileys" onmouseover="bb_hide_block('1', 'shout-contents', 1);" onmouseout="bb_hide_block('1', 'shout-contents', 0);">
					# START smileys #
					<li>
						<a href="" onclick="insertbbcode('{smileys.CODE}', 'smile', 'shout-contents');return false;" class="bbcode-hover" title="{smileys.CODE}"><img src="{smileys.URL}" alt="{smileys.CODE}"></a>
					</li>
					# END smileys #
				</ul>
			</div>
			<a href="" class="btn btn-default fa bbcode-icon-bold# IF C_BOLD_DISABLED # icon-disabled# ENDIF #" onclick="# IF NOT C_BOLD_DISABLED #insertbbcode('[b]', '[/b]', 'shout-contents');# ENDIF #return false;" title="${LangLoader::get_message('bb_bold', 'common', 'BBCode')}"></a>
			<a href="" class="btn btn-default fa bbcode-icon-italic# IF C_ITALIC_DISABLED # icon-disabled# ENDIF #" onclick="# IF NOT C_ITALIC_DISABLED #insertbbcode('[i]', '[/i]', 'shout-contents');# ENDIF #return false;" title="${LangLoader::get_message('bb_italic', 'common', 'BBCode')}"></a>
			<a href="" class="btn btn-default fa bbcode-icon-underline# IF C_UNDERLINE_DISABLED # icon-disabled# ENDIF #" onclick="# IF NOT C_UNDERLINE_DISABLED #insertbbcode('[u]', '[/u]', 'shout-contents');# ENDIF #return false;" title="${LangLoader::get_message('bb_underline', 'common', 'BBCode')}"></a>
			<a href="" class="btn btn-default fa bbcode-icon-strike# IF C_STRIKE_DISABLED # icon-disabled# ENDIF #" onclick="# IF NOT C_STRIKE_DISABLED #insertbbcode('[s]', '[/s]', 'shout-contents');# ENDIF #return false;" title="${LangLoader::get_message('bb_strike', 'common', 'BBCode')}"></a>
		</div>
		# ENDIF #
	</div>
	<div class="text-center">
		<div class="btn-group m5">
			<button onclick="shoutbox_add_message();" class="btn btn-primary" type="button">${LangLoader::get_message('submit', 'main')}</button>
			<input type="hidden" name="token" value="{TOKEN}">
			<a class="btn btn-info" href="" onclick="shoutbox_refresh_messages_box();return false;" id="shoutbox-refresh" title="${LangLoader::get_message('refresh', 'main')}"><i class="fa fa-refresh"></i></a>
		</div>
	</div>
</form>
# ELSE #
	# IF C_DISPLAY_NO_WRITE_AUTHORIZATION_MESSAGE #
	<div class="clearfix"></div>
	<span class="alert alert-warning">{@error.post.unauthorized}</span>
	<p class="text-center">
		<a class="btn btn-info" href="" onclick="shoutbox_refresh_messages_box();return false;" id="shoutbox-refresh" title="${LangLoader::get_message('refresh', 'main')}"><i class="fa fa-refresh"></i></a>
	</p>
	# ENDIF #
# ENDIF #
<div class="text-center">
	<a class="btn btn-pbt" href="${relative_url(ShoutboxUrlBuilder::home())}" title="">{@archives}</a>
</div>
