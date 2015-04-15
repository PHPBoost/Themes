<section>
	<header class="color-04">
		<h1>{@module_title}</h1>
	</header>
	<div class="content">
		# INCLUDE FORM #
		
		# IF C_PAGINATION #
			<div class="center"># INCLUDE PAGINATION #</div>
			<div class="spacer">&nbsp;</div>
		# ENDIF #
		# IF C_NO_MESSAGE #
			<div class="notice message-helper-small center">{@guestbook.titles.no_message}</div>
		# ENDIF #
		# START messages #
			<article id="m{messages.ID}" class="message">
				<div class="message-user-infos">
					<div class="message-pseudo">
						# IF messages.C_AUTHOR_EXIST #
						<a href="{messages.U_AUTHOR_PROFILE}" class="{messages.USER_LEVEL_CLASS}" # IF messages.C_USER_GROUP_COLOR # style="color:{messages.USER_GROUP_COLOR}" # ENDIF #>{messages.PSEUDO}</a>
						# ELSE #
						{messages.PSEUDO}
						# ENDIF #
					</div>
					# IF messages.C_AVATAR #<img src="{messages.U_AVATAR}" alt="" class="message-avatar" /># ENDIF #
					# IF messages.C_USER_GROUPS #
						<div class="spacer"></div>
						# START messages.user_groups #
							# IF messages.user_groups.C_GROUP_PICTURE #
							<img src="{PATH_TO_ROOT}/images/group/{messages.user_groups.GROUP_PICTURE}" alt="{messages.user_groups.GROUP_NAME}" title="{messages.user_groups.GROUP_NAME}"/>
							# ELSE #
							${LangLoader::get_message('group', 'main')}: {messages.user_groups.GROUP_NAME}
							# ENDIF #
						# END user_groups #
					# ENDIF #
				</div>
				<div class="message-container">
					<div class="message-date">
						<span class="actions">
							# IF messages.C_EDIT #
							<a href="{messages.U_EDIT}" title="${LangLoader::get_message('edit', 'main')}" class="fa fa-edit"></a>
							# ENDIF #
							# IF messages.C_DELETE #
							<a href="{messages.U_DELETE}" title="${LangLoader::get_message('delete', 'main')}" class="fa fa-delete" data-confirmation="delete-element"></a>
							# ENDIF #
						</span>
						<a href="{messages.U_ANCHOR}"><i class="fa fa-hand-o-right"></i></a> ${LangLoader::get_message('on', 'main')} {messages.DATE}
					</div>
					<div class="message-message">
						<div class="message-content">{messages.CONTENTS}</div>
					</div>
				</div>
			</article>
		# END messages #
	</div>
	<footer># IF C_PAGINATION #<div class="center"># INCLUDE PAGINATION #</div># ENDIF #</footer>
</section>
