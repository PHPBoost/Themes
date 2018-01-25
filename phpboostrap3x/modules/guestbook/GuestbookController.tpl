<section id="module-guestbook">
	<header>
		<h1>{@module_title}</h1>
	</header>
	<div class="content">
		# INCLUDE MSG #
		# INCLUDE FORM #

		# IF C_PAGINATION #
			<div class="text-center"># INCLUDE PAGINATION #</div>
			<div class="clearfix"></div>
		# ENDIF #
		# IF C_NO_MESSAGE #
			<div class="well well-lg text-center">${LangLoader::get_message('no_item_now', 'common')}</div>
		# ENDIF #
		# START messages #
			<div class="panel panel-default" id="article-guestbook-{messages.ID}">

				<div id="m{messages.ID}" class="panel-heading">
					<div class="row">
						<div class="col-sm-4">
							# IF messages.C_AUTHOR_EXIST #
							<a href="{messages.U_AUTHOR_PROFILE}" class="{messages.USER_LEVEL_CLASS}" # IF messages.C_USER_GROUP_COLOR # style="color:{messages.USER_GROUP_COLOR}" # ENDIF #>{messages.PSEUDO}</a>
							# ELSE #
							{messages.PSEUDO}
							# ENDIF #
						</div>
						<div class="col-sm-8">
							<div class="pull-right text-right">
								<div class="btn-group btn-group-xs">
									# IF messages.C_EDIT #
									<a class="btn btn-info" href="{messages.U_EDIT}" title="${LangLoader::get_message('edit', 'common')}"><i class="fa fa-edit"></i></a>
									# ENDIF #
									# IF messages.C_DELETE #
									<a class="btn btn-danger" href="{messages.U_DELETE}" title="${LangLoader::get_message('delete', 'common')}" data-confirmation="delete-element"><i class="fa fa-delete"></i></a>
									# ENDIF #
								</div>
							</div>
							<div class="btn-group btn-group-xs">
								<a class="btn btn-info" href="{messages.U_ANCHOR}"><i class="fa fa-hand-o-right"></i></a>
								<span class="btn btn-default">
									${LangLoader::get_message('the', 'common')} {messages.DATE}
								</span>
							</div>
						</div>
					</div>
				</div>
				<div class="panel-body">
					<div class="row">
						<div class="col-sm-4">
							# IF messages.C_AVATAR #
							<p class="text-center">
								<img src="{messages.U_AVATAR}" alt="${LangLoader::get_message('avatar', 'user-common')}" />
							</p>
							# ENDIF #
							# IF messages.C_USER_GROUPS #
								# START messages.user_groups #
									# IF messages.user_groups.C_GROUP_PICTURE #
									<p class="text-center">
										<img src="{PATH_TO_ROOT}/images/group/{messages.user_groups.GROUP_PICTURE}" alt="{messages.user_groups.GROUP_NAME}" title="{messages.user_groups.GROUP_NAME}" />
									</p>
									# ELSE #
									<p class="text-center">
										${LangLoader::get_message('group', 'main')}: {messages.user_groups.GROUP_NAME}
									</p>
									# ENDIF #
								# END user_groups #
							# ENDIF #
						</div>
						<div class="col-sm-8">{messages.CONTENTS}</div>
					</div>
				</div>
			</div>
		# END messages #
	</div>
	<footer># IF C_PAGINATION #<div class="text-center"># INCLUDE PAGINATION #</div># ENDIF #</footer>
</section>
