<script>
<!--
	function Confirm_read_topics() {
		return confirm("{L_CONFIRM_READ_TOPICS}");
	}

//Rafraissiement des topics non lus.
	function XMLHttpRequest_unread_topics(divID)
	{
		if (document.getElementById('refresh_' + divID))
			document.getElementById('refresh_' + divID).className = 'fa fa-spinner fa-spin';

		var xhr_object = xmlhttprequest_init('{PATH_TO_ROOT}/forum/xmlhttprequest.php?token={TOKEN}&refresh_unread=1');
		xhr_object.onreadystatechange = function()
		{
			if (xhr_object.readyState == 4 && xhr_object.status == 200 && xhr_object.responseText != '')
			{
				if (document.getElementById('refresh_' + divID))
					document.getElementById('refresh_' + divID).className = 'fa fa-refresh';

				var array_unread_topics = new Array('', '');
				eval(xhr_object.responseText);

				if (array_unread_topics[0] > 0)
					forum_display_block(divID);

				document.getElementById('nbr_unread_topics_top').innerHTML = array_unread_topics[0];
				document.getElementById('nbr_unread_topics_bottom').innerHTML = array_unread_topics[0];
				document.getElementById('forum_block_' + divID).innerHTML = array_unread_topics[2];
				document.getElementById('forum_block_' + divID).innerHTML = array_unread_topics[2];
			} else if (xhr_object.readyState == 4 && xhr_object.responseText == '')
			{
				alert("{L_AUTH_ERROR}");
				if (document.getElementById('refresh_' + divID))
					document.getElementById('refresh_' + divID).className = 'fa fa-refresh';
			}
		}
		xmlhttprequest_sender(xhr_object, null);
	}

	var delay_forum = 1000;
	var timeout_forum;
	var displayed_forum = false;
	var previous_forumblock;

//Affiche le bloc.
	function forum_display_block(divID)
	{
		if (timeout_forum)
			clearTimeout(timeout_forum);

		var block = document.getElementById('forum_block_' + divID);
		if (block.style.display == 'none')
		{
			if (document.getElementById(previous_forumblock))
				document.getElementById(previous_forumblock).style.display = 'none';
			block.style.display = 'block';
			displayed_forum = true;
			previous_forumblock = 'forum_block_' + divID;
		} else
		{
			block.style.display = 'none';
			displayed_forum = false;
		}
	}

//Cache le bloc.
	function forum_hide_block(forumid, stop)
	{
		if (stop && timeout_forum)
			clearTimeout(timeout_forum);
		else if (displayed_forum)
		{
			clearTimeout(timeout_forum);
			timeout_forum = setTimeout('forum_display_block(\'' + forumid + '\')', delay_forum);
		}
	}
	--></script>
