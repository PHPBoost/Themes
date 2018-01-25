<script>
<!--
	function Confirm_read_topics() {
		return confirm("{L_CONFIRM_READ_TOPICS}");
	}

//Rafraissiement des topics non lus.
	function XMLHttpRequest_unread_topics(divID)
	{
		if (document.getElementById('refresh_unread' + divID))
			document.getElementById('refresh_unread' + divID).className = 'fa fa-spinner fa-spin';

		var xhr_object = xmlhttprequest_init('{PATH_TO_ROOT}/forum/xmlhttprequest.php?token={TOKEN}&refresh_unread=1');
		xhr_object.onreadystatechange = function()
		{
			if (xhr_object.readyState == 4 && xhr_object.status == 200 && xhr_object.responseText != '')
			{
				if (document.getElementById('refresh_unread' + divID))
					document.getElementById('refresh_unread' + divID).className = 'fa fa-refresh';

				var array_unread_topics = new Array('', '');
				eval(xhr_object.responseText);

				if (array_unread_topics[0] > 0)
					forum_display_block('forum_unread' + divID);

				document.getElementById('nbr_unread_topics').innerHTML = array_unread_topics[1];
				document.getElementById('nbr_unread_topics2').innerHTML = array_unread_topics[1];
				document.getElementById('forum_blockforum_unread').innerHTML = array_unread_topics[2];
				document.getElementById('forum_blockforum_unread2').innerHTML = array_unread_topics[2];
			} else if (xhr_object.readyState == 4 && xhr_object.responseText == '')
			{
				alert("{L_AUTH_ERROR}");
				if (document.getElementById('refresh_unread' + divID))
					document.getElementById('refresh_unread' + divID).className = 'fa fa-refresh';
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

		var block = document.getElementById('forum_block' + divID);
		if (block.style.display == 'none')
		{
			if (document.getElementById(previous_forumblock))
				document.getElementById(previous_forumblock).style.display = 'none';
			block.style.display = 'block';
			displayed_forum = true;
			previous_forumblock = 'forum_block' + divID;
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

		<div class="forum-links">
			<nav class="navbar navbar-default" itemscope itemtype="http://schema.org/SiteNavigationElement">
				<div class="container-fluid">

					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#forum-top-nav" aria-expanded="false">
							<span class="sr-only">${LangLoader::get_message('forum.links', 'common', 'forum')}</span>
							<i class="fa fa-fw fa-bars"></i>
						</button>
						<a class="navbar-brand visible-xs" href="#">${LangLoader::get_message('forum.links', 'common', 'forum')}</a>
					</div>

					<div class="collapse navbar-collapse" id="forum-top-nav">
						<ul class="nav navbar-nav">
							<li>
								<a class="small" href="index.php" title="{L_FORUM_INDEX}"><i class="fa fa-globe"></i> {L_FORUM_INDEX}</a>
							</li>
						</ul>
						# IF C_USER_CONNECTED #
						<ul class="nav navbar-nav navbar-right">
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
									${LangLoader::get_message('forum.links', 'common', 'forum')}# IF C_IS_GUEST # <span class="badge">{NBR_MSG_NOT_READ}</span># ENDIF # <i class="fa fa-caret-down"></i>
								</a>
								<ul class="dropdown-menu">
									<li>
										<a class="small" title="{L_SHOW_MY_MSG}" href="{U_SHOW_MY_MSG}"><i class="fa fa-showmymsg"></i> {L_SHOW_MY_MSG}</a>
									</li>
									<li>
										<a class="small" href="{U_TOPIC_TRACK}" title="{L_SHOW_TOPIC_TRACK}"><i class="fa fa-msg-track"></i> {L_SHOW_TOPIC_TRACK}</a>
									</li>
									<li>
										<a class="small" href="{U_LAST_MSG_READ}" title="{L_SHOW_LAST_READ}"><i class="fa fa-lastview"></i> {L_SHOW_LAST_READ}</a>
									</li>
									<li>
										<a class="small" href="{U_MSG_NOT_READ}" title="{L_SHOW_NOT_READS}"><i class="fa fa-notread"></i> {L_SHOW_NOT_READS} # IF C_IS_GUEST # <span class="badge">{NBR_MSG_NOT_READ}</span># ENDIF #</a>

									</li>
									<li>
										<a class="small" href="{U_MSG_SET_VIEW}" title="{L_MARK_AS_READ}" onclick="javascript:return Confirm_read_topics();"><i class="fa fa-eraser"></i> {L_MARK_AS_READ}</a>
									</li>
									# IF C_FORUM_CONNEXION #
									<li>
										<a title="{L_DISCONNECT}" class="small" href="${relative_url(UserUrlBuilder::disconnect())}"><i class="fa fa-sign-out"></i> {L_DISCONNECT}</a>
									</li>
									# ENDIF #
								</ul>
							</li>
						</ul>
						# ELSE #
						# IF C_FORUM_CONNEXION #
						<ul class="nav navbar-nav navbar-right">
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
									{L_CONNECT} <i class="fa fa-caret-down"></i>
								</a>
								<ul class="dropdown-menu">
									<li>
										<a title="{L_CONNECT}" class="small" href="${relative_url(UserUrlBuilder::connect())}"><i class="fa fa-sign-in"></i> {L_CONNECT}</a>
									</li>
									<li>
										<a title="{L_REGISTER}" class="small" href="${relative_url(UserUrlBuilder::registration())}"><i class="fa fa-ticket"></i> {L_REGISTER}</a>
									</li>
								</ul>
							</li>
						</ul>
						# ENDIF #
						# ENDIF #
					</div>
				</div>
			</nav>

			<div class="clearfix"></div>
		</div>
	</header>
