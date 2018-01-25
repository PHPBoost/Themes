
<footer class="well well-lg">
	<nav class="navbar navbar-default" itemscope itemtype="http://schema.org/SiteNavigationElement">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#forum-bottom-nav" aria-expanded="false">
					<span class="sr-only">${LangLoader::get_message('forum.links', 'common', 'forum')}</span>
					<i class="fa fa-fw fa-bars"></i>
				</button>
				<a class="navbar-brand visible-xs" href="#">${LangLoader::get_message('forum.links', 'common', 'forum')}</a>
			</div>

			<div class="collapse navbar-collapse" id="forum-bottom-nav">
				<ul class="nav navbar-nav">
					<li>
						<a class="small" href="index.php" title="{L_FORUM_INDEX}"><i class="fa fa-globe"></i> {L_FORUM_INDEX}</a>
					</li>
				</ul>
				# IF C_USER_CONNECTED #
				<ul class="nav navbar-nav navbar-right">
					<li class="dropup">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
							${LangLoader::get_message('forum.links', 'common', 'forum')}# IF C_IS_GUEST # <span class="badge">{NBR_MSG_NOT_READ}</span># ENDIF # <i class="fa fa-caret-up"></i>
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



	# IF USERS_ONLINE #
	<div class="mb15">
		{TOTAL_ONLINE} {L_USER} {L_ONLINE} : {ADMIN} {L_ADMIN}, {MODO} {L_MODO}, {MEMBER} {L_MEMBER} {L_AND} {GUEST} {L_GUEST}
		<br />
		{L_USER} {L_ONLINE} : {USERS_ONLINE}
	</div>


		# IF SELECT_CAT #
		<form class="form-group" action="{U_CHANGE_CAT}" method="post">
			<div>
				<select name="change_cat" onchange="if (this.options[this.selectedIndex].text.substring(0, 3) == '-- ') document.location = '{U_ONCHANGE_CAT}'; else document.location = '{U_ONCHANGE}';" class="form-control">
					{SELECT_CAT}
				</select>
			</div>
			<input type="hidden" name="token" value="{TOKEN}">
		</form>
		# ENDIF #

		# IF C_MASS_MODO_CHECK #
		<form class="form-group" action="action.php">
			<div>
				{L_FOR_SELECTION}:
				<select class="form-control" name="massive_action_type">
					<option value="change">{L_CHANGE_STATUT_TO}</option>
					<option value="changebis">{L_CHANGE_STATUT_TO_DEFAULT}</option>
					<option value="move">{L_MOVE_TO}</option>
					<option value="lock">{L_LOCK}</option>
					<option value="unlock">{L_UNLOCK}</option>
					<option value="del">{L_DELETE}</option>
				</select>
				<button type="submit" value="true" name="valid" class="btn btn-primary">{L_GO}</button>
				<input type="hidden" name="token" value="{TOKEN}">
			</div>
		</form>
		# ENDIF #


	# ENDIF #

	# IF C_TOTAL_POST #
	<div>
		<span class="pull-left">
			{L_TOTAL_POST}: <strong>{NBR_MSG}</strong> {L_MESSAGE} {L_DISTRIBUTED} <strong>{NBR_TOPIC}</strong> {L_TOPIC}
		</span>
		<span class="pull-right text-right">
			<a href="{PATH_TO_ROOT}/forum/stats.php" title="{L_STATS}"><i class="fa fa-bar-chart-o"></i> {L_STATS}</a>
		</span>
		<div class="clearfix"></div>
	</div>
	# ENDIF #

	# IF C_AUTH_POST #
	<div class="panel panel-default">
		<div class="panel-heading">${LangLoader::get_message('forum.message_options', 'common', 'forum')}</div>
		<ul class="list-group">
			# IF C_DISPLAY_MSG #
			<li class="list-group-item">
				<span class="cssmenu-title" id="forum_change_statut">
					<a href="" onclick="XMLHttpRequest_change_statut(); return false;" id="forum_change_img">{ICON_DISPLAY_MSG}</a> <a href="" onclick="XMLHttpRequest_change_statut(); return false;"><span id="forum_change_msg">{L_EXPLAIN_DISPLAY_MSG_DEFAULT}</span></a>
				</span>
			</li>
			# ENDIF #
			<li class="list-group-item">
				<span class="cssmenu-title">
					<a href="{PATH_TO_ROOT}/forum/alert{U_ALERT}" title="{L_ALERT}"><i class="fa fa-warning"></i></a> <a href="{PATH_TO_ROOT}/forum/alert{U_ALERT}" title="{L_ALERT}">{L_ALERT}</a>
				</span>
			</li>
			<li class="list-group-item">
				<span class="cssmenu-title" id="forum_track">
					<a href="" onclick="XMLHttpRequest_track(); return false;" id="forum_track_img">{ICON_TRACK}</a> <a href="" onclick="XMLHttpRequest_track(); return false;"><span id="forum_track_msg">{L_TRACK_DEFAULT}</span></a>
				</span>
			</li>
			<li class="list-group-item">
				<span class="cssmenu-title" id="forum_track_pm">
					<a href="" onclick="XMLHttpRequest_track_pm(); return false;" id="forum_track_pm_img">{ICON_SUSCRIBE_PM}</a> <a href="" onclick="XMLHttpRequest_track_pm(); return false;"><span id="forum_track_pm_msg">{L_SUSCRIBE_PM_DEFAULT}</span></a>
				</span>
			</li>
			<li class="list-group-item">
				<span class="cssmenu-title" id="forum_track_mail">
					<a href="" onclick="XMLHttpRequest_track_mail(); return false;" id="forum_track_mail_img">{ICON_SUSCRIBE}</a> <a href="" onclick="XMLHttpRequest_track_mail(); return false;"><span id="forum_track_mail_msg">{L_SUSCRIBE_DEFAULT}</span></a>
				</span>
			</li>
		</ul>
	</div>
	#  ENDIF #

</footer>
</section>
