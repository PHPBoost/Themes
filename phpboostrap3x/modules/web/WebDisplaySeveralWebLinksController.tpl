<section id="module-web">
	<header class="page-header">
		<div class="pull-right text-right">
			<div class="btn-group btn-group-xs">
				# IF C_CATEGORY ## IF IS_ADMIN #<a class="btn btn-info" href="{U_EDIT_CATEGORY}" title="${LangLoader::get_message('edit', 'common')}"><i class="fa fa-edit"></i></a># ENDIF ## ENDIF #
				<a class="btn btn-warning" href="${relative_url(SyndicationUrlBuilder::rss('web', ID_CAT))}" title="${LangLoader::get_message('syndication', 'common')}"><i class="fa fa-syndication"></i></a>
			</div>
		</div>
		<h1>
			# IF C_PENDING #{@web.pending}# ELSE #{@module_title}# IF NOT C_ROOT_CATEGORY # - {CATEGORY_NAME}# ENDIF ## ENDIF #
		</h1>

		# IF C_CATEGORY_DESCRIPTION #
		<div class="cat-description">
			{CATEGORY_DESCRIPTION}
		</div>
		# ENDIF #

	</header>

	# IF C_SUB_CATEGORIES #
		<div class="row grid-columns mb15">
			# START sub_categories_list #
			<div class="col-sm-6 col-md-4 text-center">
				# IF sub_categories_list.C_CATEGORY_IMAGE #<a itemprop="about" href="{sub_categories_list.U_CATEGORY}"><img itemprop="thumbnailUrl" src="{sub_categories_list.CATEGORY_IMAGE}" alt="{sub_categories_list.CATEGORY_NAME}" /></a># ENDIF #
				<div class="caption mb15">
					<a itemprop="about" href="{sub_categories_list.U_CATEGORY}">{sub_categories_list.CATEGORY_NAME}</a>
					<p>
						<small>{sub_categories_list.WEBLINKS_NUMBER} # IF sub_categories_list.C_MORE_THAN_ONE_WEBLINK #${TextHelper::lcfirst(LangLoader::get_message('links', 'common', 'web'))}# ELSE #${TextHelper::lcfirst(LangLoader::get_message('link', 'common', 'web'))}# ENDIF #</small>
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


	# IF C_WEBLINKS #
		# IF C_MORE_THAN_ONE_WEBLINK #
		<div class="item-filters">
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
						<th class="col-small">{@visits_number}</th>
						# IF C_NOTATION_ENABLED #<th>${LangLoader::get_message('note', 'common')}</th># ENDIF #
						# IF C_COMMENTS_ENABLED #<th class="col-small">${LangLoader::get_message('comments', 'comments-common')}</th># ENDIF #
						# IF C_MODERATE #<th class="col-smaller"></th># ENDIF #
					</tr>
				</thead>
				<tbody>
					# START weblinks #
					<tr>
						<td>
							<a href="{weblinks.U_LINK}" itemprop="name"# IF weblinks.C_NEW_CONTENT # class="new-content"# ENDIF#>{weblinks.NAME}</a>
						</td>
						<td>
							# IF weblinks.C_KEYWORDS #
								# START weblinks.keywords #
									<a itemprop="keywords" href="{weblinks.keywords.URL}">{weblinks.keywords.NAME}</a># IF weblinks.keywords.C_SEPARATOR #, # ENDIF #
								# END weblinks.keywords #
							# ELSE #
								${LangLoader::get_message('none', 'common')}
							# ENDIF #
						</td>
						<td>
							{weblinks.NUMBER_VIEWS}
						</td>
						# IF C_NOTATION_ENABLED #
						<td>
							{weblinks.STATIC_NOTATION}
						</td>
						# ENDIF #
						# IF C_COMMENTS_ENABLED #
						<td>
							# IF weblinks.C_COMMENTS # {weblinks.NUMBER_COMMENTS} # ENDIF # {weblinks.L_COMMENTS}
						</td>
						# ENDIF #
						# IF C_MODERATE #
						<td>
							# IF weblinks.C_EDIT #
							<a href="{weblinks.U_EDIT}" title="${LangLoader::get_message('edit', 'common')}"><i class="fa fa-edit"></i></a>
							# ENDIF #
							# IF weblinks.C_DELETE #
							<a href="{weblinks.U_DELETE}" title="${LangLoader::get_message('delete', 'common')}" data-confirmation="delete-element"><i class="fa fa-delete"></i></a>
							# ENDIF #
						</td>
						# ENDIF #
					</tr>
					# END weblinks #
				</tbody>
			</table>
		</div>
		# ELSE #
			# IF C_CATEGORY_DISPLAYED_SUMMARY #
				# START weblinks #
					<div id="article-web-{weblinks.ID}" class="media# IF weblinks.C_IS_PARTNER # content-friends# ENDIF ## IF weblinks.C_IS_PRIVILEGED_PARTNER # content-privileged-friends# ENDIF ## IF weblinks.C_NEW_CONTENT # new-content# ENDIF#" itemscope="itemscope" itemtype="http://schema.org/CreativeWork">
						<div class="media-left">
							<a href="{weblinks.U_LINK}" itemprop="name">
							# IF weblinks.C_PICTURE #
								<img class="media-object" src="{weblinks.U_PICTURE}" alt="{weblinks.NAME}" itemprop="image" />
							# ELSE #
								<img class="media-object" src="{PATH_TO_ROOT}/templates/{THEME}/theme/images/theme.jpg" alt="{weblinks.NAME}" itemprop="image" />
							# ENDIF #
							</a>
						</div>

						<meta itemprop="url" content="{weblinks.U_LINK}">
						<meta itemprop="description" content="${escape(weblinks.DESCRIPTION)}"/>
						# IF C_COMMENTS_ENABLED #
						<meta itemprop="discussionUrl" content="{weblinks.U_COMMENTS}">
						<meta itemprop="interactionCount" content="{weblinks.NUMBER_COMMENTS} UserComments">
						# ENDIF #

						<div class="media-body">
							<div class="pull-right text-right">
								<div class="btn-group btn-group-xs">
									# IF weblinks.C_EDIT #<a class="btn btn-info" href="{weblinks.U_EDIT}" title="${LangLoader::get_message('edit', 'common')}"><i class="fa fa-edit"></i></a># ENDIF #
									# IF weblinks.C_DELETE #<a class="btn btn-danger" href="{weblinks.U_DELETE}" title="${LangLoader::get_message('delete', 'common')}" data-confirmation="delete-element"><i class="fa fa-delete"></i></a># ENDIF #
								</div>
							</div>
							<h2>
								<a href="{weblinks.U_LINK}" itemprop="name">{weblinks.NAME}</a>
							</h2>
							<div class="well well-sm">
								<i class="fa fa-eye" title="{weblinks.L_VISITED_TIMES}"></i>
								<span title="{weblinks.L_VISITED_TIMES}">{weblinks.NUMBER_VIEWS}</span>
								# IF C_COMMENTS_ENABLED #
									| <i class="fa fa-comment" title="${LangLoader::get_message('comments', 'comments-common')}"></i>
									# IF weblinks.C_COMMENTS # {weblinks.NUMBER_COMMENTS} # ENDIF # {weblinks.L_COMMENTS}
								# ENDIF #
								# IF weblinks.C_KEYWORDS #
									| <i class="fa fa-tags" title="${LangLoader::get_message('form.keywords', 'common')}"></i>
									# START weblinks.keywords #
										<a itemprop="keywords" href="{weblinks.keywords.URL}">{weblinks.keywords.NAME}</a>
										# IF weblinks.keywords.C_SEPARATOR #, # ENDIF #
									# END weblinks.keywords #
								# ENDIF #
								# IF C_NOTATION_ENABLED #
									<span class="pull-right">{weblinks.STATIC_NOTATION}</span>
								# ENDIF #
							</div>
							<p>
								{weblinks.DESCRIPTION}# IF weblinks.C_READ_MORE #... <a href="{weblinks.U_LINK}" class="read-more">[${LangLoader::get_message('read-more', 'common')}]</a># ENDIF #
							</p>
						</div>
					</div>
				# END weblinks #
			# ELSE #
			<div class="row">
				# START weblinks #
					<div class="col-sm-12 mb15# IF weblinks.C_IS_PARTNER # content-friends# ENDIF ## IF weblinks.C_IS_PRIVILEGED_PARTNER # content-privileged-friends# ENDIF ## IF weblinks.C_NEW_CONTENT # new-content# ENDIF#">
						<header>
							<div class="pull-right text-right">
								<div class="btn-group btn-group-xs">
									# IF weblinks.C_EDIT #<a class="btn btn-info" href="{weblinks.U_EDIT}" title="${LangLoader::get_message('edit', 'common')}"><i class="fa fa-edit"></i></a># ENDIF #
									# IF weblinks.C_DELETE #<a class="btn btn-danger" href="{weblinks.U_DELETE}" title="${LangLoader::get_message('delete', 'common')}" data-confirmation="delete-element"><i class="fa fa-delete"></i></a># ENDIF #
								</div>
							</div>
							<h2>
								<a href="{weblinks.U_LINK}" itemprop="name">{weblinks.NAME}</a>
							</h2>
							<div class="well well-sm">
								<i class="fa fa-eye" title="{weblinks.L_VISITED_TIMES}"></i>
								<span title="{weblinks.L_VISITED_TIMES}">{weblinks.NUMBER_VIEWS}</span>
								# IF C_COMMENTS_ENABLED #
									| <i class="fa fa-comment" title="${LangLoader::get_message('comments', 'comments-common')}"></i>
									# IF weblinks.C_COMMENTS # {weblinks.NUMBER_COMMENTS} # ENDIF # {weblinks.L_COMMENTS}
								# ENDIF #
								# IF weblinks.C_KEYWORDS #
									| <i class="fa fa-tags" title="${LangLoader::get_message('form.keywords', 'common')}"></i>
									# START weblinks.keywords #
										<a itemprop="keywords" href="{weblinks.keywords.URL}">{weblinks.keywords.NAME}</a>
										# IF weblinks.keywords.C_SEPARATOR #, # ENDIF #
									# END weblinks.keywords #
								# ENDIF #
								# IF C_NOTATION_ENABLED #
									<span class="pull-right">{weblinks.STATIC_NOTATION}</span>
								# ENDIF #
							</div>
						</header>
						<div class="row">
							<div class="col-sm-8">
								<a href="{weblinks.U_LINK}" itemprop="name">
								# IF weblinks.C_PICTURE #
									<img class="media-object" src="{weblinks.U_PICTURE}" alt="{weblinks.NAME}" itemprop="image" />
								# ELSE #
									<img class="media-object" src="{PATH_TO_ROOT}/templates/{THEME}/theme/images/theme.jpg" alt="{weblinks.NAME}" itemprop="image" />
								# ENDIF #
								</a>
								<p>
									{weblinks.CONTENTS}
								</p>
							</div>
							<div class="col-sm-4">
								<div class="panel panel-default">
									<div class="panel-heading">
										{@link_infos}
									</div>
									# IF weblinks.C_IS_PARTNER #
										# IF weblinks.C_HAS_PARTNER_PICTURE #
											<div class="panel-body">
												<img src="{weblinks.U_PARTNER_PICTURE}" alt="{weblinks.NAME}" itemprop="image" />
											</div>
										# ENDIF #
									# ENDIF #
									<ul class="list-group">
										# IF weblinks.C_VISIBLE #
											<li class="list-group-item">
												<div class="btn-group">
													<a href="{weblinks.U_VISIT}" class="btn btn-primary">
														<i class="fa fa-globe"></i> {@visit}
													</a>
													# IF IS_USER_CONNECTED #
													<a href="{weblinks.U_DEADLINK}" class="btn btn-warning" title="${LangLoader::get_message('deadlink', 'common')}">
														<i class="fa fa-unlink"></i>
													</a>
													# ENDIF #
												</div>
											</li>
										# ENDIF #
										<li class="list-group-item">
											{@visits_number} : <strong>{weblinks.NUMBER_VIEWS}</strong>
										</li>
										# IF NOT C_CATEGORY #
										<li class="list-group-item">
											${LangLoader::get_message('category', 'categories-common')} : <strong><a itemprop="about" href="{weblinks.U_CATEGORY}">{weblinks.CATEGORY_NAME}</a></strong>
										</li>
										# ENDIF #
										# IF weblinks.C_KEYWORDS #
										<li class="list-group-item">
											${LangLoader::get_message('form.keywords', 'common')} :
											# START weblinks.keywords #
											<a itemprop="keywords" class="label label-default" href="{weblinks.keywords.URL}">{weblinks.keywords.NAME}</a># IF weblinks.keywords.C_SEPARATOR # # ENDIF #
											# END weblinks.keywords #
										</li>
										# ENDIF #
										# IF C_COMMENTS_ENABLED #
										<li class="list-group-item text-center">
											# IF weblinks.C_COMMENTS # {weblinks.NUMBER_COMMENTS} # ENDIF # {weblinks.L_COMMENTS}
										</li>
										# ENDIF #
										# IF C_NOTATION_ENABLED #
										<li class="list-group-item text-center">
											{weblinks.NOTATION}
										</li>
										# ENDIF #
									</ul>
								</div>
							</div>
						</div>
					</div>
				# END weblinks #
			</div>

		# ENDIF #

	# ENDIF #

	# ELSE #
	<div class="content">
		# IF NOT C_HIDE_NO_ITEM_MESSAGE #
		<div class="center">
			${LangLoader::get_message('no_item_now', 'common')}
		</div>
		# ENDIF #
	</div>
	# ENDIF #

	<footer># IF C_PAGINATION # # INCLUDE PAGINATION # # ENDIF #</footer>
</section>
