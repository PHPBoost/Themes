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

<div id="module-connect" class="connect-menu# IF C_USER_NOTCONNECTED # not-connected# ELSE # connected# ENDIF## IF C_VERTICAL # module-mini-container vertical# ELSE # horizontal# ENDIF #">
	# IF C_USER_NOTCONNECTED #

		# IF C_VERTICAL #
		<div class="module-mini-top">
			<div class="sub-title">{@connection}</div>
		</div>
		<div class="module-mini-contents connect-contents">
		# ELSE #
		<div class="connect-contents">
		# ENDIF #
			<div class="connect-containers">
				<!-- My Memu connected  -->
				<div class="dropdownWrapper">
					<div class="dropdownLabel"> <a href="{PATH_TO_ROOT}/user/login" class="login-connect">Se connecter</a></div>
				</div>
				# IF C_DISPLAY_REGISTER_CONTAINER #
					# IF C_USER_REGISTER #
						<div class="dropdownWrapper">
							<div class="dropdownLabel"> <a href="{PATH_TO_ROOT}/user/registration/" class="login-connect">S'inscrire</a></div>
						</div>
					# ENDIF #
				# ENDIF #
				<div class="dropdownWrapper">
					<div class="dropdownLabel"> <a href="${relative_url(UserUrlBuilder::forget_password())}" class="login-connect">Mot de passe oublié</a></div>
				</div>
				<!-- My Memu : fin -->

				# IF C_DISPLAY_REGISTER_CONTAINER #
					# START external_auth #
						<a class="{external_auth.CSS_CLASS}" href="{external_auth.U_CONNECT}" aria-label="{external_auth.NAME}">{external_auth.IMAGE_HTML}</a>
					# END external_auth #
				# ENDIF #
			</div>
		</div>
		# IF C_VERTICAL #

		<div class="module-mini-bottom">
		</div>
		# ENDIF #

	# ELSE # <!-- User Connected -->
	<!-- My Memu horizontale -->
		<div id="connected" class="connect-container">
			<div class="dropdownWrapper">
				<div class="dropdownLabel"> {PSEUDO}, Bienvenue sur le site! </div>
				<div class="dropdownPanel">
				# IF C_VERTICAL #
				<div class="module-mini-top">
					<div class="sub-title">{L_PRIVATE_PROFIL}</div>
				</div>
				<div class="module-mini-contents connect-contents">
				# ELSE #
				<div class="connect-contents">
					<a href="" class="js-menu-button" onclick="open_submenu('module-connect', 'active-connect');return false;" title="{@dashboard}">
						<i class="fa fa-bars # IF NUMBER_TOTAL_ALERT # blink alert# ENDIF #" aria-hidden="true"></i><span>{L_PRIVATE_PROFIL}</span>
					</a>
				# ENDIF #
						<div id="connected-menu">
							<div class="module-mini-contents vertical-fieldset">
									<div id="connect-rang">
										<p><a href="${relative_url(UserUrlBuilder::home_profile())}" class="{USER_LEVEL_CLASS}" # IF C_USER_GROUP_COLOR # style="color:{C_USER_GROUP_COLOR}" # ENDIF #>{USER_LEVEL_CLASS}</a></p>
									</div>
									<div id="connect-base">
										<span class="connect-avatar">
										<a href="${relative_url(UserUrlBuilder::home_profile())}" class="center"> <img src="{U_AVATAR_IMG}"></a><br />
										</span>
									</div>
								<ul class="connect-content">
									<li>

									</li>
									<li>
										<i class="fa fa-user"></i>
										<a href="${relative_url(UserUrlBuilder::home_profile())}" class="small"> {L_PRIVATE_PROFIL}</a>
									</li>
									<li>
										<i class="fa fa-envelope# IF C_HAS_PM # blink# ENDIF #"></i>
										<a href="{U_USER_PM}" class="small"> {L_NBR_PM}</a>
									</li>
									# IF C_ADMIN_AUTH #
									<li>
										<i class="fa fa-wrench# IF C_UNREAD_ALERT # blink# ENDIF #"></i>
										<a href="${relative_url(UserUrlBuilder::administration())}" class="small"> {L_ADMIN_PANEL}</a>
									</li>
									# ENDIF #
									# IF C_MODERATOR_AUTH #
									<li>
										<i class="fa fa-legal"></i>
										<a href="${relative_url(UserUrlBuilder::moderation_panel())}" class="small"> {L_MODO_PANEL}</a>
									</li>
									# ENDIF #
									<li>
										<i class="fa fa-file-text# IF C_UNREAD_CONTRIBUTION # blink# ENDIF #"></i>
										<a href="${relative_url(UserUrlBuilder::contribution_panel())}" class="small"> {L_CONTRIBUTION_PANEL}</a>
									</li>
									<li>
										<i class="fa fa-sign-out"></i>
										<a href="${relative_url(UserUrlBuilder::disconnect())}" class="small"> {@disconnect}</a>
									</li>
								</ul>
							</div>
							<div class="module-mini-bottom">
							</div>
						</div>

				</div>
				# IF C_VERTICAL #
				<div class="module-mini-bottom">
				</div>
				# ENDIF #

					</div>
				</div>
			</div>
		</div>
	# ENDIF #
</div>
