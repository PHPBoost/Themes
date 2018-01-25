<section id="module-download">
	<header>
		<div class="pull-right text-right">
			<div class="btn-group btn-group-xs">
				# IF C_CATEGORY #
					# IF IS_ADMIN #
						<a class="btn btn-info" href="{U_EDIT_CATEGORY}" title="${LangLoader::get_message('edit', 'common')}"><i class="fa fa-edit"></i></a>
					# ENDIF #
				# ENDIF #
				<a class="btn btn-warning" href="${relative_url(SyndicationUrlBuilder::rss('download', ID_CAT))}" title="${LangLoader::get_message('syndication', 'common')}"><i class="fa fa-syndication"></i></a>
			</div>
		</div>
		<h1>
			# IF C_PENDING #
				{@download.pending}
			# ELSE #
				{@module_title}
				# IF NOT C_ROOT_CATEGORY #
				 - {CATEGORY_NAME}
				# ENDIF #
			 # ENDIF #
		</h1>
		# IF C_CATEGORY_DESCRIPTION #
			<div class="cat-description">
				{CATEGORY_DESCRIPTION}
			</div>
			<hr />
		# ENDIF #
	</header>

	# IF C_SUB_CATEGORIES #
		<div class="row grid-columns mb15">
			# START sub_categories_list #
			<div class="col-sm-6 col-md-4 text-center">
				# IF sub_categories_list.C_CATEGORY_IMAGE #
				<a itemprop="about" href="{sub_categories_list.U_CATEGORY}">
					<img itemprop="thumbnailUrl" src="{sub_categories_list.CATEGORY_IMAGE}" alt="{sub_categories_list.CATEGORY_NAME}" />
				</a>
				# ENDIF #
				<div class="caption">
					<a itemprop="about" href="{sub_categories_list.U_CATEGORY}">{sub_categories_list.CATEGORY_NAME}</a>
					<p>
						<small>{sub_categories_list.DOWNLOADFILES_NUMBER} # IF sub_categories_list.C_MORE_THAN_ONE_DOWNLOADFILE #${TextHelper::lcfirst(LangLoader::get_message('files', 'common', 'download'))}# ELSE #${TextHelper::lcfirst(LangLoader::get_message('file', 'common', 'download'))}# ENDIF #</small>
					</p>
				</div>
			</div>
			# END sub_categories_list #
		</div>
		# IF C_SUBCATEGORIES_PAGINATION #
			# INCLUDE SUBCATEGORIES_PAGINATION #
		# ENDIF #
	# ELSE #
		# IF NOT C_CATEGORY_DISPLAYED_TABLE #<div class="clearfix"></div># ENDIF #
	# ENDIF #


	# IF C_FILES #
		# IF C_MORE_THAN_ONE_FILE #
		<div class="items-filters">
			# INCLUDE SORT_FORM #
		</div>
			<div class="clearfix"></div>
		# ENDIF #
		# IF C_CATEGORY_DISPLAYED_TABLE #
			<div class="table-responsive">
				<table class="table">
					<thead>
						<tr>
							<th>${LangLoader::get_message('form.name', 'common')}</th>
							<th class="col-small">${LangLoader::get_message('form.keywords', 'common')}</th>
							<th class="col-small">${LangLoader::get_message('form.date.creation', 'common')}</th>
							<th class="col-small">{@downloads_number}</th>
							# IF C_NB_VIEW_ENABLED #<th>{@download.number.view}</th># ENDIF #
							# IF C_NOTATION_ENABLED #<th>${LangLoader::get_message('note', 'common')}</th># ENDIF #
							# IF C_COMMENTS_ENABLED #<th class="col-small">${LangLoader::get_message('comments', 'comments-common')}</th># ENDIF #
							# IF C_MODERATION #<th class="col-smaller"></th># ENDIF #
						</tr>
					</thead>
					<tbody>
						# START downloadfiles #
						<tr>
							<td>
								<a href="{downloadfiles.U_LINK}" itemprop="name"# IF downloadfiles.C_NEW_CONTENT # class="new-content"# ENDIF #>{downloadfiles.NAME}</a>
							</td>
							<td>
								# IF downloadfiles.C_KEYWORDS #
									# START downloadfiles.keywords #
										<a itemprop="keywords" href="{downloadfiles.keywords.URL}">{downloadfiles.keywords.NAME}</a># IF downloadfiles.keywords.C_SEPARATOR #, # ENDIF #
									# END downloadfiles.keywords #
								# ELSE #
									${LangLoader::get_message('none', 'common')}
								# ENDIF #
							</td>
							<td>
								<time datetime="# IF NOT downloadfiles.C_DIFFERED #{downloadfiles.DATE_ISO8601}# ELSE #{downloadfiles.DIFFERED_START_DATE_ISO8601}# ENDIF #" itemprop="datePublished"># IF NOT downloadfiles.C_DIFFERED #{downloadfiles.DATE}# ELSE #{downloadfiles.DIFFERED_START_DATE}# ENDIF #</time>
							</td>
							<td>
								{downloadfiles.NUMBER_DOWNLOADS}
							</td>
							# IF C_NB_VIEW_ENABLED #
							<td>
								{downloadfiles.NUMBER_VIEW}
							</td>
							# ENDIF #
							# IF C_NOTATION_ENABLED #
							<td>
								{downloadfiles.STATIC_NOTATION}
							</td>
							# ENDIF #
							# IF C_COMMENTS_ENABLED #
							<td>
								# IF downloadfiles.C_COMMENTS # {downloadfiles.NUMBER_COMMENTS} # ENDIF # {downloadfiles.L_COMMENTS}
							</td>
							# ENDIF #
							# IF C_MODERATION #
							<td>
								# IF downloadfiles.C_EDIT #
									<a href="{downloadfiles.U_EDIT}" title="${LangLoader::get_message('edit', 'common')}"><i class="fa fa-edit"></i></a>
								# ENDIF #
								# IF downloadfiles.C_DELETE #
									<a href="{downloadfiles.U_DELETE}" title="${LangLoader::get_message('delete', 'common')}" data-confirmation="delete-element"><i class="fa fa-delete"></i></a>
								# ENDIF #
							</td>
							# ENDIF #
						</tr>
						# END downloadfiles #
					</tbody>
				</table>
			</div>
		# ELSE #
			# START downloadfiles #
			<div class="row">
				<article id="article-download-{downloadfiles.ID}" class="col-md-12 mb15# IF C_CATEGORY_DISPLAYED_SUMMARY # block# ENDIF ## IF downloadfiles.C_NEW_CONTENT # new-content# ENDIF #" itemscope="itemscope" itemtype="http://schema.org/CreativeWork">
					<header>
						<div class="pull-right text-right">
							<div class="btn-group btn-group-xs">
								# IF downloadfiles.C_EDIT #<a class="btn btn-info" href="{downloadfiles.U_EDIT}" title="${LangLoader::get_message('edit', 'common')}"><i class="fa fa-edit"></i></a># ENDIF #
								# IF downloadfiles.C_DELETE #<a class="btn btn-danger" href="{downloadfiles.U_DELETE}" title="${LangLoader::get_message('delete', 'common')}" data-confirmation="delete-element"><i class="fa fa-delete"></i></a># ENDIF #
							</div>

						</div>
						<h2>
							<a href="{downloadfiles.U_LINK}" itemprop="name">{downloadfiles.NAME}</a>
						</h2>

						<meta itemprop="url" content="{downloadfiles.U_LINK}">
						<meta itemprop="description" content="${escape(downloadfiles.DESCRIPTION)}"/>
						# IF C_COMMENTS_ENABLED #
						<meta itemprop="discussionUrl" content="{downloadfiles.U_COMMENTS}">
						<meta itemprop="interactionCount" content="{downloadfiles.NUMBER_COMMENTS} UserComments">
						# ENDIF #
					</header>

					# IF C_CATEGORY_DISPLAYED_SUMMARY #
						<div class="well well-sm">
							<i class="fa fa-download" title="{downloadfiles.L_DOWNLOADED_TIMES}"></i>
							<span title="{downloadfiles.L_DOWNLOADED_TIMES}">{downloadfiles.NUMBER_DOWNLOADS}</span>
							# IF C_NB_VIEW_ENABLED # | <span title="{downloadfiles.NUMBER_VIEW} {@download.view}"><i class="fa fa-eye"></i> {downloadfiles.NUMBER_VIEW}</span># ENDIF #
							# IF C_COMMENTS_ENABLED #
								| <i class="fa fa-comment" title="${LangLoader::get_message('comments', 'comments-common')}"></i>
								# IF downloadfiles.C_COMMENTS # {downloadfiles.NUMBER_COMMENTS} # ENDIF # {downloadfiles.L_COMMENTS}
							# ENDIF #
							# IF downloadfiles.C_KEYWORDS #
								| <i class="fa fa-tags" title="${LangLoader::get_message('form.keywords', 'common')}"></i>
								# START downloadfiles.keywords #
									<a itemprop="keywords" href="{downloadfiles.keywords.URL}">{downloadfiles.keywords.NAME}</a>
									# IF downloadfiles.keywords.C_SEPARATOR #, # ENDIF #
								# END downloadfiles.keywords #
							# ENDIF #
							# IF C_NOTATION_ENABLED #
								<span class="pull-right">{downloadfiles.STATIC_NOTATION}</span>
							# ENDIF #
							<div class="clearfix"></div>
						</div>
						# IF downloadfiles.C_PICTURE #
						<div class="col-md-3 pull-right">
							<img src="{downloadfiles.U_PICTURE}" alt="{downloadfiles.NAME}" itemprop="image" />
						</div>
						# ENDIF #
						{downloadfiles.DESCRIPTION}# IF downloadfiles.C_READ_MORE #... <a href="{downloadfiles.U_LINK}" class="btn btn-info">${LangLoader::get_message('read-more', 'common')}</a># ENDIF #

					# ELSE #

						<div class="col-sm-5 pull-right">
							<div class="panel panel-default">
								<div class="panel-heading">
									{@file_infos}
								</div>
								<ul class="list-group">
									# IF downloadfiles.C_VISIBLE #
									<li class="list-group-item">
										<div class="btn-group">
											<div class="input-group-btn">
												<a href="{downloadfiles.U_DOWNLOAD}" class="btn btn-info">
													<i class="fa fa-download"></i> {@download}
												</a>
											</div>
											# IF IS_USER_CONNECTED #
											<span class="input-group-addon">
												<a href="{downloadfiles.U_DEADLINK}" title="${LangLoader::get_message('deadlink', 'common')}">
													<i class="fa fa-unlink"></i>
												</a>
											</span>
											# ENDIF #
										</div>
									</li>
									# ENDIF #
									<li class="list-group-item">
										<small><strong>${LangLoader::get_message('size', 'common')} : </strong># IF downloadfiles.C_SIZE #{downloadfiles.SIZE}# ELSE #${LangLoader::get_message('unknown_size', 'common')}# ENDIF #</small>
									</li>
									<li class="list-group-item">
										<small><strong>${LangLoader::get_message('form.date.creation', 'common')} : </strong><time datetime="# IF NOT downloadfiles.C_DIFFERED #{downloadfiles.DATE_ISO8601}# ELSE #{downloadfiles.DIFFERED_START_DATE_ISO8601}# ENDIF #" itemprop="datePublished"># IF NOT downloadfiles.C_DIFFERED #{downloadfiles.DATE}# ELSE #{downloadfiles.DIFFERED_START_DATE}# ENDIF #</time></small>
									</li>
									# IF C_UPDATED_DATE #
									<li class="list-group-item">
										<small><strong>${LangLoader::get_message('form.date.update', 'common')} : </strong><time datetime="{downloadfiles.UPDATED_DATE_ISO8601}" itemprop="dateModified">{downloadfiles.UPDATED_DATE}</time></small>
									</li>
									# ENDIF #
									<li class="list-group-item">
										<small><strong>{@downloads_number} : </strong>{downloadfiles.NUMBER_DOWNLOADS}</small>
									</li>
									# IF C_NB_VIEW_ENABLED #
									<li class="list-group-item">
										<small><strong>{@download.number.view} : </strong><span title="{downloadfiles.NUMBER_VIEW} {@download.view}">{downloadfiles.NUMBER_VIEW}</span></small>
									</li>
									# ENDIF #
									# IF downloadfiles.C_KEYWORDS #
									<li class="list-group-item">
										<small>
											<strong>${LangLoader::get_message('form.keywords', 'common')} : </strong>
											# START downloadfiles.keywords #
												<a itemprop="keywords" class="label label-info" href="{downloadfiles.keywords.URL}">{downloadfiles.keywords.NAME}</a># IF downloadfiles.keywords.C_SEPARATOR # # ENDIF #
											# END downloadfiles.keywords #
										</small>
									</li>
									# ENDIF #
									# IF C_AUTHOR_DISPLAYED #
										<li class="list-group-item">
											<small>
												<strong>${LangLoader::get_message('author', 'common')} : </strong>
												# IF downloadfiles.C_AUTHOR_CUSTOM_NAME #
													{downloadfiles.AUTHOR_CUSTOM_NAME}
												# ELSE #
													# IF downloadfiles.C_AUTHOR_EXIST #<a itemprop="author" rel="author" class="{downloadfiles.USER_LEVEL_CLASS}" href="{downloadfiles.U_AUTHOR_PROFILE}" # IF downloadfiles.C_USER_GROUP_COLOR # style="color:{downloadfiles.USER_GROUP_COLOR}" # ENDIF #>{downloadfiles.PSEUDO}</a># ELSE #{downloadfiles.PSEUDO}# ENDIF #
												# ENDIF #
											</small>
										</li>
									# ENDIF #
									# IF C_COMMENTS_ENABLED #
									<li class="list-group-item">
										<small># IF downloadfiles.C_COMMENTS # {downloadfiles.NUMBER_COMMENTS} # ENDIF # {downloadfiles.L_COMMENTS}</small>
									</li>
									# ENDIF #
									# IF downloadfiles.C_VISIBLE #
										# IF C_NOTATION_ENABLED #
										<li class="list-group-item">
											<small class="text-center">{downloadfiles.NOTATION}</small>
										</li>
										# ENDIF #
									# ENDIF #
								</ul>
							</div>
						</div>
						# IF downloadfiles.C_PICTURE #
						<div class="col-sm-7">
							<img src="{downloadfiles.U_PICTURE}" alt="{downloadfiles.NAME}" itemprop="image" />
						</div>
						# ENDIF #
						<div itemprop="text">{downloadfiles.CONTENTS}</div>


					# ENDIF #

					<footer></footer>
				</article>
			</div>

			# END downloadfiles #
		# ENDIF #
	# ELSE #
		# IF NOT C_HIDE_NO_ITEM_MESSAGE #
		<div class="text-center btn btn-default">
			${LangLoader::get_message('no_item_now', 'common')}
		</div>
		# ENDIF #
	# ENDIF #

	<footer># IF C_PAGINATION # # INCLUDE PAGINATION # # ENDIF #</footer>
</section>
