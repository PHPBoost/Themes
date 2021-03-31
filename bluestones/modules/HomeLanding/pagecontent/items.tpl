<div class="sub-section" style="order: {MODULE_POSITION};">
	<div class="content-container">
		<article id="{MODULE_NAME}# IF C_CATEGORY #_category# ENDIF #-panel">
			<header class="module-header">
				<h2>{L_MODULE_TITLE}</h2>
				<div class="controls align-right">
					<a href="{PATH_TO_ROOT}/{MODULE_NAME}">{L_SEE_ALL_ITEMS}</a>
				</div>
			</header>
			# IF C_NO_ITEM #
				<div class="content">
					<div class="message-helper bgc notice">
						${LangLoader::get_message('no_item_now', 'common')}
					</div>
				</div>
			# ELSE #
				# IF C_TABLE_VIEW #
					<div class="responsive-table">
						<table class="table">
							<thead>
								<tr>
									<th>${LangLoader::get_message('form.name', 'common')}</th>
									<th class="col-small" aria-label="{@creation.date}">
										<i class="fa fa-fw fa-clock" aria-hidden="true"></i>
										<span class="hidden-large-screens">{@creation.date}</span>
									</th>
									# IF C_VIEWS_NUMBER #
										<th class="col-small" aria-label="# IF C_VISIT #{@visits.number}# ELSE #{@module.views.number}# ENDIF #">
											<i class="fa fa-fw fa-# IF C_VISIT #share-square# ELSE #eye# ENDIF #" aria-hidden="true"></i>
											<span class="hidden-large-screens"># IF C_VISIT #{@visits.number}# ELSE #{@module.views.number}# ENDIF #</span>
										</th>
									# ENDIF #
									# IF C_DL_NUMBER #
										<th class="col-small" aria-label="{@downloads.number}">
											<i class="fa fa-fw fa-download" aria-hidden="true"></i>
											<span class="hidden-large-screens">{@downloads.number}</span>
										</th>
									# ENDIF #
									# IF C_VISIT #
										<th class="col-small" aria-label="{@website.link}">
											<i class="fa fa-fw fa-sign-in-alt" aria-hidden="true"></i>
											<span class="hidden-large-screens">{@website.link}</span>
										</th>
									# ENDIF #
								</tr>
							</thead>
							<tbody>
								# START items #
									<tr>
										<td# IF C_VISIT # aria-label="{@website.details}"# ENDIF #><a href="{items.U_ITEM}">{items.TITLE}</a></td>
										<td>
											# IF items.HAS_UPDATE_DATE #
												<time datetime="{items.UPDATE_DATE_ISO8601}" itemprop="dateModified">{items.UPDATE_DATE}</time>
											# ELSE #
												<time datetime="{items.DATE_ISO8601}" itemprop="datePublished">{items.DATE}</time>
											# ENDIF #
										</td>
										# IF C_VIEWS_NUMBER #<td>{items.VIEWS_NUMBER}</td># ENDIF #
										# IF C_DL_NUMBER #<td>{items.DOWNLOADS_NUMBER}</td># ENDIF #
										# IF C_VISIT #<td aria-label="{@website.link}"><a href="{items.U_VISIT}"><i class="fa fa-fw fa-sign-in-alt" aria-hidden="true"></i></a></td># ENDIF #
									</tr>
								# END items #
							</tbody>
						</table>
					</div>
				# ELSE #
					<div class="cell-layout # IF C_GRID_VIEW #cell-flex cell-columns-{ITEMS_PER_ROW}# ELSE #cell-row# ENDIF #">

						# START items #
							<div class="{MODULE_NAME}-item several-items category-{items.CATEGORY_ID} cell" itemscope="itemscope" itemtype="https://schema.org/CreativeWork">
								<div class="cell-primary">
									<div class="cell-body">
										<a class="cell-category" itemprop="about" href="{items.U_CATEGORY}">{items.CATEGORY_NAME}</a>
										<div class="cell-thumbnail cell-landscape cell-center">
											# IF items.C_HAS_PARTNER_THUMBNAIL #
												<img src="{items.U_PARTNER_THUMBNAIL}" alt="{items.TITLE}" />
											# ELSE #
												# IF items.C_HAS_THUMBNAIL #
													<img src="{items.U_THUMBNAIL}" alt="{items.TITLE}" />
												# ELSE #
													<img src="{PATH_TO_ROOT}/templates/{THEME}/images/no-thumbnail.png" alt="{items.TITLE}" />
												# ENDIF #
											# ENDIF #
											<div class="cell-thumbnail-caption">
												<div class="cell-list">
													<ul>
														<li><a href="{items.U_ITEM}"># IF items.C_READ_MORE #[${LangLoader::get_message('read.more', 'common')}]# ELSE #<i class="fa fa-eye"></i># ENDIF #</a></li>
														# IF C_VIEWS_NUMBER #<li aria-label="{items.VIEWS_NUMBER} # IF items.C_SEVERAL_VIEWS #${LangLoader::get_message('module.views', 'common', 'HomeLanding')}# ELSE #${LangLoader::get_message('module.view', 'common', 'HomeLanding')}# ENDIF #"><i class="fa fa-fw fa-eye" aria-hidden="true"></i> {items.VIEWS_NUMBER}# ENDIF #</li>
														<li></li>
														# IF items.C_CONTROLS #
															<li class="li-stretch">
																# IF items.C_EDIT #<a href="{items.U_EDIT}" aria-label="${LangLoader::get_message('edit', 'common')}"><i class="fa fa-edit" aria-hidden="true"></i></a># ENDIF #
																# IF items.C_DELETE #<a href="{items.U_DELETE}" aria-label="${LangLoader::get_message('delete', 'common')}" data-confirmation="delete-element"><i class="fa fa-trash-alt" aria-hidden="true"></i></a># ENDIF #
															</li>
														# ENDIF #
													</ul>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="cell-secondary">
									<div class="cell-body">
										<div class="cell-infos">
											<div class="more">
												# IF C_AUTHOR_DISPLAYED #
													<span class="pinned">
														<i class="fa fa-fw fa-user" aria-hidden="true"></i>
														# IF items.C_AUTHOR_EXIST #<a itemprop="author" class="{items.AUTHOR_LEVEL_CLASS}" href="{items.U_AUTHOR}"# IF items.C_AUTHOR_GROUP_COLOR # style="{items.AUTHOR_GROUP_COLOR}"# ENDIF #>{items.AUTHOR_DISPLAY_NAME}</a># ELSE #{items.AUTHOR_DISPLAY_NAME}# ENDIF #
													</span>
												# ENDIF #
											</div>
											<div class="more">
												# IF NOT C_DATE #
													# IF items.C_HAS_UPDATE #
														<span class="pinned notice text-italic modified-date"><i class="far fa-fw fa-calendar-plus" aria-hidden="true"></i> <time datetime="{items.UPDATE_DATE_ISO8601}" itemprop="dateModified">{items.UPDATE_DATE}</time></span>
													# ELSE #
														<span class="pinned"><i class="far fa-fw fa-calendar-alt" aria-hidden="true"></i> <time datetime="{items.DATE_ISO8601}" itemprop="datePublished">{items.DATE}</time></span>
													# ENDIF #
												# ENDIF #
											</div>
										</div>
										<div class="cell-header">
											<h3 class="cell-name">
												<a href="{items.U_ITEM}">{items.TITLE}</a>
											</h3>
										</div>

										<div class="cell-body">
											<div class="cell-content">
												# IF C_DATE #
													<div class="controls align-right"><i class="far fa-fw fa-calendar-alt"></i><span>{items.START_DATE}</span> - <span>{items.END_DATE}</span></div>
												# ENDIF #
												# IF items.C_FULL_ITEM_DISPLAY #
													{items.CONTENTS}
												# ELSE #
													{items.SUMMARY}# IF items.C_READ_MORE #... <a href="{items.U_ITEM}">[${LangLoader::get_message('read.more', 'common')}]</a># ENDIF #
												# ENDIF #
											</div>
										</div>
									</div>
								</div>
							</div>
						# END items #
					</div>
				# ENDIF #
			# ENDIF #
		</article>
	</div>
</div>
