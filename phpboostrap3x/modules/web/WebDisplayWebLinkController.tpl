<section id="module-web">
	<header>
		<div class="pull-right text-right">
			<div class="btn-group btn-group-xs">
				# IF IS_ADMIN #<a class="btn btn-info" href="{U_EDIT_CATEGORY}" title="${LangLoader::get_message('edit', 'common')}"><i class="fa fa-edit smaller"></i></a># ENDIF #
				<a class="btn btn-warning" href="{U_SYNDICATION}" title="${LangLoader::get_message('syndication', 'common')}"><i class="fa fa-syndication"></i></a>
			</div>
		</div>
		<h1>
			{@module_title}# IF NOT C_ROOT_CATEGORY # - {CATEGORY_NAME}# ENDIF #
		</h1>
	</header>
	# IF NOT C_VISIBLE #
		# INCLUDE NOT_VISIBLE_MESSAGE #
	# ENDIF #
	<article id="article-web-{ID}" itemscope="itemscope" itemtype="http://schema.org/CreativeWork">
		<header>
			<div class="pull-right text-right">
				<div class="btn-group btn-group-xs">
					# IF C_EDIT #
						<a class="btn btn-info" href="{U_EDIT}" title="${LangLoader::get_message('edit', 'common')}"><i class="fa fa-edit"></i></a>
					# ENDIF #
					# IF C_DELETE #
						<a class="btn btn-danger" href="{U_DELETE}" title="${LangLoader::get_message('delete', 'common')}" data-confirmation="delete-element"><i class="fa fa-delete"></i></a>
					# ENDIF #
				</div>
			</div>
			<h2>
				<span id="name" itemprop="name">{NAME}</span>
			</h2>

			<meta itemprop="url" content="{U_LINK}">
			<meta itemprop="description" content="${escape(DESCRIPTION)}" />
			# IF C_COMMENTS_ENABLED #
			<meta itemprop="discussionUrl" content="{U_COMMENTS}">
			<meta itemprop="interactionCount" content="{NUMBER_COMMENTS} UserComments">
			# ENDIF #

		</header>
		<div class="row# IF C_IS_PARTNER # content-friends# ENDIF ## IF C_IS_PRIVILEGED_PARTNER # content-privileged-friends# ENDIF ## IF C_NEW_CONTENT # new-content# ENDIF#">
			<div class="col-sm-8">
				# IF C_PICTURE #
				<span class="web-picture">
					<img src="{U_PICTURE}" alt="{NAME}" itemprop="image" />
				</span>
				# ENDIF #
				<div itemprop="text">{CONTENTS}</div>
			</div>

			<div class="col-sm-4">
				<div class="panel panel-default">
					<div class="panel-heading">
						{@link_infos}
					</div>
					# IF C_IS_PARTNER #
						# IF C_HAS_PARTNER_PICTURE #
						<div class="panel-body">
							<img src="{U_PARTNER_PICTURE}" alt="{NAME}" itemprop="image" />
						</div>
						# ENDIF #
					# ENDIF #
					<ul class="list-group">
						# IF C_VISIBLE #
						<li class="list-group-item">
							<div class="btn-group">
								<a href="{U_VISIT}" class="btn btn-primary">
									<i class="fa fa-globe"></i> {@visit}
								</a>
								# IF IS_USER_CONNECTED #
								<a class="btn btn-info" href="{U_DEADLINK}" class="basic-button alt" title="${LangLoader::get_message('deadlink', 'common')}">
									<i class="fa fa-unlink"></i>
								</a>
								# ENDIF #
							</div>
						</li>
						# ENDIF #
						<li class="list-group-item">
							{@visits_number} : <strong>{NUMBER_VIEWS}</strong>
						</li>
						<li class="list-group-item">
							${LangLoader::get_message('category', 'categories-common')} : <strong><a itemprop="about" class="small" href="{U_CATEGORY}">{CATEGORY_NAME}</a></strong>
						</li>
						# IF C_KEYWORDS #
						<li class="list-group-item">
							${LangLoader::get_message('form.keywords', 'common')} :
							<strong>
								# START keywords #
									<a itemprop="keywords" class="small" href="{keywords.URL}">{keywords.NAME}</a># IF keywords.C_SEPARATOR #, # ENDIF #
								# END keywords #
							</strong>
						</li>
						# ENDIF #
						# IF C_COMMENTS_ENABLED #
						<li class="list-group-item text-center"># IF C_COMMENTS # {NUMBER_COMMENTS} # ENDIF # {L_COMMENTS}</li>
						# ENDIF #
						# IF C_VISIBLE #
						<li class="list-group-item text-center">
							# IF C_NOTATION_ENABLED #
								{NOTATION}
							# ENDIF #
						</li>
						# ENDIF #
					</ul>
				</div>
			</div>
			<div class="col-sm-12">
				# INCLUDE COMMENTS #
			</div>
		</div>
		<footer></footer>
	</article>
	<footer></footer>
</section>
