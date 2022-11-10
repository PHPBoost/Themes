# IF NOT IS_USER_CONNECTED #
	<script>
		function check_connect()
		{
			if( document.getElementById('login').value == "" )
			{
				alert("${LangLoader::get_message('warning.username', 'warning-lang')}");
				return false;
			}
			if( document.getElementById('password').value == "" )
			{
				alert("${LangLoader::get_message('warning.password', 'warning-lang')}");
				return false;
			}
		}
	</script>
# ENDIF #

<div id="module-connect" class="cell-mini# IF C_VERTICAL # cell-tile cell-mini-vertical# ENDIF #">
	<div class="cell">
		# IF NOT IS_USER_CONNECTED #
			# IF C_VERTICAL #
				<div class="cell-header">
					<h6 class="cell-name">{@user.welcome} {@user.rank.visitor}</h6>
				</div>
				<div class="cell-list connect-contents">
			# ELSE #
				<div class="cell-list connect-contents modal-container">
					<a class="blink pinned" data-modal data-target="user-not-connected" aria-label="{@user.sign.in}">
						<i class="fa fa-sign-in-alt" aria-hidden="true"></i>
					</a>
			# ENDIF #
					<div id="user-not-connected" class="modal modal-animation">
						<div class="close-modal error" role="button" aria-label="Fermer le menu"></div>
						<ul class="content-panel">
							<form action="{U_SIGN_IN}" method="post" onsubmit="return check_connect();">
								<li>
									<label for="login">
										<input type="text" id="login" name="login" aria-label="{@user.username.tooltip}" placeholder="{@user.username}">
										<span class="sr-only">{@user.username}</span>
									</label>
								</li>
								<li>
									<label for="password">
										<input type="password" id="password" name="password" placeholder="{@user.password}">
										<span class="sr-only">{@user.password}</span>
									</label>
								</li>
								<li class="align-center">
									<label class="checkbox" for="autoconnect">
										<span>{@user.auto.connect}</span>
										<input checked="checked" type="checkbox" id="autoconnect" name="autoconnect" aria-label="{@user.auto.connect}">
									</label>
								</li>
								<li class="align-center">
									<input type="hidden" name="redirect" value="{SITE_REWRITED_SCRIPT}">
									<input type="hidden" name="token" value="{TOKEN}">
									<button type="submit" name="authenticate" value="internal" class="button bgc-full success">{@user.sign.in}</button>
								</li>
							</form>

							# IF C_REGISTRATION_DISPLAYED #
								# IF C_REGISTRATION_ENABLED #
									<li>
										<a href="${relative_url(UserUrlBuilder::registration())}" class="button bgc-full moderator small offload">{@user.sign.up}</a>
									</li>
								# ENDIF #
								<li# IF C_VERTICAL # class="li-stretch"# ENDIF #>
									# START external_auth #
										<a class="{external_auth.CSS_CLASS} offload external-auth" href="{external_auth.U_SIGN_IN}" aria-label="{external_auth.NAME}">{external_auth.IMAGE_HTML} {external_auth.NAME}</a>
									# END external_auth #
								</li>
							# ENDIF #
							<li class="align-center">
								<a class="button small offload" href="${relative_url(UserUrlBuilder::forget_password())}">
									<i class="fa fa-question-circle" aria-hidden="true"></i> <span>{@user.forgotten.password}</span>
								</a>
							</li>

						</ul>
					</div>
				</div>

		# ELSE # <!-- User Connected -->

			# IF C_VERTICAL #
				<div class="cell-header">
					<h6 class="cell-name {USER_LEVEL_CLASS}" # IF C_USER_GROUP_COLOR # style="color:{USER_GROUP_COLOR}"# ENDIF #>{@user.welcome} {USER_DISPLAYED_NAME}</h6>
					# IF C_USER_AVATAR #
						<img src="{U_USER_AVATAR}" class="valign-middle" width="22px" height="22px" alt="{USER_DISPLAYED_NAME}">
					# ELSE #
						# IF IS_MODERATOR #
							<i class="fa fa-user-tie" aria-hidden="true"></i>
						# ELSE #
							<i class="fa fa-user" aria-hidden="true"></i>
						# ENDIF #
					# ENDIF #
				</div>
				<div class="cell-list connected-contents">
			# ELSE #
				<div class="cell-list connected-contents modal-container">
					<a data-modal data-target="user-connected" aria-label="{@user.dashboard}" class="pinned">
						<i class="fa fa-fw fa-user# IF IS_ADMIN #-tie# ENDIF #" aria-hidden="true"></i>
						# IF C_HAS_PM #
							<i class="fa fa-fw fa-people-arrows blink member" aria-hidden="true"></i>
						# ENDIF #
						# IF C_ADMIN_AUTH #
							# IF C_UNREAD_ALERTS #
								<i class="fa fa-fw fa-wrench blink administrator" aria-hidden="true"></i>
							# ENDIF #
						# ENDIF #
						# IF C_UNREAD_CONTRIBUTIONS #
							<i class="fa fa-fw fa-file-alt blink moderator" aria-hidden="true"></i>
						# ENDIF #
					</a>
			# ENDIF #
					<div id="user-connected" class="modal modal-animation">
						<div class="close-modal error" role="button" aria-label="Fermer le menu"></div>
						<div class="content-panel">
							<ul>
								<li class="li-stretch li-spaced connect-profil">
									<a href="${relative_url(UserUrlBuilder::home_profile())}">
										<i class="fa fa-fw fa-tachometer-alt" aria-hidden="true"></i>
										<span class="pbt-small-screen">{@user.my.account}</span>
									</a>
								</li>
								<li class="li-stretch li-spaced connect-pm">
									<a class="offload" href="{U_USER_PM}">
										<i class="fa fa-fw fa-people-arrows" aria-hidden="true"></i>
										<span>{@user.private.messaging}</span>
									</a>
									# IF C_HAS_PM #<span class="pinned blink bgc member">{PM_NUMBER}</span> # ENDIF #
								</li>
								# IF IS_ADMIN #
									<li class="li-stretch li-spaced connect-admin">
										<a class="offload" href="${relative_url(UserUrlBuilder::administration())}">
											<i class="fa fa-fw fa-wrench" aria-hidden="true"></i>
											<span>{@user.admin.panel}</span>
										</a>
										# IF C_UNREAD_ALERTS # <span class="pinned blink bgc administrator">{UNREAD_ALERTS_NUMBER}</span> # ENDIF #
									</li>
								# ENDIF #
								# IF IS_MODERATOR #
									<li class="li-stretch li-spaced connect-modo">
										<a class="offload" href="${relative_url(UserUrlBuilder::moderation_panel())}">
											<i class="fa fa-fw fa-gavel" aria-hidden="true"></i>
											<span>{@user.moderation.panel}</span>
										</a>
									</li>
								# ENDIF #
								<li class="li-stretch li-spaced connect-contribution">
									<a class="offload" href="${relative_url(UserUrlBuilder::contribution_panel())}">
										<i class="fa fa-fw fa-file-alt" aria-hidden="true"></i>
										<span>{@user.contribution.panel}</span>
									</a>
									# IF C_UNREAD_CONTRIBUTIONS #<span class="pinned blink bgc moderator">{UNREAD_CONTRIBUTIONS_NUMBER}</span># ENDIF #
								</li>
								<li class="li-stretch li-spaced connect-disconnect">
									<a class="offload" href="${relative_url(UserUrlBuilder::disconnect())}">
										<i class="fa fa-fw fa-sign-out-alt" aria-hidden="true"></i>
										<span>{@user.sign.out}</span>
									</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
		# ENDIF #
	</div>
</div>
