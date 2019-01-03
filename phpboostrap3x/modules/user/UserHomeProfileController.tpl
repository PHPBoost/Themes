<section id="module-user-home">
	<header>
		<h1>{@dashboard}</h1>
	</header>
	<div class="row">
		<p class="col-sm-12 text-center">{@welcome} <strong>{PSEUDO}</strong></p>

		<div id="profile-container" class="text-center grid-columns">
			<div class="col-sm-4 mb15">
				<a href="{U_VIEW_PROFILE}" title="">
					<p>
						<i class="fa fa-user fa-2x"></i>
					</p>
					${LangLoader::get_message('my_private_profile', 'main')}
				</a>
			</div>
			<div class="col-sm-4 mb15">
				<a href="{U_USER_PM}">
					# IF C_HAS_PM #
					<p>
						<i class="fa fa-envelope-o fa-2x"></i>
						<span class="pad blink bg-pbt">{NUMBER_PM}</span>
					</p>
					# ELSE #
					<p>
						<i class="fa fa-envelope-o fa-2x"></i>
					</p>
					# END IF #
					${LangLoader::get_message('private_message', 'main')}
				</a>
			</div>
			# IF C_USER_AUTH_FILES #
			<div class="col-sm-4 mb15">
				<a href="{U_UPLOAD}">
					<p>
						<i class="fa fa-cloud-upload fa-2x"></i>
					</p>
					${LangLoader::get_message('files_management', 'main')}
				</a>
			</div>
			# ENDIF #
			# IF IS_ADMIN #
			<div class="col-sm-4 mb15">
				<a href="{PATH_TO_ROOT}/admin/">
					# IF C_UNREAD_ALERT #
					<p>
						<i class="fa fa-wrench fa-2x"></i>
						<span class="pad blink bg-warning">{NUMBER_UNREAD_ALERTS}</span>
					</p>
					# ELSE #
					<p>
						<i class="fa fa-wrench fa-2x"></i>
					</p>
					# ENDIF #
					${LangLoader::get_message('admin_panel', 'main')}
				</a>
			</div>
			# ENDIF #
			# IF C_IS_MODERATOR #
			<div class="col-sm-4 mb15">
				<a href="{U_MODERATION_PANEL}">
					<p>
						<i class="fa fa-gavel fa-2x"></i>
					</p>
					${LangLoader::get_message('moderation_panel', 'main')}
				</a>
			</div>
			# ENDIF #
			<div class="col-sm-4 mb15">
				<a href="{U_CONTRIBUTION_PANEL}">
					# IF C_KNOWN_NUMBER_OF_UNREAD_CONTRIBUTION #
					<p>
						<i class="fa fa-file-text-o fa-2x"></i>
						<span class="pad blink bg-primary">{NUMBER_UNREAD_CONTRIBUTIONS}</span>
					</p>
					# ELSE #
					<p>
						<i class="fa fa-file-text-o fa-2x"></i>
					</p>
					# ENDIF #
					${LangLoader::get_message('contribution_panel', 'main')}
				</a>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>
	<div class="alert alert-success">
		{MSG_MBR}
	</div>
	<footer></footer>
</section>
