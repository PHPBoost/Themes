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
					<h6 class="cell-name">{@user.welcome} {@user.rank.visitor}}</h6>
				</div>
				<div class="cell-list connect-contents">
			# ELSE #
				<div class="cell-list cell-list-inline connect-contents js-target">
					<a href="#" class="connect-button" aria-label="{@user.sign.in}">
						<i class="fa fa-sign-in-alt" aria-hidden="true"></i>
					</a>
			# ENDIF #
					<div class="connect-container">
						<i class="close-connect fa fa-window-close" aria-hidden="true"></i> <span class="sr-only">${LangLoader::get_message('common.close', 'common-lang')}</span>
						<ul class="cell-list">
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
									<label class="checkbox autoconnect small" for="autoconnect">
										<span>{@user.auto.connect}</span>
										<input checked="checked" type="checkbox" id="autoconnect" name="autoconnect" aria-label="{@user.auto.connect}">
									</label>
								</li>
								<li class="align-center">
									<input type="hidden" name="redirect" value="{SITE_REWRITED_SCRIPT}">
									<input type="hidden" name="token" value="{TOKEN}">
									<button type="submit" name="authenticate" value="internal" class="button bgc-full success small">{@user.sign.in}</button>
								</li>
							</form>

							# IF C_REGISTRATION_DISPLAYED #
								# IF C_REGISTRATION_ENABLED #
									<li class="align-center">
										<a href="${relative_url(UserUrlBuilder::registration())}" class="button submit small offload">{@user.sign.up}</a>
									</li>
								# ENDIF #
								<li# IF C_VERTICAL # class="li-stretch"# ENDIF #>
									# START external_auth #
										<a class="{external_auth.CSS_CLASS}" href="{external_auth.U_SIGN_IN}" aria-label="{external_auth.NAME}">{external_auth.IMAGE_HTML}</a>
									# END external_auth #
								</li>
							# ENDIF #
							<li class="align-center">
								<a class="button bgc-full warning smaller offload" href="${relative_url(UserUrlBuilder::forget_password())}">
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
				</div>
				<div class="cell-list connected-contents">
			# ELSE #
					<a href="#" class="connect-button" aria-label="{@user.my.profile}">
						<i class="fa fa-fw fa-user# IF IS_ADMIN #-tie# ENDIF # # IF NUMBER_TOTAL_ALERT # warning# ENDIF #" aria-hidden="true"></i>
						# IF C_HAS_PM #
							<span class="stacked blink member smaller">
								<i class="fa fa-fw fa-people-arrows" aria-hidden="true"></i>
								<span class="stack-event stack-circle stack-top-right bgc member">{PM_NUMBER}</span>
							</span>
						# ENDIF #
						# IF IS_ADMIN #
							# IF C_UNREAD_ALERTS #
								<span class="stacked blink administrator smaller">
									<i class="fa fa-fw fa-wrench" aria-hidden="true"></i>
									<span class="stack-event stack-circle stack-top-right bgc administrator">{UNREAD_ALERTS_NUMBER}</span>
								</span>
							# ENDIF #
						# ENDIF #
						# IF C_UNREAD_CONTRIBUTIONS #
							<span class="stacked blink moderator smaller">
								<i class="fa fa-fw fa-file-alt" aria-hidden="true"></i>
								<span class="stack-event stack-circle stack-top-right bgc moderator">{UNREAD_CONTRIBUTIONS_NUMBER}</span>
							</span>
						# ENDIF #
						# START additional_menus #
							# IF additional_menus.C_DISPLAY #
								# IF additional_menus.C_UNREAD_ELEMENTS #
									<span class="stacked {additional_menus.LEVEL_CLASS} blink smaller">
										<i class="fa-fw# IF additional_menus.C_ICON # {additional_menus.ICON}# ELSE # far fa-file-alt# ENDIF #" aria-hidden="true"></i>
										<span class="stack-event stack-circle stack-top-right bgc {additional_menus.LEVEL_CLASS} blink">{additional_menus.UNREAD_ELEMENTS_NUMBER}</span>
									</span>
								# ENDIF #
							# ENDIF #
						# END additional_menus #
					</a>
				<div class="cell-list connected-contents connect-container">
			# ENDIF #
					# IF C_HORIZONTAL #<i class="close-connect fa fa-window-close" aria-hidden="true"></i> <span class="sr-only">${LangLoader::get_message('common.close', 'common-lang')}</span># ENDIF #
					<div class="connect-inner">
						# IF C_HORIZONTAL #
							<div class="connect-avatar hidden-small-screens">
								<img src="{U_USER_AVATAR}" alt="avatar">
							</div>
						# ENDIF #
						<ul>
							<li class="li-stretch connect-profil">
								<i class="fa fa-fw fa-tachometer-alt" aria-hidden="true"></i>
								<a class="offload" href="${relative_url(UserUrlBuilder::home_profile())}">
									 <span class="pbt-small-screen">{@user.my.account}</span>
								</a>
							</li>
							<li class="li-stretch connect-pm">
								<span # IF C_HAS_PM #class="stacked blink member"# ENDIF #>
									<i class="fa fa-fw fa-people-arrows" aria-hidden="true"></i>
									# IF C_HAS_PM #<span class="stack-event stack-circle stack-top-right bgc member">{PM_NUMBER}</span> # ENDIF #
								</span>
								<a class="offload" href="{U_USER_PM}">
									 <span>{@user.private.messaging}</span>
								</a>
							</li>
							# IF IS_ADMIN #
								<li class="li-stretch connect-admin">
									<span # IF C_UNREAD_ALERTS #class="stacked blink administrator"# ENDIF #>
										<i class="fa fa-fw fa-wrench" aria-hidden="true"></i>
										# IF C_UNREAD_ALERTS # <span class="stack-event stack-circle stack-top-right bgc administrator">{UNREAD_ALERTS_NUMBER}</span> # ENDIF #
									</span>
									<a class="offload" href="${relative_url(UserUrlBuilder::administration())}">
										 <span>{@user.admin.panel}</span>
									</a>
								</li>
							# ENDIF #
							# IF IS_MODERATOR #
								<li class="li-stretch connect-moderation">
									<i class="fa fa-fw fa-gavel" aria-hidden="true"></i>
									<a class="offload" href="${relative_url(UserUrlBuilder::moderation_panel())}">
										 <span>{@user.moderation.panel}</span>
									</a>
								</li>
							# ENDIF #
							<li class="li-stretch connect-contribution">
								<span # IF C_UNREAD_CONTRIBUTIONS #class="stacked blink moderator"# ENDIF #>
									<i class="fa fa-fw fa-file-alt" aria-hidden="true"></i>
									# IF C_UNREAD_CONTRIBUTIONS #<span class="stack-event stack-circle stack-top-right bgc moderator">{UNREAD_CONTRIBUTIONS_NUMBER}</span># ENDIF #
								</span>
								<a class="offload" href="${relative_url(UserUrlBuilder::contribution_panel())}">
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
							<li class="li-stretch connect-disconnect">
								<i class="fa fa-fw fa-sign-out-alt" aria-hidden="true"></i>
								<a class="offload" href="${relative_url(UserUrlBuilder::disconnect())}">
									 <span>{@user.sign.out}</span>
								</a>
							</li>
						</ul>
					</div>
				</div>
		# ENDIF #
	</div>
</div>
# IF C_HORIZONTAL #
	<script>
		jQuery('.connect-button').opensubmenu({
			osmTarget: '#module-connect',
			osmCloseExcept: '.connect-container *',
			osmCloseButton: '.close-connect',
		}).closest('#module-connect').parent().css('position', 'relative');
	</script>
# ENDIF #
