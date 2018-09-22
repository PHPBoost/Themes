		<span id="go-top"></span>

		# INCLUDE forum_top #

		<script>
		<!--
		function check_form_msg(){
			if(document.getElementById('contents').value == "") {
				alert("{L_REQUIRE_MESSAGE}");
				return false;
		    }
			return true;
		}
		function XMLHttpRequest_del(idmsg)
		{
			var xhr_object = xmlhttprequest_init('{PATH_TO_ROOT}/forum/xmlhttprequest.php?token={TOKEN}&del=1&idm=' + idmsg);
			xhr_object.onreadystatechange = function()
			{
				if( xhr_object.readyState == 4 && xhr_object.status == 200 && xhr_object.responseText != '-1' )
				{
					if( document.getElementById('d' + idmsg) )
						document.getElementById('d' + idmsg).style.display = 'none';
				}
			}
			xmlhttprequest_sender(xhr_object, null);
		}
		function XMLHttpRequest_change_statut()
		{
			var idtopic = {IDTOPIC};
			if( document.getElementById('forum_change_img') )
				document.getElementById('forum_change_img').innerHTML = '<i class="fa fa-spinner fa-spin"></i>';

			var xhr_object = xmlhttprequest_init('{PATH_TO_ROOT}/forum/xmlhttprequest.php?msg_d=' + idtopic + '&token={TOKEN}');
			xhr_object.onreadystatechange = function()
			{
				if( xhr_object.readyState == 4 && xhr_object.status == 200 )
				{
					if( document.getElementById('forum_change_img') )
						document.getElementById('forum_change_img').innerHTML = xhr_object.responseText == '1' ? '<i class="fa fa-msg-not-display"></i>' : '<i class="fa fa-msg-display"></i>';
					if( document.getElementById('forum_change_msg') )
						document.getElementById('forum_change_msg').innerHTML = xhr_object.responseText == '1' ? "{L_EXPLAIN_DISPLAY_MSG_BIS}" : "{L_EXPLAIN_DISPLAY_MSG}";
				}
			}
			xmlhttprequest_sender(xhr_object, null);
		}
		var is_track = {IS_TRACK};
		function XMLHttpRequest_track()
		{
			var idtopic = {IDTOPIC};
			if( document.getElementById('forum_track_img') )
				document.getElementById('forum_track_img').innerHTML = '<i class="fa fa-spinner fa-spin"></i>';

			xhr_object = xmlhttprequest_init('{PATH_TO_ROOT}/forum/xmlhttprequest.php?token={TOKEN}&' + (is_track ? 'ut' : 't') + '=' + idtopic);
			xhr_object.onreadystatechange = function()
			{
				if( xhr_object.readyState == 4 && xhr_object.status == 200 )
				{
					if( document.getElementById('forum_track_img') )
						document.getElementById('forum_track_img').innerHTML = xhr_object.responseText == '1' ? '<i class="fa fa-msg-not-track"></i>' : '<i class="fa fa-msg-track"></i>';
					if( document.getElementById('forum_track_msg') )
						document.getElementById('forum_track_msg').innerHTML = xhr_object.responseText == '1' ? "{L_UNTRACK}" : "{L_TRACK}";
					is_track = xhr_object.responseText == '1' ? true : false;
				}
			}
			xmlhttprequest_sender(xhr_object, null);
		}
		var is_track_pm = {IS_TRACK_PM};
		function XMLHttpRequest_track_pm()
		{
			var idtopic = {IDTOPIC};
			if( document.getElementById('forum_track_pm_img') )
				document.getElementById('forum_track_pm_img').innerHTML = '<i class="fa fa-spinner fa-spin"></i>';

			xhr_object = xmlhttprequest_init('{PATH_TO_ROOT}/forum/xmlhttprequest.php?token={TOKEN}&' + (is_track_pm ? 'utp' : 'tp') + '=' + idtopic);
			xhr_object.onreadystatechange = function()
			{
				if( xhr_object.readyState == 4 && xhr_object.status == 200 )
				{
					if( document.getElementById('forum_track_pm_img') )
						document.getElementById('forum_track_pm_img').innerHTML = xhr_object.responseText == '1' ? '<i class="fa fa-pm-not-track"></i>' : '<i class="fa fa-pm-track"></i>';
					if( document.getElementById('forum_track_pm_msg') )
						document.getElementById('forum_track_pm_msg').innerHTML = xhr_object.responseText == '1' ? "{L_UNSUSCRIBE_PM}" : "{L_SUSCRIBE_PM}";
					is_track_pm = xhr_object.responseText == '1' ? true : false;
				}
			}
			xmlhttprequest_sender(xhr_object, null);
		}
		var is_track_mail = {IS_TRACK_MAIL};
		function XMLHttpRequest_track_mail()
		{
			var idtopic = {IDTOPIC};
			if( document.getElementById('forum_track_mail_img') )
				document.getElementById('forum_track_mail_img').innerHTML = '<i class="fa fa-spinner fa-spin"></i>';

			xhr_object = xmlhttprequest_init('{PATH_TO_ROOT}/forum/xmlhttprequest.php?token={TOKEN}&' + (is_track_mail ? 'utm' : 'tm') + '=' + idtopic);
			xhr_object.onreadystatechange = function()
			{
				if( xhr_object.readyState == 4 && xhr_object.status == 200 )
				{
					if( document.getElementById('forum_track_mail_img') )
						document.getElementById('forum_track_mail_img').innerHTML = xhr_object.responseText == '1' ? '<i class="fa fa-mail-not-track"></i>' : '<i class="fa fa-mail-track"></i>';
					if( document.getElementById('forum_track_mail_msg') )
						document.getElementById('forum_track_mail_msg').innerHTML = xhr_object.responseText == '1' ? "{L_UNSUSCRIBE}" : "{L_SUSCRIBE}";
					is_track_mail = xhr_object.responseText == '1' ? true : false;
				}
			}
			xmlhttprequest_sender(xhr_object, null);
		}

		function del_msg(idmsg)
		{
			if( confirm('{L_DELETE_MESSAGE}') )
				XMLHttpRequest_del(idmsg);
		}

		# IF C_FOCUS_CONTENT #
		jQuery(document).ready(function() {
			document.getElementById('contents').focus();
		});
		# ENDIF #
		-->
		</script>

		<article itemscope="itemscope" itemtype="http://schema.org/Creativework" id="article-forum-{ID}">
			<header>
				<div class="pull-right text-right">
					# IF C_PAGINATION # # INCLUDE PAGINATION # # ENDIF #
					<div class="btn-group btn-group-xs">
						<span class="btn btn-warning">
							<a href="${relative_url(SyndicationUrlBuilder::rss('forum',ID))}" class="fa fa-syndication" title="${LangLoader::get_message('syndication', 'common')}"></a>
						</span>
						# IF C_FORUM_MODERATOR #
							# IF C_FORUM_LOCK_TOPIC #
							<span class="btn btn-success">
								<a href="action{U_TOPIC_LOCK}" title="{L_TOPIC_LOCK}" class="fa fa-ban" data-confirmation="{L_ALERT_LOCK_TOPIC}"></a>
							</span>
							# ELSE #
							<span class="btn btn-danger">
								<a href="action{U_TOPIC_UNLOCK}" title="{L_TOPIC_LOCK}" class="fa fa-unban" data-confirmation="{L_ALERT_UNLOCK_TOPIC}"></a>
							</span>
							# ENDIF #
							<span class="btn btn-info">
								<a href="move{U_TOPIC_MOVE}" title="{L_TOPIC_MOVE}" class="fa fa-move" data-confirmation="{L_ALERT_MOVE_TOPIC}"></a>
							</span>
						# ENDIF #
					</div>
				</div>
				<h2>

					{U_FORUM_CAT} <a itemscope="name" title="{TITLE_T}" href="{U_TITLE_T}"><span id="display_msg_title">{DISPLAY_MSG}</span>{TITLE_T}</a> <span class="desc-forum"><em>{DESC}</em></span>

				</h2>

			</header>

		# IF C_POLL_EXIST #
			<div class="content center">

				<form class="form-horizontal" method="post" action="action{U_POLL_ACTION}">
					<div class="table-responsive">
						<table class="table table-bordered table-striped">
							<thead>
								<tr>
									<th>{L_POLL}: {QUESTION}</th>
								</tr>
							</thead>
							<tbody>
								# START poll_radio #
								<tr>
									<td>
										<label>
											<input type="{poll_radio.TYPE}" name="forumpoll" value="{poll_radio.NAME}"> {poll_radio.ANSWERS}
										</label>
									</td>
								</tr>
								# END poll_radio #
								# START poll_checkbox #
								<tr>
									<td>
										<label>
											<input type="{poll_checkbox.TYPE}" name="{poll_checkbox.NAME}" value="{poll_checkbox.NAME}"> {poll_checkbox.ANSWERS}
										</label>
									</td>
								</tr>
								# END poll_checkbox #
								# START poll_result #
								<tr>
									<td>
										{poll_result.ANSWERS} : {poll_result.PERCENT}% - [{poll_result.NBRVOTE} {L_VOTE}]
										<div class="progress">
											<div class="progress-bar" role="progressbar" aria-valuenow="{poll_result.PERCENT}" aria-valuemin="0" aria-valuemax="100" style="width: {poll_result.PERCENT}%;">
												<span class="sr-only">{poll_result.PERCENT}%</span>
											</div>
										</div>
									</td>
								</tr>
								# END poll_result #
							</tbody>
						</table>
					</div>

					# IF C_POLL_QUESTION #
					<p class="text-center">
						<input type="hidden" name="token" value="{TOKEN}">
						<span class="btn-group">
							<button type="submit" name="valid_forum_poll" value="true" class="btn btn-primary">{L_VOTE}</button>
							<a class="btn btn-info" href="topic{U_POLL_RESULT}">{L_RESULT}</a>
						</span>
					</p>

					# ENDIF #
				</form>
			</div>
		# ENDIF #
			<div class="row">
		# START msg #
				<div class="mb15" id="d{msg.ID}">
					<div class="msg-container{msg.CLASS_COLOR}">
						<span id="m{msg.ID}"></span>
						<div class="panel panel-default">
							<div class="panel-heading">
								<div class="row">
									<div class="col-sm-4">
									# IF msg.C_FORUM_USER_LOGIN #
										<i class="fa # IF msg.C_USER_ONLINE #fa-online# ELSE #fa-offline# ENDIF #"></i> <a title="{msg.FORUM_USER_LOGIN}" class="msg-link-pseudo" href="{msg.U_FORUM_USER_PROFILE}">{msg.FORUM_USER_LOGIN}</a>
									# ELSE #
										<em>{L_GUEST}</em>
									# ENDIF #
									</div>
									<div class="col-sm-8">
										<div class="pull-right text-right">
											<div class="btn-group btn-group-xs">
												# IF C_AUTH_POST #
													<a class="btn btn-info" href="topic{msg.U_VARS_QUOTE}#go-bottom" title="{L_QUOTE}">
														<i class="fa fa-quote-right"></i>
													</a>
												# ENDIF #
												# IF msg.C_FORUM_MSG_EDIT #
													<a href="post{msg.U_FORUM_MSG_EDIT}" title="{L_EDIT}" class="btn btn-info">
														<i class="fa fa-edit"></i>
													</a>
												# ENDIF #
												# IF msg.C_FORUM_MSG_DEL #
													# IF msg.C_FORUM_MSG_DEL_MSG #
												<a href="action{msg.U_FORUM_MSG_DEL}" title="{L_DELETE}" id="dimgnojs{msg.ID}" class="btn btn-danger">
													<i class="fa fa-delete"></i>
												</a>
												<a onclick="del_msg('{msg.ID}');" id="dimg{msg.ID}" title="{L_DELETE}" class="btn btn-danger del-msg">
													<i class="fa fa-delete"></i>
												</a>
												<script>
												<!--
													document.getElementById('dimgnojs{msg.ID}').style.display = 'none';
													document.getElementById('dimg{msg.ID}').style.display = 'inline';
												-->
												</script>
													# ELSE #
												<a href="action{msg.U_FORUM_MSG_DEL}" title="{L_DELETE}" class="btn btn-danger" data-confirmation="{L_ALERT_DELETE_TOPIC}">
													<i class="fa fa-delete"></i>
												</a>
													# ENDIF #
												# ENDIF #
												# IF msg.C_FORUM_MSG_CUT #
													<a href="move{msg.U_FORUM_MSG_CUT}" title="{L_CUT_TOPIC}" class="btn btn-warning" data-confirmation="{L_ALERT_CUT_TOPIC}">
														<i class="fa fa-cut"></i>
													</a>
												# ENDIF #
												<a class="btn btn-primary" title="${LangLoader::get_message('go_top', 'common', 'forum')}" href="{U_TITLE_T}#go-top" onclick="jQuery('html, body').animate({scrollTop:jQuery('#go-top').offset().top}, 'slow'); return false;">
													<i class="fa fa-arrow-up"></i>
												</a>
												<a class="btn btn-primary" title="${LangLoader::get_message('go_bottom', 'common', 'forum')}" href="{U_TITLE_T}#go-bottom" onclick="jQuery('html, body').animate({scrollTop:jQuery('#go-bottom').offset().top}, 'slow'); return false;">
													<i class="fa fa-arrow-down"></i>
												</a>
											</div>
										</div>
										<div class="btn-group btn-group-xs">
											<a class="btn btn-info" href="topic{msg.U_VARS_ANCRE}#m{msg.ID}" title="{msg.FORUM_MSG_DATE}"><i class="fa fa-hand-o-right"></i></a>
											<span class="btn btn-default">
												{msg.FORUM_MSG_DATE}
											</span>
										</div>
									</div>
								</div>
							</div>
							<div class="row panel-body">
								<div class="col-sm-4">
									<div class="text-center">
										<div class="mb5">
											{msg.USER_AVATAR}
										</div>
									</div>
									<ul class="list-group">
										<li class="list-group-item">
											{msg.USER_RANK}
										</li>
										<li class="list-group-item">
											{msg.USER_IMG_ASSOC}
										</li>
										<li class="list-group-item">
											{msg.USER_GROUP}
										</li>
										<li class="list-group-item">
											{msg.USER_DATE}
										</li>
										<li class="list-group-item">
											{msg.USER_MSG}
										</li>
									</ul>
								</div>
								<div class="col-sm-8">
									# IF msg.L_FORUM_QUOTE_LAST_MSG # <em class="alert alert-info">{msg.L_FORUM_QUOTE_LAST_MSG}</em> # ENDIF #
									{msg.FORUM_MSG_CONTENTS}

									# IF msg.C_FORUM_USER_EDITOR #
									<br /><br /><br /><br /><span class="user-editor">
									{L_EDIT_BY}
										# IF msg.C_FORUM_USER_EDITOR_LOGIN #
									<a class="small" href="{msg.U_FORUM_USER_EDITOR_PROFILE}">{msg.FORUM_USER_EDITOR_LOGIN}</a>
										# ELSE #
									<em>{L_GUEST}</em>
										# ENDIF #
									{L_ON} {msg.FORUM_USER_EDITOR_DATE}</span>
									# ENDIF #
								</div>
								<div class="msg-sign-mbr col-sm-12">
									{msg.USER_SIGN}
								</div>
							</div>
							<div class="panel-footer">
								<div class="pull-left">
									<div class="btn-group btn-group-xs">
										<span class="btn btn-pbt">
											{msg.USER_PM} {msg.USER_MAIL}
										</span>
										# START msg.ext_fields #
										<span class="btn btn-pbt">
											{msg.ext_fields.BUTTON}
										</span>
										# END msg.ext_fields #
									</div>
								</div>
								# IF msg.C_FORUM_MODERATOR #
								<div class="pull-right text-right">
									<div class="btn-group btn-group-xs">
										<span class="btn btn-default">{msg.USER_WARNING}%</span>
										<a href="moderation_forum{msg.U_FORUM_WARNING}" title="{L_WARNING_MANAGEMENT}" class="btn btn-warning">
											<i class="fa fa-warning"></i>
										</a>
										<a href="moderation_forum{msg.U_FORUM_PUNISHEMENT}" title="{L_PUNISHMENT_MANAGEMENT}" class="btn btn-danger">
											<i class="fa fa-lock"></i>
										</a>
									</div>
								</div>
								# ENDIF #
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
				</div>
		# END msg #
			</div>
			<footer class="well well-sm">
				<div class="pull-right text-right">
					# IF C_PAGINATION # # INCLUDE PAGINATION # # ENDIF #
					<div class="btn-group btn-group-xs">
						<a href="${relative_url(SyndicationUrlBuilder::rss('forum',ID))}" class="btn btn-warning" title="${LangLoader::get_message('syndication', 'common')}">
							<i class="fa fa-syndication"></i>
						</a>
						# IF C_FORUM_MODERATOR #
							# IF C_FORUM_LOCK_TOPIC #
						<a href="action{U_TOPIC_LOCK}" title="{L_TOPIC_LOCK}" class="btn btn-success" data-confirmation="{L_ALERT_LOCK_TOPIC}">
							<i class="fa fa-ban"></i>
						</a>
							# ELSE #
						<a href="action{U_TOPIC_UNLOCK}" title="{L_TOPIC_LOCK}" class="btn btn-danger" data-confirmation="{L_ALERT_UNLOCK_TOPIC}">
							<i class="fa fa-unban"></i>
						</a>
							# ENDIF #

						<a href="move{U_TOPIC_MOVE}" title="{L_TOPIC_MOVE}" class="btn btn-info" data-confirmation="{L_ALERT_MOVE_TOPIC}">
							<i class="fa fa-move"></i>
						</a>
						# ENDIF #
					</div>
				</div>

				{U_FORUM_CAT} <a href="{U_TITLE_T}"><span id="display_msg_title2">{DISPLAY_MSG}</span>{TITLE_T}</a> <span class="desc-forum"><em>{DESC}</em></span>

			</footer>

			<span id="go-bottom"></span>
		# IF C_AUTH_POST #
			<div class="forum-post-form">
				<form class="form-horizontal" action="post{U_FORUM_ACTION_POST}" method="post" onsubmit="return check_form_msg();">
					<div class="form-group">
						<label for="contents">{L_RESPOND}</label>
						{KERNEL_EDITOR}
						<textarea id="contents" name="contents" rows="15" cols="40" class="form-control">{CONTENTS}</textarea>
					</div>

					<p class="text-center">
						<input type="hidden" name="token" value="{TOKEN}">
						<button type="submit" name="valid" value="true" class="btn btn-primary">{L_SUBMIT}</button>
						<button type="button" onclick="XMLHttpRequest_preview();" class="btn btn-default">{L_PREVIEW}</button>
						<button type="reset" value="true" class="btn btn-default">{L_RESET}</button>
					</p>

				</form>
			</div>
		# ENDIF #

		# IF C_ERROR_AUTH_WRITE #
			<div class="error-auth-write-response">{L_RESPOND}</div>
			<div class="forum-text-column error-auth-write">
				{L_ERROR_AUTH_WRITE}
			</div>
		# ENDIF #
		</article>


		# INCLUDE forum_bottom #
