		# IF C_CATEGORIES #
			<section id="module-media">
				<header>
					<div class="pull-right text-right">
						<div class="btn-group btn-group-xs">
							# IF IS_ADMIN #<a class="btn btn-info" href="{U_EDIT_CATEGORY}" title="${LangLoader::get_message('edit', 'common')}"><i class="fa fa-edit"></i></a># ENDIF #
							<a class="btn btn-warning" href="${relative_url(SyndicationUrlBuilder::rss('media', ID_CAT))}" title="${LangLoader::get_message('syndication', 'common')}"><i class="fa fa-syndication"></i></a>
						</div>

					</div>
					<h1>
						${LangLoader::get_message('module_title', 'common', 'media')}# IF NOT C_ROOT_CATEGORY # - {CATEGORY_NAME}# ENDIF #
					</h1>
					# IF C_CATEGORY_DESCRIPTION #
						<div class="mb15">
							{CATEGORY_DESCRIPTION}
						</div>
					# ENDIF #
				</header>

				# IF C_SUB_CATEGORIES #
				<div class="row text-center grid-columns">
					# START sub_categories_list #
					<div class="col-md-4">
						<div class="subcat-content">
							# IF sub_categories_list.C_CATEGORY_IMAGE #
							<a itemprop="about" href="{sub_categories_list.U_CATEGORY}">
								<img itemprop="thumbnailUrl" src="{sub_categories_list.CATEGORY_IMAGE}" alt="{sub_categories_list.CATEGORY_NAME}" />
							</a>
							# ENDIF #
							<div class="caption">
								<a itemprop="about" href="{sub_categories_list.U_CATEGORY}">{sub_categories_list.CATEGORY_NAME}</a>
								<p>
									<small>{sub_categories_list.MEDIAFILES_NUMBER}</small>
								</p>

							</div>

						</div>
					</div>
					# END sub_categories_list #
					<div class="clearfix"></div>
				</div>
				# IF C_SUBCATEGORIES_PAGINATION #<span class="text-center"># INCLUDE SUBCATEGORIES_PAGINATION #</span># ENDIF #
				# ELSE #
					<div class="clearfix"></div>
				# ENDIF #

				<div class="row">
					# IF C_FILES #
						<div class="items-filters" id="form">
							<script>
							<!--
							function change_order()
							{
								window.location = "{TARGET_ON_CHANGE_ORDER}sort=" + document.getElementById("sort").value + "&mode=" + document.getElementById("mode").value;
							}
							-->
							</script>
							<div class="form-inline">
								{L_ORDER_BY}
								<select name="sort" id="sort" class="form-control" onchange="change_order()">
									<option value="alpha"{SELECTED_ALPHA}>{L_ALPHA}</option>
									<option value="date"{SELECTED_DATE}>{L_DATE}</option>
									<option value="nbr"{SELECTED_NBR}>{L_NBR}</option>
									# IF C_DISPLAY_NOTATION #<option value="note"{SELECTED_NOTE}>{L_NOTE}</option># ENDIF #
									# IF C_DISPLAY_COMMENTS #<option value="com"{SELECTED_COM}>{L_COM}</option># ENDIF #
								</select>
								<select name="mode" id="mode" class="form-control" onchange="change_order()">
									<option value="asc"{SELECTED_ASC}>{L_ASC}</option>
									<option value="desc"{SELECTED_DESC}>{L_DESC}</option>
								</select>
							</div>

						</div>
						<div class="clearfix"></div>

						# START file #
							<article id="article-media-{file.ID}" class="col-sm-12# IF file.C_NEW_CONTENT # new-content# ENDIF #">
								<header>
									<div class="pull-right text-right">
										# IF C_MODO #
										<div class="btn-group btn-group-xs">
											<a href="{file.U_ADMIN_UNVISIBLE_MEDIA}" class="btn btn-info" title="{L_UNAPROBED}">
												<i class="fa fa-eye-slash"></i>
											</a>
											<a href="{file.U_ADMIN_EDIT_MEDIA}" title="${LangLoader::get_message('edit', 'common')}" class="btn btn-info">
												<i class="fa fa-edit"></i>
											</a>
											<a href="{file.U_ADMIN_DELETE_MEDIA}" title="${LangLoader::get_message('delete', 'common')}" class="btn btn-danger" data-confirmation="delete-element">
												<i class="fa fa-delete"></i>
											</a>
										</div>
										# ENDIF #
									</div>
									<h2>
										<a href="{file.U_MEDIA_LINK}">{file.NAME}</a>

									</h2>
								</header>
								<div class="row mb15">
									# IF file.C_DESCRIPTION #
										<div class="col-sm-7">
											# IF file.C_HAS_PICTURE #
											<a href="{file.U_MEDIA_LINK}">
												<img itemprop="thumbnailUrl" class="media-picture" src="{file.PICTURE}" alt="{file.NAME}" />
											</a>
											# ENDIF #
											{file.DESCRIPTION}
										</div>
									# ENDIF #
									<div class="col-sm-5">
										<div class="panel panel-info">
											<div class="panel-heading">
												${LangLoader::get_message('info', 'main')}
											</div>

											<ul class="list-group">
												<li class="list-group-item">{L_BY} {file.AUTHOR}</li>
												<li class="list-group-item">{file.COUNT}</li>
												# IF C_DISPLAY_COMMENTS #
												<li class="list-group-item">
													{file.U_COM_LINK}
												</li>
												# ENDIF #
												# IF C_DISPLAY_NOTATION #
												<li class="list-group-item">
													{L_NOTE} {file.NOTE}
												</li
												># ENDIF #
											</ul>
										</div>
									</div>
									<div class="clearfix"></div>
								</div>
								<footer></footer>
							</article>
						# END file #
					# ENDIF #

					# IF C_DISPLAY_NO_FILE_MSG #
						<div class="well well-lg">${LangLoader::get_message('no_item_now', 'common')}</div>
					# ENDIF #
				</div>
				<footer># IF C_PAGINATION #<div class="text-center"># INCLUDE PAGINATION #</div># ENDIF #</footer>
			</section>
		# ENDIF #

		# IF C_DISPLAY_MEDIA #
		<section id="module-media">
			<header>
				<div class="pull-right text-right">
					# IF IS_ADMIN #<a class="btn btn-info btn-xs" href="{U_EDIT_CATEGORY}" title="${LangLoader::get_message('edit', 'common')}"><i class="fa fa-edit"></i></a># ENDIF #
				</div>
				<h1>
					${LangLoader::get_message('module_title', 'common', 'media')}# IF NOT C_ROOT_CATEGORY # - {CATEGORY_NAME}# ENDIF #
				</h1>
			</header>
			<div class="content">
				<article id="article-media-{ID}" class="article-media# IF C_NEW_CONTENT # new-content# ENDIF #">
					<header>
						<div class="pull-right text-right">
							<div class="btn-group btn-group-xs">
								# IF C_DISPLAY_COMMENTS #
									<a class="btn btn-info" href="{U_COM}">
										<i class="fa fa-comments-o"></i> {L_COM}
									</a>
								# ENDIF #
								# IF C_MODO #
									<a href="{U_UNVISIBLE_MEDIA}" class="btn btn-info" title="{L_UNAPROBED}">
										<i class="fa fa-eye-slash"></i>
									</a>
									<a href="{U_EDIT_MEDIA}" title="${LangLoader::get_message('edit', 'common')}" class="btn btn-info">
										<i class="fa fa-edit"></i>
									</a>
									<a href="{U_DELETE_MEDIA}" title="${LangLoader::get_message('delete', 'common')}" class="btn btn-danger" data-confirmation="delete-element">
										<i class="fa fa-delete"></i>
									</a>
								# ENDIF #
							</div>
						</div>
						<h2>
							{NAME}
						</h2>
					</header>
					<div class="row">
						<div class="col-sm-7">
							{CONTENTS}
						</div>
						<div class="col-sm-5">
							<div class="panel panel-info">
								<div class="panel-heading">{L_MEDIA_INFOS}</div>
								<ul class="list-group">
									<li class="list-group-item">{L_DATE} : <strong>{DATE}</strong></li>
									<li class="list-group-item">{L_BY} : <strong>{BY}</strong></li>
									<li class="list-group-item">{L_VIEWED} : <strong>{HITS}</strong></li>
									# IF C_DISPLAY_NOTATION #
									<li class="list-group-item text-center">{KERNEL_NOTATION}</li>
									# ENDIF #
								</ul>
							</div>
						</div>
						<div class="clearfix"></div>

						<div class="media-content">
							# INCLUDE media_format #
						</div>

						# IF C_DISPLAY_COMMENTS #
						{COMMENTS}
						# ENDIF #
					</div>
					<footer></footer>
				</article>
			</div>
			<footer></footer>
		</section>
		# ENDIF #