<section id="module-forum">
	<header id="forum-top">
		<h1>{FORUM_NAME}</h1>
		<br>
		<div class="forum-links">
			# IF C_USER_CONNECTED #
			<nav itemscope itemtype="http://schema.org/SiteNavigationElement" class="cssmenu cssmenu-group float-right" id="cssmenu-forum-top-link">
				<ul>
					<li>
						<span class="cssmenu-title">
							<a href="index.php" aria-label="{L_FORUM_INDEX}"><i class="fa fa-home" aria-hidden="true" title="{L_FORUM_INDEX}"></i> <span class="hidden-large-screens">{L_FORUM_INDEX}</span></a>
						</span>
					</li>
					<li>
						<span class="cssmenu-title">
							<a href="{U_SHOW_MY_MSG}" aria-label="{L_SHOW_MY_MSG}"><i class="fa fa-showmymsg" aria-hidden="true" title="{L_SHOW_MY_MSG}"></i> <span class="hidden-large-screens">{L_SHOW_MY_MSG}</span></a>
						</span>
					</li>
					<li>
						<span class="cssmenu-title">
						<a href="{U_TOPIC_TRACK}" aria-label="{L_SHOW_TOPIC_TRACK}"><i class="fa fa-msg-track" aria-hidden="true" title="{L_SHOW_TOPIC_TRACK}"></i> <span class="hidden-large-screens">{L_SHOW_TOPIC_TRACK}</span></a>
						</span>
					</li>
					<li class="forum-index">
						<span class="cssmenu-title">
							<a href="{U_LAST_MSG_READ}" aria-label="{L_SHOW_LAST_READ}"><i class="fa fa-lastview" aria-hidden="true" title="{L_SHOW_LAST_READ}"></i> <span class="hidden-large-screens">{L_SHOW_LAST_READ}</span></a>
						</span>
					</li>
					<li>
						<span class="cssmenu-title">
							<a href="{U_MSG_NOT_READ}" aria-label="{L_SHOW_NOT_READS}"><i class="fa fa-notread" aria-hidden="true" title="{L_SHOW_NOT_READS}"></i> <span class="hidden-large-screens">{L_SHOW_NOT_READS}</span> <span id="nbr_unread_topics_top">{NBR_MSG_NOT_READ}</span></a>
							<div class="forum-refresh">
								<div id="forum_block_forum_unread_top" style="display: none;"></div>
							</div>
							<a href="" onclick="XMLHttpRequest_unread_topics('forum_unread_top');return false;" onmouseover="forum_hide_block('forum_unread_top', 1);" onmouseout="forum_hide_block('forum_unread_top', 0);"><i class="fa fa-refresh" aria-hidden="true" id="refresh_forum_unread_top"></i><span class="sr-only">${LangLoader::get_message('forum.links', 'common', 'forum')}</span></a>
						</span>
					</li>
					<li>
						<span class="cssmenu-title">
							<a href="{U_MSG_SET_VIEW}" onclick="javascript:return Confirm_read_topics();" aria-label="{L_MARK_AS_READ}"><i class="fa fa-eraser" aria-hidden="true" title="{L_MARK_AS_READ}"></i> <span class="hidden-large-screens">{L_MARK_AS_READ}</span></a>
						</span>
					</li>
					# IF C_FORUM_CONNEXION #
					<li>
						<span class="cssmenu-title">
							<a href="${relative_url(UserUrlBuilder::disconnect())}" aria-label="{L_DISCONNECT}"><i class="fa fa-sign-out" title="{L_DISCONNECT}"></i> <span class="hidden-large-screens">{L_DISCONNECT}</span></a>
						</span>
					</li>
					# ENDIF #
				</ul>
			</nav>
			# ELSE #
			# IF C_FORUM_CONNEXION #
			<nav itemscope itemtype="http://schema.org/SiteNavigationElement" class="cssmenu cssmenu-group float-right" id="cssmenu-sign-in-top-link">
				<ul>
					<li>
						<span class="cssmenu-title">
							<a href="${relative_url(UserUrlBuilder::connect())}" aria-label="{L_CONNECT}"><i class="fa fa-sign-in" aria-hidden="true" title="{L_CONNECT}"></i> <span class="hidden-large-screens">{L_CONNECT}</span></a>
						</span>
					</li>
					<li>
						<span class="cssmenu-title">
							<a href="${relative_url(UserUrlBuilder::registration())}" aria-label="{L_REGISTER}"><i class="fa fa-ticket" aria-hidden="true" title="{L_REGISTER}"></i> <span class="hidden-large-screens">{L_REGISTER}</span></a>
						</span>
					</li>
				</ul>
			</nav>
			# ENDIF #
			# ENDIF #
		</div>
		<script>
			<!--
			jQuery("#cssmenu-forum-top-link").menumaker({title: " ${LangLoader::get_message('forum.links', 'common', 'forum')} ", format: "multitoggle", breakpoint: 768, menu_static: false});
			# IF C_FORUM_CONNEXION #jQuery("#cssmenu-sign-in-top-link").menumaker({title: " ${LangLoader::get_message('forum.links', 'common', 'forum')} ", format: "multitoggle", breakpoint: 768, menu_static: false});# ENDIF #
			-->
		</script>



			<div class="spacer"></div>
	</header>
