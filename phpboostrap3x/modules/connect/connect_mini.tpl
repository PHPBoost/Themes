# IF C_USER_NOTCONNECTED #
	<script>
	<!--
	function check_connect()
	{
		if( document.getElementById('login').value == "" )
		{
			alert("{L_REQUIRE_PSEUDO}");
			return false;
		}
		if( document.getElementById('password').value == "" )
		{
			alert("{L_REQUIRE_PASSWORD}");
			return false;
		}
	}
	-->
	</script>
# ENDIF #

<div id="connect-menu">

# IF C_VERTICAL #
	# IF C_USER_NOTCONNECTED #
		<div class="panel panel-pbt">
			<div class="panel-heading">
				<h5>{@connection}</h5>
			</div>
			<div class="panel-body">
				<form action="{U_CONNECT}" method="post" onsubmit="return check_connect();" class="form-group">
					<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-fw fa-at"></i></span>
						<input class="form-control" type="text" id="login" name="login" title="{@login}" placeholder="{@login}">
					</div>
					<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-fw fa-key"></i></span>
						<input class="form-control" type="password" id="password" name="password" title="{@password}" placeholder="{@password}">
					</div>
					<div class="input-group">
						<span class="input-group-addon">{@autoconnect}</span>
						<span class="input-group-addon">
							<input checked="checked" type="checkbox" name="autoconnect" class="">
						</span>
					</div>
					<input type="hidden" name="redirect" value="{SITE_REWRITED_SCRIPT}">
					<input type="hidden" name="token" value="{TOKEN}">
					<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-fw fa-sign-in"></i></span>
						<button type="submit" name="authenticate" value="internal" class="btn btn-info form-control">{@connection}</button>
					</div>

				</form>

				<div class="input-group">
					<span class="input-group-addon"><i class="fa fa-fw fa-question-circle"></i></span>
					<a class="btn btn-default form-control" href="${relative_url(UserUrlBuilder::forget_password())}"> ${LangLoader::get_message('forget-password', 'user-common')}</a>
				</div>

				# IF C_USER_REGISTER #
					<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-fw fa-ticket"></i></span>
						<a href="${relative_url(UserUrlBuilder::registration())}" class="btn btn-info form-control"> {@register}</a>
					</div>

					# IF C_FB_AUTH_ENABLED #
					<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-fw fa-facebook"></i></span>
						<a class="btn btn-primary form-control small" href="${relative_url(UserUrlBuilder::connect('fb'))}" title="${LangLoader::get_message('facebook-connect', 'user-common')}">
							<span>${LangLoader::get_message('facebook-connect', 'user-common')}</span>
						</a>
					</div>
					# ENDIF #

					# IF C_GOOGLE_AUTH_ENABLED #
					<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-fw fa-google-plus"></i></span>
						<a class="btn btn-danger form-control small" href="${relative_url(UserUrlBuilder::connect('google'))}" title="${LangLoader::get_message('google-connect', 'user-common')}">
							<span>${LangLoader::get_message('google-connect', 'user-common')}</span>
						</a>
					</div>
					# ENDIF #
				# ENDIF #
			</div>
		</div>
	# ELSE #
		<div class="panel panel-pbt">
			<div class="panel-heading">
				<h5>{L_PRIVATE_PROFIL}</h5>
			</div>
			<ul class="list-group">
				<li class="list-group-item">
					<i class="fa fa-fw fa-profil"></i>
					<a href="${relative_url(UserUrlBuilder::home_profile())}"> {@dashboard}</a>
				</li>
				<li class="list-group-item">
					<i class="fa fa-fw fa-envelope# IF C_HAS_PM # blink# ENDIF #"></i>
					<a href="{U_USER_PM}"> {L_PM_PANEL}# IF C_HAS_PM # <span class="pad blink bg-pbt">{NUMBER_PM}</span># ENDIF #</a>
				</li>
				# IF C_ADMIN_AUTH #
				<li class="list-group-item">
					<i class="fa fa-fw fa-wrench# IF C_UNREAD_ALERT # blink# ENDIF #"></i>
					<a href="${relative_url(UserUrlBuilder::administration())}"> {L_ADMIN_PANEL}# IF C_UNREAD_ALERT # <span class="pad blink bg-warning">{NUMBER_UNREAD_ALERTS}</span># ENDIF #</a>
				</li>
				# ENDIF #
				# IF C_MODERATOR_AUTH #
				<li class="list-group-item">
					<i class="fa fa-fw fa-legal"></i>
					<a href="${relative_url(UserUrlBuilder::moderation_panel())}"> {L_MODO_PANEL}</a>
				</li>
				# ENDIF #
				<li class="list-group-item">
					<i class="fa fa-fw fa-file-text# IF C_UNREAD_CONTRIBUTION # blink# ENDIF #"></i>
					<a href="${relative_url(UserUrlBuilder::contribution_panel())}"> {L_CONTRIBUTION_PANEL}# IF C_KNOWN_NUMBER_OF_UNREAD_CONTRIBUTION # <span class="pad blink bg-primary">{NUMBER_UNREAD_CONTRIBUTIONS}</span># ENDIF #</a>
				</li>
				<li class="list-group-item">
					<i class="fa fa-fw fa-sign-out"></i>
					<a href="${relative_url(UserUrlBuilder::disconnect())}"> {@disconnect}</a>
				</li>
			</ul>
		</div>
	# ENDIF #
