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
						document.getElementById('forum_track_pm_msg').innerHTML = xhr_object.responseText == '1' ? "{L_UNSUBSCRIBE_PM}" : "{L_SUBSCRIBE_PM}";
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
						document.getElementById('forum_track_mail_msg').innerHTML = xhr_object.responseText == '1' ? "{L_UNSUBSCRIBE}" : "{L_SUBSCRIBE}";
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

		<article itemscope="itemscope" itemtype="http://schema.org/Creativework" id="article-forum-{ID}" class="forum-contents">
			<header id="forum-top">
				<h2 class="title-forum">
				# IF C_PAGINATION #<span class="float-left"># INCLUDE PAGINATION #</span># ENDIF #
				<span class="actions">
				# IF C_FORUM_MODERATOR #
					# IF C_FORUM_LOCK_TOPIC #
					<a href="action{U_TOPIC_LOCK}" data-confirmation="{L_ALERT_LOCK_TOPIC}" aria-label="{L_TOPIC_LOCK}"><i class="fa fa-ban" aria-hidden="true" title="{L_TOPIC_LOCK}"></i></a>
					# ELSE #
					<a href="action{U_TOPIC_UNLOCK}" data-confirmation="{L_ALERT_UNLOCK_TOPIC}" aria-label="{L_TOPIC_LOCK}"><i class="fa fa-unban" aria-hidden="true" title="{L_TOPIC_LOCK}"></i></a>
					# ENDIF #
					<a href="move{U_TOPIC_MOVE}" data-confirmation="{L_ALERT_MOVE_TOPIC}" aria-label="{L_TOPIC_MOVE}"><i class="fa fa-move" aria-hidden="true" title="{L_TOPIC_MOVE}"></i></a>
				# ENDIF #
				</span>
				
					<a href="${relative_url(SyndicationUrlBuilder::rss('forum',ID))}" ari-label="${LangLoader::get_message('syndication', 'common')}"><i class="fa fa-syndication" aria-hidden="true" title="${LangLoader::get_message('syndication', 'common')}"></i></a>
					{U_FORUM_CAT} <i class="fa fa-angle-double-right" aria-hidden="true"></i> <a itemscope="name" title="{TITLE_T}" href="{U_TITLE_T}"><span id="display_msg_title">{DISPLAY_MSG}</span>{TITLE_T}</a> <span class="desc-forum"><em>{DESC}</em></span>
				</h2>

			</header>
		# IF C_POLL_EXIST #
			<div class="content center">

				<form method="post" action="action{U_POLL_ACTION}">
					<table class="forum-poll-table">
						<thead>
							<tr>
								<th>{L_POLL}: {QUESTION}</th>
							</tr>
						</thead>
						<tbody>
							# START poll_radio #
							<tr>
								<td>
									<label><input type="{poll_radio.TYPE}" name="forumpoll" value="{poll_radio.NAME}"> {poll_radio.ANSWERS}</label>
								</td>
							</tr>
							# END poll_radio #
							# START poll_checkbox #
							<tr>
								<td>
									<label><input type="{poll_checkbox.TYPE}" name="{poll_checkbox.NAME}" value="{poll_checkbox.NAME}"> {poll_checkbox.ANSWERS}</label>
								</td>
							</tr>
							# END poll_checkbox #
							# START poll_result #
							<tr>
								<td>
									{poll_result.ANSWERS}

									{poll_result.PERCENT}% - [{poll_result.NBRVOTE} {L_VOTE}]
									<div class="progressbar-container" title="{poll_result.PERCENT}%">
										<div class="progressbar-infos">{poll_result.PERCENT}%</div>
										<div class="progressbar" style="width:{poll_result.PERCENT}%"></div>
									</div>
								</td>
							</tr>
							# END poll_result #
						</tbody>
					</table>

					# IF C_POLL_QUESTION #
					<fieldset class="fieldset-submit">
						<legend>{L_VOTE}</legend>
						<input type="hidden" name="token" value="{TOKEN}">
						<button type="submit" name="valid_forum_poll" value="true" class="submit">{L_VOTE}</button>
						<div class="spacer"></div>
						<a class="small" href="topic{U_POLL_RESULT}">{L_RESULT}</a>
					</fieldset>
					# ENDIF #
				</form>
			</div>
		# ENDIF #

		# START msg #
			<div class="content">

				<div class="msg-position" id="d{msg.ID}">
					<div class="msg-container{msg.CLASS_COLOR}">
						<span id="m{msg.ID}"></span>
						<div class="msg-top bkgd-color-op20-sc">

							<div class="msg-top-row">
								<div class="msg-pseudo-mbr bkgd-color-op20">
								# IF msg.C_FORUM_USER_LOGIN #
									<i class="fa # IF msg.C_USER_ONLINE #fa-online# ELSE #fa-offline# ENDIF #" aria-hidden="true"></i>
									<a title="{msg.FORUM_USER_LOGIN}" class="msg-link-pseudo {msg.FORUM_USER_LEVEL}" href="{msg.U_FORUM_USER_PROFILE}"# IF msg.FORUM_USER_GROUP_COLOR # style="color:{msg.FORUM_USER_GROUP_COLOR}"# ENDIF #>
										{msg.FORUM_USER_LOGIN}
									</a>
									<span class="sr-only"># IF C_USER_ONLINE #${LangLoader::get_message('forum.connected.mbr.yes', 'common', 'forum')}# ELSE #${LangLoader::get_message('forum.connected.mbr.no', 'common', 'forum')}# ENDIF #</span>
								# ELSE #
									<em>{L_GUEST}</em>
								# ENDIF #
								</div>
								# IF msg.C_USER_RANK #<p class="center">{msg.USER_RANK}</p># ELSE #<p class="center">${LangLoader::get_message('banned', 'user-common')}</p># ENDIF #
								# IF msg.C_USER_IMG_ASSOC #<p class="center"><img src="{msg.USER_IMG_ASSOC}" alt="${LangLoader::get_message('rank', 'main')}" title="${LangLoader::get_message('rank', 'main')}" /></p> # ENDIF #
							</div>

							<div class="msg-avatar-mbr center">
								<img src="# IF msg.C_USER_AVATAR #{msg.U_USER_AVATAR}# ELSE #{msg.U_DEFAULT_AVATAR}# ENDIF #" alt="${LangLoader::get_message('avatar', 'user-common')}" />
							</div>

							<div class="msg-info-mbr">
								# IF msg.C_USER_GROUPS #
								<p class="center">
									# START msg.usergroups #
										# IF msg.usergroups.C_IMG_USERGROUP #
										<a href="{msg.usergroups.U_USERGROUP}" class="user-group user-group-img group-{msg.usergroups.USERGROUP_ID} "# IF msg.usergroups.C_USERGROUP_COLOR # style="color: {msg.usergroups.USERGROUP_COLOR}"# ENDIF #><img src="{PATH_TO_ROOT}/images/group/{msg.usergroups.U_IMG_USERGROUP}" alt="{msg.usergroups.USERGROUP_NAME}" title="{msg.usergroups.USERGROUP_NAME}" /></a>
										# ELSE #
										{msg.usergroups.L_USER_GROUP} : <a href="{msg.usergroups.U_USERGROUP}" class="user-group group-{msg.usergroups.USERGROUP_ID}"# IF msg.usergroups.C_USERGROUP_COLOR # style="color: {msg.usergroups.USERGROUP_COLOR}"# ENDIF #>{msg.usergroups.USERGROUP_NAME}</a>
										# ENDIF #
									# END msg.usergroups #
								</p>
								# ENDIF #
								<p class="left"># IF msg.C_IS_USER #${LangLoader::get_message('registered_on', 'main')} : {msg.USER_REGISTERED_DATE_FULL}# ENDIF #</p>
								# IF msg.C_USER_MSG #
								<p class="left"><a href="{msg.U_USER_MSG}">${LangLoader::get_message('message_s', 'main')}</a>: {msg.USER_MSG}</p>
								# ELSE #
								<p class="left"># IF msg.C_IS_USER # <a href="{msg.U_USER_MEMBERMG}">${LangLoader::get_message('message', 'main')}</a> : 0# ELSE #${LangLoader::get_message('message', 'main')} : 0# ENDIF #</p>
								# ENDIF #
							</div>
						</div>
						<div class="msg-contents-container{msg.CLASS_COLOR}">
							<div class="msg-contents-info bkgd-color-op20">
								<span class="float-left">
									<a href="topic{msg.U_VARS_ANCRE}#m{msg.ID}" aria-label="{msg.TOPIC_DATE_FULL}"><i class="fa fa-hand-o-right" aria-hidden="true" title="{msg.TOPIC_DATE_FULL}"></i></a> ${LangLoader::get_message('on', 'main')} {msg.TOPIC_DATE_FULL}
								</span>
								<span class="float-right">
									# IF C_AUTH_POST #<a href="topic{msg.U_VARS_QUOTE}#go-bottom" aria-label="{L_QUOTE}"><i class="fa fa-quote-right" aria-hidden="true" title="{L_QUOTE}"></i></a># ENDIF #
									# IF msg.C_FORUM_MSG_EDIT #
									<a href="post{msg.U_FORUM_MSG_EDIT}" aria-label="{L_EDIT}"><i class="fa fa-edit" aria-hidden="true" title="{L_EDIT}"></i></a>
									# ENDIF #

									# IF msg.C_FORUM_MSG_DEL #
										# IF msg.C_FORUM_MSG_DEL_MSG #
									<a href="action{msg.U_FORUM_MSG_DEL}" aria-label="{L_DELETE}" id="dimgnojs{msg.ID}"><i class="fa fa-delete" aria-hidden="true" title="{L_DELETE}"></i></a>
									<a onclick="del_msg('{msg.ID}');" id="dimg{msg.ID}" aria-label="{L_DELETE}" class="del-msg"><i class="fa fa-delete" aria-hidden="true" title="{L_DELETE}"></i></a>
									<script>
									<!--
										document.getElementById('dimgnojs{msg.ID}').style.display = 'none';
										document.getElementById('dimg{msg.ID}').style.display = 'inline';
									-->
									</script>
										# ELSE #
									<a href="action{msg.U_FORUM_MSG_DEL}" aria-label="{L_DELETE}" data-confirmation="{L_ALERT_DELETE_TOPIC}"><i class="fa fa-delete" aria-hidden="true" title="{L_DELETE}"></i></a>
										# ENDIF #
									# ENDIF #

									# IF msg.C_FORUM_MSG_CUT # <a href="move{msg.U_FORUM_MSG_CUT}" aria-label="{L_CUT_TOPIC}" data-confirmation="{L_ALERT_CUT_TOPIC}"><i class="fa fa-cut" aria-hidden="true" title="{L_CUT_TOPIC}"></i></a> # ENDIF #

									<a aria-label="${LangLoader::get_message('go_top', 'common', 'forum')}" href="{U_TITLE_T}#go-top" onclick="jQuery('html, body').animate({scrollTop:jQuery('#go-top').offset().top}, 'slow'); return false;"><i class="fa fa-arrow-up" aria-hidden="true" title="${LangLoader::get_message('go_top', 'common', 'forum')}"></i></a>
									<a aria-label="${LangLoader::get_message('go_bottom', 'common', 'forum')}" href="{U_TITLE_T}#go-bottom" onclick="jQuery('html, body').animate({scrollTop:jQuery('#go-bottom').offset().top}, 'slow'); return false;"><i class="fa fa-arrow-down" aria-hidden="true" title="${LangLoader::get_message('go_bottom', 'common', 'forum')}"></i></a>
								</span>
							</div>
							<div class="msg-contents">
								# IF msg.L_FORUM_QUOTE_LAST_MSG # <p class="text-strong">{msg.L_FORUM_QUOTE_LAST_MSG}</p> # ENDIF #

								{msg.FORUM_MSG_CONTENTS}

								# IF msg.C_FORUM_USER_EDITOR #
								<span class="user-editor">
								{L_EDIT_BY}
									# IF msg.C_FORUM_USER_EDITOR_LOGIN #
								<a class="small" href="{msg.U_FORUM_USER_EDITOR_PROFILE}">{msg.FORUM_USER_EDITOR_LOGIN}</a>
									# ELSE #
								<em>{L_GUEST}</em>
									# ENDIF #
								{L_ON} {msg.TOPIC_EDIT_DATE_FULL}</span>
								# ENDIF #
							</div>
							<div class="msg-sign{msg.CLASS_COLOR}">
								<div class="msg-sign-mbr">
									# IF msg.C_USER_SIGN #<hr /><br />{msg.USER_SIGN}# ENDIF #
								</div>
								<div class="msg-sign-info">
									<span class="float-left">
										# IF msg.C_USER_PM #<a href="{msg.U_USER_PM}" class="basic-button smaller user-pm">${LangLoader::get_message('pm', 'main')}</a># ENDIF # # IF msg.C_USER_MAIL #<a href="{msg.U_USER_MAIL}" class="basic-button smaller user-mail">${LangLoader::get_message('mail', 'main')}</a># ENDIF #
										# START msg.ext_fields #
											{msg.ext_fields.BUTTON}
										# END msg.ext_fields #
									</span>
									<span class="float-right">
										&nbsp;
										# IF msg.C_FORUM_MODERATOR #
										{msg.USER_WARNING}%
										<a href="moderation_forum{msg.U_FORUM_WARNING}" title="{L_WARNING_MANAGEMENT}" class="fa fa-warning"></a>
										<a href="moderation_forum{msg.U_FORUM_PUNISHEMENT}" title="{L_PUNISHMENT_MANAGEMENT}" class="fa fa-lock"></a>
										# ENDIF #
									</span>&nbsp;
								</div>

							</div>
						</div>
					</div>

				</div>
			</div>
		# END msg #
		<div id="sub-footer-forum">
			<footer class="footer-forum bottom-footer">
				# IF C_PAGINATION #<span class="float-right"># INCLUDE PAGINATION #</span># ENDIF #
				<span class="actions">
				# IF C_FORUM_MODERATOR #
					# IF C_FORUM_LOCK_TOPIC #
					<a href="action{U_TOPIC_LOCK}" aria-label="{L_TOPIC_LOCK}" data-confirmation="{L_ALERT_LOCK_TOPIC}"><i class="fa fa-ban" aria-hidden="true" title="{L_TOPIC_LOCK}"></i></a>
					# ELSE #
					<a href="action{U_TOPIC_UNLOCK}" aria-label="{L_TOPIC_LOCK}" data-confirmation="{L_ALERT_UNLOCK_TOPIC}"><i class="fa fa-unban" aria-hidden="true" title="{L_TOPIC_LOCK}"></i></a>
					# ENDIF #
					<a href="move{U_TOPIC_MOVE}" aria-label="{L_TOPIC_MOVE}" data-confirmation="{L_ALERT_MOVE_TOPIC}"><i class="fa fa-move" aria-hidden="true" title="{L_TOPIC_MOVE}"></i></a>
				# ENDIF #
				</span>
				<a href="${relative_url(SyndicationUrlBuilder::rss('forum',ID))}" class="fa fa-syndication" title="${LangLoader::get_message('syndication', 'common')}"></a>
				{U_FORUM_CAT} <i class="fa fa-angle-double-right" aria-hidden="true"></i> <a itemscope="name" title="{TITLE_T}" href="{U_TITLE_T}"><span id="display_msg_title">{DISPLAY_MSG}</span>{TITLE_T}</a> <span class="desc-forum"><em>{DESC}</em></span>



				<div class="spacer"></div>
			</footer>
		</div>
			<span id="go-bottom"></span>
		# IF C_AUTH_POST #
			<div class="forum-post-form">
				<form action="post{U_FORUM_ACTION_POST}" method="post" onsubmit="return check_form_msg();">
					<div class="form-element-textarea">
						<label for="contents">{L_RESPOND}</label>
						{KERNEL_EDITOR}
						<div class="form-field-textarea">
							<textarea id="contents" name="contents" rows="15" cols="40">{CONTENTS}</textarea>
						</div>
					</div>

					<fieldset class="fieldset-submit">
						<legend>{L_SUBMIT}</legend>
						<input type="hidden" name="token" value="{TOKEN}">
						<button type="submit" name="valid" value="true" class="submit">{L_SUBMIT}</button>
						<button type="button" onclick="XMLHttpRequest_preview();">{L_PREVIEW}</button>
						<button type="reset" value="true">{L_RESET}</button>
					</fieldset>
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
