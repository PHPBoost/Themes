<script>
<!--
function refresh_comments() {
	jQuery.ajax({
		url: PATH_TO_ROOT + '/kernel/framework/ajax/dispatcher.php?url=/comments/display/',
		type: "post",
		dataType: "html",
		data: {module_id: ${escapejs(MODULE_ID)}, id_in_module: ${escapejs(ID_IN_MODULE)}, topic_identifier: ${escapejs(TOPIC_IDENTIFIER)}, token: ${escapejs(TOKEN)}},
		success: function(returnData){
			jQuery("#comments-list").append(returnData);
			jQuery('#refresh-comments').remove();
		}
	});
}

# IF C_DISPLAY_VIEW_ALL_COMMENTS #
jQuery(document).ready(function(){
	jQuery("#refresh-comments").click(function() {
		refresh_comments();
	});
});
# ENDIF #

-->
</script>

<section id="comments-list" class="row">
	<header class="col-sm-12">
		<h3>${LangLoader::get_message('comments', 'comments-common')}</h3>
	</header>
	# IF C_DISPLAY_FORM #
	<div class="col-sm-12 mb15" id="comment-form">
		# INCLUDE COMMENT_FORM #
	</div>
	# ENDIF #

	# INCLUDE KEEP_MESSAGE #

	# IF C_MODERATE #
	<div class="col-sm-12 text-center">
		# IF C_IS_LOCKED #
		<div class="alert alert-danger">
			<a href="{U_UNLOCK}"><i class="fa fa-unlock text-success"></i> {@unlock}</a>
		</div>
		# ELSE #
		<div class="alert alert-success">
			<a href="{U_LOCK}"><i class="fa fa-lock text-danger"></i> {@lock}</a>
		</div>
		# ENDIF #
	</div>
	# ENDIF #
	<div class="col-sm-12">
		# INCLUDE COMMENTS_LIST #
	</div>

	<footer></footer>
</section>

# IF C_DISPLAY_VIEW_ALL_COMMENTS #
<div class="text-center">
	<button type="submit" class="btn btn-primary" id="refresh-comments">{@allComments}</button>
</div>
# ENDIF #