# ELSE #
	# IF C_USER_NOTCONNECTED #
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header visible-xs-block">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#not-connected-menu" aria-expanded="false">
					<span class="sr-only">{@connection}</span>
					<i class="fa fa-bars"></i>
				</button>
				<a class="navbar-brand" href="#">{@connection}</a>
			</div>
			<div class="collapse navbar-collapse" id="not-connected-menu">
				<div class="navbar-form navbar-left">
					<form action="{U_CONNECT}" method="post" onsubmit="return check_connect();">
						<div class="form-group">
							<input type="text" class="form-control" id="login" name="login" title="{@login}" placeholder="{@login}">
							<div class="col-xs-12 visible-xs"><br /></div>
							<input type="password" class="form-control" id="password" name="password" class="form-control" title="{@password}" placeholder="{@password}">
							<input checked="checked" type="checkbox" name="autoconnect"> {@autoconnect}
							<input type="hidden" name="redirect" value="{SITE_REWRITED_SCRIPT}">
							<input type="hidden" name="token" value="{TOKEN}">
							<button type="submit" name="authenticate" value="internal" class="btn btn-info">{@connection}</button>
						</div>
					</form>
				</div>
				<div class="navbar-form navbar-left">
					<a href="${relative_url(UserUrlBuilder::forget_password())}" title="{L_FORGOT_PASS}" class="btn btn-default">
						${LangLoader::get_message('forget-password', 'user-common')}
					</a>
				</div>

				# IF C_USER_REGISTER #

					# IF C_FB_AUTH_ENABLED #
					<div class="navbar-form navbar-right">
						<a class="btn btn-primary" href="${relative_url(UserUrlBuilder::connect('fb'))}" title="${LangLoader::get_message('facebook-connect', 'user-common')}"><i class="fa fa-facebook"></i></a>
					</div>
					# ENDIF #

					# IF C_GOOGLE_AUTH_ENABLED #
					<div class="navbar-form navbar-right">
						<a class="btn btn-danger" href="${relative_url(UserUrlBuilder::connect('google'))}" title="${LangLoader::get_message('google-connect', 'user-common')}"><i class="fa fa-google-plus"></i></a>
					</div>
					# ENDIF #
				<div class="navbar-form navbar-right">
					<form action="${relative_url(UserUrlBuilder::registration())}" method="post">
						<div class="form-group">
							<button type="submit" name="register" value="true" class="btn btn-info">{@register}</button>
							<input type="hidden" name="token" value="{TOKEN}">
						</div>
					</form>
				</div>
			</div>
			# ENDIF #
		</div>
	</nav>
	# ELSE #
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header visible-xs-block">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#connected-menu" aria-expanded="false">
					<span class="sr-only">{L_PRIVATE_PROFIL}</span>
					<i class="fa fa-bars"></i>
				</button>
				<a class="navbar-brand# IF NUMBER_TOTAL_ALERT # pos-rel# ENDIF #" href="#">
					{L_PRIVATE_PROFIL}
					# IF NUMBER_TOTAL_ALERT #
						# IF C_HAS_PM # <span class="pad pad-1 blink bg-pbt">{NUMBER_PM}</span># ENDIF #
						# IF C_UNREAD_ALERT # <span class="pad pad-2 blink bg-warning">{NUMBER_UNREAD_ALERTS}</span># ENDIF #
						# IF C_KNOWN_NUMBER_OF_UNREAD_CONTRIBUTION # <span class="pad pad-xs pad-3 blink bg-primary">{NUMBER_UNREAD_CONTRIBUTIONS}</span># ENDIF #
					# ENDIF #
				</a>
			</div>
		</div>
		<div class="collapse navbar-collapse" id="connected-menu">
			<ul class="nav navbar-nav">
				<li>
					<a href="${relative_url(UserUrlBuilder::home_profile())}">
						<i class="fa fa-fw fa-profil"></i> {@dashboard}
					</a>
				</li>
				<li>
					<a href="{U_USER_PM}">
						<i class="fa fa-fw fa-envelope# IF C_HAS_PM # text-pbt# ENDIF #"></i> {L_PM_PANEL}# IF C_HAS_PM # <span class="pad blink bg-pbt">{NUMBER_PM}</span># ENDIF #
					</a>
				</li>
				# IF C_ADMIN_AUTH #
				<li>
					<a href="${relative_url(UserUrlBuilder::administration())}">
						<i class="fa fa-fw fa-wrench# IF C_UNREAD_ALERT # text-warning# ENDIF #"></i> {L_ADMIN_PANEL}# IF C_UNREAD_ALERT # <span class="pad blink bg-warning">{NUMBER_UNREAD_ALERTS}</span># ENDIF #
					</a>
				</li>
				# ENDIF #
				# IF C_MODERATOR_AUTH #
				<li>
					<a href="${relative_url(UserUrlBuilder::moderation_panel())}">
						<i class="fa fa-fw fa-legal"></i> {L_MODO_PANEL}
					</a>
				</li>
				# ENDIF #
				<li>
					<a href="${relative_url(UserUrlBuilder::contribution_panel())}">
						<i class="fa fa-fw fa-file-text# IF C_UNREAD_CONTRIBUTION # text-primary# ENDIF #"></i> {L_CONTRIBUTION_PANEL}# IF C_KNOWN_NUMBER_OF_UNREAD_CONTRIBUTION # <span class="pad blink bg-primary">{NUMBER_UNREAD_CONTRIBUTIONS}</span># ENDIF #
					</a>
				</li>
				<li>
					<a href="${relative_url(UserUrlBuilder::disconnect())}">
						<i class="fa fa-fw fa-sign-out"></i> {@disconnect}
					</a>
				</li>
			</ul>
		</div>
	</nav>

	# ENDIF #
# ENDIF #
</div>
