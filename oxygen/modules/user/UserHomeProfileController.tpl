<section id="module-user-home">
	<header>
		<h1>{@profile}</h1>
	</header>
	<div class="content">
		<p class="center text-strong">{@welcome} {PSEUDO}</p>
		
		<ul id="profile-container">
			<li>
				<a href="{U_VIEW_PROFILE}" title="${LangLoader::get_message('my_private_profile', 'main')}" class="block-round"><i class="fa fa-user fa-2x"></i></a> 
			</li>
			<li>
				<a href="{U_USER_PM}" title="${LangLoader::get_message('private_message', 'main')}" class="block-round# IF C_HAS_PM # cyan# END IF #">
					# IF C_HAS_PM #
					<span class="fa fa-stack">
						<i class="fa fa-circle blink fa-circle-alert">
							<span>{NUMBER_PM}</span>
						</i>
						<i class="fa fa-envelope-o fa-stack-2x"></i>
					</span><br/>
					# ELSE #
					<i class="fa fa-envelope-o fa-2x"></i>
					# END IF #
				</a>
			</li>
			# IF C_USER_AUTH_FILES #
			<li>
				<a href="{U_UPLOAD}" title="${LangLoader::get_message('files_management', 'main')}" class="block-round">
					<i class="fa fa-cloud-upload fa-2x"></i>
				</a>
			</li>
			# ENDIF #
			# IF IS_ADMIN #
			<li>
				<a href="{PATH_TO_ROOT}/admin/" title="${LangLoader::get_message('admin_panel', 'main')}" class="block-round# IF C_UNREAD_ALERT # cyan# ENDIF #">
					# IF C_UNREAD_ALERT #
					<span class="fa fa-stack">
						<i class="fa fa-circle blink fa-circle-alert">
							<span>{NUMBER_UNREAD_ALERTS}</span>
						</i>
						<i class="fa fa-wrench fa-stack-2x"></i>
					</span><br/>
					# ELSE #
					<i class="fa fa-wrench fa-2x"></i>
					# ENDIF #
				</a>
			</li>
			# ENDIF #
			# IF C_IS_MODERATOR #
			<li>
				<a href="{U_MODERATION_PANEL}" title="${LangLoader::get_message('moderation_panel', 'main')}" class="block-round">
					<i class="fa fa-gavel fa-2x"></i>
				</a>
			</li>
			# ENDIF #
			<li>
				<a href="{U_CONTRIBUTION_PANEL}" title="${LangLoader::get_message('contribution_panel', 'main')}" class="block-round# IF C_KNOWN_NUMBER_OF_UNREAD_CONTRIBUTION # cyan# ENDIF #">
					# IF C_KNOWN_NUMBER_OF_UNREAD_CONTRIBUTION #
					<span class="fa fa-stack">
						<i class="fa fa-circle blink fa-circle-alert">
							<span>{NUMBER_UNREAD_CONTRIBUTIONS}</span>
						</i>
						<i class="fa fa-file-text-o fa-stack-2x"></i>
					</span><br/>
					# ELSE #
					<i class="fa fa-file-text-o fa-2x"></i>
					# ENDIF #
				</a>
			</li>
		</ul>
		<div class="spacer"></div>
		{MSG_MBR}
	</div>
	<footer></footer>
</section>