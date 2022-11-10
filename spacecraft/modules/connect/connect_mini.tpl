# IF NOT IS_USER_CONNECTED #
	<script>
		function check_connect()
		{
			if( document.getElementById('login').value == "" )
			{
				alert("{@warning.username}");
				return false;
			}
			if( document.getElementById('password').value == "" )
			{
				alert("{@warning.password}");
				return false;
			}
		}
	</script>
# ENDIF #

<div id="module-connect" class="# IF IS_USER_CONNECTED #user-connected# ELSE #user-not-connected# ENDIF ## IF C_HORIZONTAL # cell-hover-container# ENDIF #">
	# IF NOT IS_USER_CONNECTED #
		# IF C_VERTICAL #
			<div class="cell-mini cell-tile cell-mini-vertical">
				<div class="cell">
					<div class="cell-header">
						<h6 class="cell-name">{@user.rank.visitor}</h6>
					</div>
					<div class="cell-list connect-contents">
		# ELSE #
			<div class="modal-container cell-modal connect-contents">
				<span class="cell-hover-trigger" data-tooltip-pos="left" aria-label="{@user.sign.in}"><i class="fa fa-sign-in-alt" aria-hidden="true"></i></span>
				<div class="cell-list connect-container# IF C_HORIZONTAL # connect-container-horizontal cell-hover-content# ENDIF #">
					<ul>
						<li class="align-center">{@user.welcome} {@user.rank.visitor}</li>
						<li class="align-center"><button class="button submit" data-modal data-target="connect-modal">{@user.sign.in}</button></li>
						# IF C_REGISTRATION_DISPLAYED #
							# IF C_REGISTRATION_ENABLED #
								<li class="align-center">
									<a href="${relative_url(UserUrlBuilder::registration())}" class="button submit small offload">{@user.sign.up}</a>
								</li>
							# ENDIF #
						# ENDIF #
					</ul>
				</div>
				<div id="connect-modal" class="modal modal-animation">
					<div class="close-modal">{@common.close}</div>
					<div class="content-panel cell">
						<div class="cell-list">
		# ENDIF #
							<form action="{U_SIGN_IN}" method="post" onsubmit="return check_connect();">
								<ul>
									<li class="align-center">
										<label for="login">
											<input type="text" id="login" name="login" aria-label="{@user.username.tooltip}" placeholder="{@user.username}">
											<span class="sr-only">{@user.username}</span>
										</label>
									</li>
									<li class="align-center">
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
										<button type="submit" name="authenticate" value="internal" class="button submit small">{@user.sign.in}</button>
									</li>
								</ul>
							</form>
							<ul>
								# IF C_REGISTRATION_DISPLAYED #
									<li>
										# START external_auth #
											<a class="{external_auth.CSS_CLASS} offload" href="{external_auth.U_SIGN_IN}" aria-label="{external_auth.NAME}">{external_auth.IMAGE_HTML}</a>
										# END external_auth #
									</li>
								# ENDIF #
								<li class="align-center">
									<a class="button smaller offload" href="${relative_url(UserUrlBuilder::forget_password())}">
										<i class="fa fa-question-circle" aria-hidden="true"></i> <span>{@user.forgotten.password}</span>
									</a>
								</li>
							</ul>
		# IF C_VERTICAL #
						</div>
					</div>
				</div>
		# ELSE #
						</div>
					</div>
				</div>
			</div>
		# ENDIF #

	# ELSE # <!-- User Connected -->

		# IF C_VERTICAL #
			<div class="cell-mini cell-tile cell-mini-vertical">
				<div class="cell">
					<div class="cell-header">
						<h6 class="cell-name {USER_LEVEL_CLASS}" # IF C_USER_GROUP_COLOR # style="color:{USER_GROUP_COLOR}"# ENDIF #>{USER_DISPLAYED_NAME}</h6>
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
			<div class="cell-list connected-contents">
				<span class="cell-hover-trigger"data-tooltip-pos="left" aria-label="{@user.dashboard}">
					<span class="stacked member">
						# IF C_USER_AVATAR #
							<img src="{U_USER_AVATAR}" class="valign-middle user-avatar" alt="{USER_DISPLAYED_NAME}">
						# ELSE #
							# IF IS_MODERATOR #
								<i class="fa fa-user-tie" aria-hidden="true"></i>
							# ELSE #
								<i class="fa fa-user" aria-hidden="true"></i>
							# ENDIF #
						# ENDIF #
						# IF C_UNREAD_ALERTS #
							# IF IS_ADMIN #
								<span class="stack-event stack-circle stack-top-right bgc-full administrator blink">{UNREAD_ALERTS_NUMBER}</span>
							# ENDIF #
						# ELSE #
							# IF C_HAS_PM #
								<span class="stack-event stack-circle stack-top-right bgc-full member blink">{PM_NUMBER}</span>
							# ELSE #
								# IF C_UNREAD_CONTRIBUTIONS #
									<span class="stack-event stack-circle stack-top-right bgc-full moderator blink">{UNREAD_CONTRIBUTIONS_NUMBER}</span>
								# ELSE #
									# START additional_menus #
										# IF additional_menus.C_DISPLAY #
											# IF additional_menus.C_UNREAD_ELEMENTS #
												<span class="stack-event stack-circle stack-top-right bgc-full {additional_menus.LEVEL_CLASS} blink">{additional_menus.UNREAD_ELEMENTS_NUMBER}</span>
											# ENDIF #
										# ENDIF #
									# END additional_menus #
								# ENDIF #
							# ENDIF #
						# ENDIF #
					</span>
				</span>
		# ENDIF #
				<nav class="connect-container# IF C_HORIZONTAL # connect-container-horizontal cell-hover-content# ENDIF #">
					<ul>
						<li class="align-center user-profile">
							{@user.welcome} <span aria-label="{@user.my.profile}" class="{USER_LEVEL_CLASS}" # IF C_USER_GROUP_COLOR # style="color:{USER_GROUP_COLOR}"# ENDIF #> {USER_DISPLAYED_NAME}</span>
						</li>
						<li class="li-stretch connect-profile">
							# IF C_VERTICAL #
								# IF IS_MODERATOR #
									<i class="fa fa-user-tie" aria-hidden="true"></i>
								# ELSE #
									<i class="fa fa-user" aria-hidden="true"></i>
								# ENDIF #
								<a href="${relative_url(UserUrlBuilder::home_profile())}" class="offload">
									<span>{@user.my.account}</span>
								</a>
							# ELSE #
								# IF C_USER_AVATAR #
									<img src="{U_USER_AVATAR}" class="user-avatar" width="22px" height="22px" alt="{USER_DISPLAYED_NAME}">
								# ELSE #
									# IF IS_MODERATOR #
										<i class="fa fa-user-tie" aria-hidden="true"></i>
									# ELSE #
										<i class="fa fa-user" aria-hidden="true"></i>
									# ENDIF #
								# ENDIF #
								<a href="${relative_url(UserUrlBuilder::home_profile())}" class="offload">
									<span>{@user.my.account}</span>
								</a>
							# ENDIF #
						</li>
						<li class="li-stretch connect-pm">
							<span # IF C_HAS_PM #class="stacked member"# ENDIF #>
								<i class="fa fa-fw fa-people-arrows" aria-hidden="true"></i>
								# IF C_HAS_PM #<span class="stack-event stack-circle stack-top-right bgc member blink">{PM_NUMBER}</span> # ENDIF #
							</span>
							<a href="{U_USER_PM}" class="offload">
								<span>{@user.private.messaging}</span>
							</a>
						</li>
						# IF IS_ADMIN #
							<li class="li-stretch connect-admin">
								<span # IF C_UNREAD_ALERTS #class="stacked administrator"# ENDIF #>
									<i class="fa fa-fw fa-wrench" aria-hidden="true"></i>
									# IF C_UNREAD_ALERTS # <span class="stack-event stack-circle stack-top-right bgc administrator blink">{UNREAD_ALERTS_NUMBER}</span> # ENDIF #
								</span>
								<a href="${relative_url(UserUrlBuilder::administration())}" class="offload">
									<span>{@user.admin.panel}</span>
								</a>
							</li>
						# ENDIF #
						# IF IS_MODERATOR #
							<li class="li-stretch connect-moderation">
								<i class="fa fa-fw fa-gavel" aria-hidden="true"></i>
								<a href="${relative_url(UserUrlBuilder::moderation_panel())}" class="offload">
									<span>{@user.moderation.panel}</span>
								</a>
							</li>
						# ENDIF #
						<li class="li-stretch connect-contribution">
							<span # IF C_UNREAD_CONTRIBUTIONS #class="stacked moderator"# ENDIF #>
								<i class="fa fa-fw fa-file-alt" aria-hidden="true"></i>
								# IF C_UNREAD_CONTRIBUTIONS #<span class="stack-event stack-circle stack-top-right bgc moderator blink">{UNREAD_CONTRIBUTIONS_NUMBER}</span># ENDIF #
							</span>
							<a href="${relative_url(UserUrlBuilder::contribution_panel())}" class="offload">
								<span>{@user.contribution.panel}</span>
							</a>
						</li>
						# START additional_menus #
							# IF additional_menus.C_DISPLAY #
								<li class="li-stretch connect-{additional_menus.MENU_NAME}">
									<span # IF additional_menus.C_UNREAD_ELEMENTS #class="stacked {additional_menus.LEVEL_CLASS}"# ENDIF #>
										<i class="fa-fw# IF additional_menus.C_ICON # {additional_menus.ICON}# ELSE # far fa-file-alt# ENDIF #" aria-hidden="true"></i>
										# IF additional_menus.C_UNREAD_ELEMENTS #<span class="stack-event stack-circle stack-top-right bgc {additional_menus.LEVEL_CLASS} blink">{additional_menus.UNREAD_ELEMENTS_NUMBER}</span># ENDIF #
									</span>
									<a href="{additional_menus.URL}" class="offload">
										<span>{additional_menus.LABEL}</span>
									</a>
								</li>
							# ENDIF #
						# END additional_menus #
						<li class="li-stretch connect-sign-out">
							<i class="fa fa-fw fa-sign-out-alt" aria-hidden="true"></i>
							<a href="${relative_url(UserUrlBuilder::disconnect())}" class="offload">
								<span>{@user.sign.out}</span>
							</a>
						</li>
					</ul>
				</nav>
		# IF C_VERTICAL #
					</div>
				</div>
			</div>
		# ELSE #
			</div>
		# ENDIF #
	# ENDIF #
</div>
