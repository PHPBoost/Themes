<section>
	<header>
		<h1>{@profile}</h1>
	</header>
	<div class="content" >
		<p style="text-align:center;" class="text-strong">${LangLoader::get_message('welcome', 'main')} {PSEUDO}</p>
		
		<ul id="profile-container">
			<li>
				<a href="{U_EDIT_PROFILE}" class="block-round" title="{@profile.edit}">
					<i class="fa fa-user fa-2x"></i>
				</a>
				<br />{@profile.edit}
			</li>
			<li>
				<a href="{U_USER_PM}" class="block-round # IF C_HAS_PM # cyan# END IF #" title="${LangLoader::get_message('private_message', 'main')} # IF C_HAS_PM # {NUMBER_PM}# END IF #">
					<i class="fa fa-envelope-o fa-2x"></i>
				</a>
				<br />${LangLoader::get_message('private_message', 'main')}
			</li>
			# IF C_USER_AUTH_FILES #
			<li>
				<a href="{U_UPLOAD}" class="block-round" title="${LangLoader::get_message('files_management', 'main')}">
					<i class="fa fa-cloud-upload fa-2x"></i>
				</a>
				<br />${LangLoader::get_message('files_management', 'main')}
			</li>
			# ENDIF #
			# IF IS_ADMIN #
			<li>
				<a href="{PATH_TO_ROOT}/admin/" class="block-round # IF C_UNREAD_ALERT # cyan# ENDIF #" title="${LangLoader::get_message('admin_panel', 'main')}# IF C_UNREAD_ALERT # {NUMBER_UNREAD_ALERTS}# ENDIF #">
					<i class="fa fa-wrench fa-2x"></i>
				</a>
				<br />${LangLoader::get_message('admin_panel', 'main')}
			</li>
			# ENDIF #
			# IF C_IS_MODERATOR #
			<li>
				<a href="{U_MODERATION_PANEL}" class="block-round" title="${LangLoader::get_message('moderation_panel', 'main')}">
					<i class="fa fa-gavel fa-2x"></i>
				</a>
				<br />${LangLoader::get_message('moderation_panel', 'main')}
			</li>
			# ENDIF #
			<li>
				<a href="{U_CONTRIBUTION_PANEL}" class="block-round# IF C_KNOWN_NUMBER_OF_UNREAD_CONTRIBUTION # cyan# ENDIF #" title="${LangLoader::get_message('contribution_panel', 'main')}# IF C_KNOWN_NUMBER_OF_UNREAD_CONTRIBUTION # {NUMBER_UNREAD_CONTRIBUTIONS} # ENDIF #">
					<i class="fa fa-file-text-o fa-2x"></i>
				</a>
				<br />${LangLoader::get_message('contribution_panel', 'main')}
			</li>
		</ul>
		{MSG_MBR}
	</div>
	<footer></footer>
</section>