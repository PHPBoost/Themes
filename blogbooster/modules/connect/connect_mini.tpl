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
# IF C_VERTICAL #
	# IF C_USER_NOTCONNECTED #
		<div id="module-connect" class="module-mini-container">
			<div class="module-mini-top">
				<div class="sub-title">{@connection}</div>
			</div>
			<div class="module-mini-contents vertical-fieldset">
				<form action="{U_CONNECT}" method="post" onsubmit="return check_connect();" class="form-element">
					<label for="login">{@login}<input type="text" id="login" name="login" maxlength="25"></label>
					<label for="password">{@password}<input type="password" id="password" name="password" maxlength="30"></label>
					<label for="autoconnect">{@autoconnect} <input checked="checked" type="checkbox" name="autoconnect"></label>
					<input type="hidden" name="redirect" value="{SITE_REWRITED_SCRIPT}">
					<input type="hidden" name="token" value="{TOKEN}">
					<button type="submit" name="connect" value="true" class="submit">{@connection}</button>
				</form>
				<div class="connect-register">
					# IF C_USER_REGISTER #
						<a class="small" href="${relative_url(UserUrlBuilder::registration())}"><i class="fa fa-ticket" aria-hidden="true"></i> {@register}</a>
						# START external_auth #
							<br /><a class="{external_auth.CSS_CLASS}" href="{external_auth.U_CONNECT}" aria-label="{external_auth.NAME}">{external_auth.IMAGE_HTML}</a>
						# END external_auth #
					# ENDIF #
					<br />
					<a class="small" href="${relative_url(UserUrlBuilder::forget_password())}"><i class="fa fa-question-circle" aria-hidden="true"></i> ${LangLoader::get_message('forget-password', 'user-common')}</a>
				</div>
			</div>
			<div class="module-mini-bottom">
			</div>
		</div>
	# ELSE #
		<div id="module-connect" class="module-mini-container">
			<div class="module-mini-top">
				<div class="sub-title">{L_PRIVATE_PROFIL}</div>
			</div>
			<div class="module-mini-contents vertical-fieldset">
				<ul class="connect-content">
					<li>
						<i class="fa fa-user" aria-hidden="true"></i>
						<a href="${relative_url(UserUrlBuilder::home_profile())}" class="small"> {@dashboard}</a>
					</li>
					<li>
						<i class="fa fa-envelope# IF C_HAS_PM # blink# ENDIF #" aria-hidden="true"></i>
						<a href="{U_USER_PM}" class="small"> {L_NBR_PM}</a>
					</li>
					# IF C_ADMIN_AUTH #
					<li>
						<i class="fa fa-wrench# IF C_UNREAD_ALERT # blink# ENDIF #" aria-hidden="true"></i>
						<a href="${relative_url(UserUrlBuilder::administration())}" class="small"> <span>{L_ADMIN_PANEL}</span># IF C_UNREAD_ALERT #<span class="blink">({NUMBER_UNREAD_ALERTS})</span># ENDIF #</a>
					</li>
					# ENDIF #
					# IF C_MODERATOR_AUTH #
					<li>
						<i class="fa fa-legal" aria-hidden="true"></i>
						<a href="${relative_url(UserUrlBuilder::moderation_panel())}" class="small"> {L_MODO_PANEL}</a>
					</li>
					# ENDIF #
					<li>
						<i class="fa fa-file-text# IF C_UNREAD_CONTRIBUTION # blink# ENDIF #" aria-hidden="true"></i>
						<a href="${relative_url(UserUrlBuilder::contribution_panel())}" class="small"> <span>{L_CONTRIBUTION_PANEL}</span># IF C_UNREAD_CONTRIBUTION #<span class="blink">({NUMBER_UNREAD_CONTRIBUTIONS})</span># ENDIF #</a>
					</li>
					<li>
						<i class="fa fa-sign-out" aria-hidden="true"></i>
						<a href="${relative_url(UserUrlBuilder::disconnect())}" class="small"> {@disconnect}</a>
					</li>
				</ul>
			</div>
			<div class="module-mini-bottom">
			</div>
		</div>
	# ENDIF #
# ELSE #
	# IF C_USER_NOTCONNECTED #
	<div id="module-connect">
		<div class="horizontal-fieldset">
		<ul class="connect-content">
				<li>
					<a href="${relative_url(UserUrlBuilder::connect())}" aria-label="{@connection}"><i class="fa fa-sign-in" aria-hidden="true"></i> </a>&nbsp;
				</li>
				<li>
					<a href="{PATH_TO_ROOT}/search" aria-label="Recherche"><i class="fa fa-search" aria-hidden="true"></i> </a>&nbsp;
				</li>
			# IF C_USER_REGISTER #
				<li>
					<a href="${relative_url(UserUrlBuilder::registration())}" aria-label="{@register}"><i class="fa fa-plus" aria-hidden="true"></i> </a>&nbsp;
				</li>
				# START external_auth #
					<li>
						<a class="{external_auth.CSS_CLASS}" href="{external_auth.U_CONNECT}" aria-label="{external_auth.NAME}">{external_auth.IMAGE_HTML}</a>
					</li>
				# END external_auth #
			# ENDIF #
            </ul>
            </div>
		</div>
	</div>
	# ELSE #
	<div id="module-connect">
		<div class="horizontal-fieldset">
			<ul class="connect-content">
				<li>
					<a href="${relative_url(UserUrlBuilder::home_profile())}" aria-label="{L_PRIVATE_PROFIL}"><i class="fa fa-user" aria-hidden="true"></i>  </a>
				</li>
				<li>
					<a href="{U_USER_PM}" aria-label="{L_NBR_PM}"><i class="fa fa-envelope# IF C_HAS_PM # blink# ENDIF #" aria-hidden="true"></i> </a>
				</li>
				# IF C_ADMIN_AUTH #
				<li>
					<a href="${relative_url(UserUrlBuilder::administration())}" aria-label="{L_ADMIN_PANEL}"><i class="fa fa-wrench# IF C_UNREAD_ALERT # blink# ENDIF #" aria-hidden="true"></i> # IF C_UNREAD_ALERT # ({NUMBER_UNREAD_ALERTS})# ENDIF #</a>
				</li>
				# ENDIF #
				# IF C_MODERATOR_AUTH #
				<li>
					<a href="${relative_url(UserUrlBuilder::moderation_panel())}" aria-label="{L_MODO_PANEL}"><i class="fa fa-legal" aria-hidden="true"></i> </a>
				</li>
				# ENDIF #
				<li>
					<a href="${relative_url(UserUrlBuilder::contribution_panel())}" aria-label="{L_CONTRIBUTION_PANEL}"><i class="fa fa-file-text# IF C_UNREAD_CONTRIBUTION # blink# ENDIF #" aria-hidden="true"></i> # IF C_UNREAD_CONTRIBUTION # ({NUMBER_UNREAD_CONTRIBUTIONS})# ENDIF #</a>
				</li>
				<li>
					<a href="${relative_url(UserUrlBuilder::disconnect())}" aria-label="{@disconnect}"><i class="fa fa-sign-out" aria-hidden="true"></i> </a>
				</li>
			</ul>
		</div>
	</div>
	# ENDIF #
# ENDIF #
