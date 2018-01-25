<section id="module-download">
	<header>
		<div class="pull-right text-right">
			<div class="btn-group btn-group-xs">
				# IF IS_ADMIN #<a class="btn btn-info" href="{U_EDIT_CATEGORY}" title="${LangLoader::get_message('edit', 'common')}"><i class="fa fa-edit"></i></a># ENDIF #
				<a class="btn btn-warning" href="{U_SYNDICATION}" title="${LangLoader::get_message('syndication', 'common')}"><i class="fa fa-syndication"></i></a>
			</div>
		</div>
		<h1>
			{@module_title}# IF NOT C_ROOT_CATEGORY # - {CATEGORY_NAME}# ENDIF #
		</h1>
	</header>
	<div class="row">
		# IF NOT C_VISIBLE #
			# INCLUDE NOT_VISIBLE_MESSAGE #
		# ENDIF #
		<article itemscope="itemscope" itemtype="http://schema.org/CreativeWork" id="article-download-{ID}" class="col-sm-12# IF C_NEW_CONTENT # new-content# ENDIF #">
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

				<div class="col-sm-5 pull-right">
					<div class="panel panel-default">
						<div class="panel-heading">{@file_infos}</div>
						<ul class="list-group">
							# IF C_VISIBLE #
							<li class="list-group-item">
								# IF C_DISPLAY_DOWNLOAD_LINK #
								<div class="btn-group">
									<div class="input-group-btn">
										<a href="{U_DOWNLOAD}" class="btn btn-info">
											<i class="fa fa-download"></i> {@download}
										</a>
									</div>
									# IF IS_USER_CONNECTED #
									<span class="input-group-addon">
										<a href="{U_DEADLINK}" title="${LangLoader::get_message('deadlink', 'common')}">
											<i class="fa fa-unlink"></i>
										</a>
									</span>
									# ENDIF #
								</div>
								# ELSE #
									# INCLUDE UNAUTHORIZED_TO_DOWNLOAD_MESSAGE #
								# ENDIF #
							</li>
							# ENDIF #
							<li class="list-group-item">
								<small><strong>${LangLoader::get_message('size', 'common')} : </strong># IF C_SIZE #{SIZE}# ELSE #${LangLoader::get_message('unknown_size', 'common')}# ENDIF #</small>
							</li>
							<li class="list-group-item">
								<small><strong>${LangLoader::get_message('form.date.creation', 'common')} : </strong><time datetime="# IF NOT C_DIFFERED #{DATE_ISO8601}# ELSE #{DIFFERED_START_DATE_ISO8601}# ENDIF #" itemprop="datePublished"># IF NOT C_DIFFERED #{DATE}# ELSE #{DIFFERED_START_DATE}# ENDIF #</time></small>
							</li>
							# IF C_UPDATED_DATE #
							<li class="list-group-item">
								<small><strong>${LangLoader::get_message('form.date.update', 'common')} : </strong><time datetime="{UPDATED_DATE_ISO8601}" itemprop="dateModified">{UPDATED_DATE}</time></small>
							</li>
							# ENDIF #
							<li class="list-group-item">
								<small><strong>{@downloads_number} : </strong>{NUMBER_DOWNLOADS}</small>
							</li>
							# IF C_NB_VIEW_ENABLED #
							<li class="list-group-item">
								<small><strong>{@download.number.view} : </strong>{NUMBER_VIEW}</small>
							</li>
							# ENDIF #
							<li class="list-group-item">
								<small><strong>${LangLoader::get_message('category', 'categories-common')} : </strong><a itemprop="about" class="small" href="{U_CATEGORY}">{CATEGORY_NAME}</a></small>
							</li>
							# IF C_KEYWORDS #
							<li class="list-group-item">
								<small>
									<strong>${LangLoader::get_message('form.keywords', 'common')} : </strong>
									# START keywords #
										<a itemprop="keywords" class="label label-info" href="{keywords.URL}">{keywords.NAME}</a># IF keywords.C_SEPARATOR # # ENDIF #
									# END keywords #
								</small>
							</li>
							# ENDIF #
							# IF C_AUTHOR_DISPLAYED #
							<li class="list-group-item">
								<small>
									<strong>${LangLoader::get_message('author', 'common')} : </strong>
									# IF C_AUTHOR_CUSTOM_NAME #
										{AUTHOR_CUSTOM_NAME}
									# ELSE #
										# IF C_AUTHOR_EXIST #<a itemprop="author" rel="author" class="small {USER_LEVEL_CLASS}" href="{U_AUTHOR_PROFILE}" # IF C_USER_GROUP_COLOR # style="color:{USER_GROUP_COLOR}" # ENDIF #>{PSEUDO}</a># ELSE #{PSEUDO}# ENDIF #
									# ENDIF #
								</small>
							</li>
							# ENDIF #
							# IF C_COMMENTS_ENABLED #
							<li class="list-group-item"><small class="text-center"># IF C_COMMENTS # {NUMBER_COMMENTS} # ENDIF # {L_COMMENTS}</small></li>
							# ENDIF #
							# IF C_VISIBLE #
								# IF C_NOTATION_ENABLED #
							<li class="list-group-item"><small class="text-center">{NOTATION}</small></li>
							# ENDIF #
						# ENDIF #
						</ul>
					</div>
				</div>
				# IF C_PICTURE #
				<div class="col-sm-7">
					<img src="{U_PICTURE}" alt="{NAME}" itemprop="image" />
				</div>
				# ENDIF #
				<div itemprop="text" class="mb15">{CONTENTS}</div>

			<aside>
				# INCLUDE COMMENTS #
			</aside>
			<footer></footer>
		</article>
	</div>
	<footer></footer>
</section>
