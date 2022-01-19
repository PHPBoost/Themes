<section id="module-web">
	<header class="section-header">
		<div class="controls align-right">
			<a class="offload" href="${relative_url(SyndicationUrlBuilder::rss('web', ID_CAT))}" aria-label="{@common.syndication}"><i class="fa fa-rss warning" aria-hidden="true"></i></a>
			# IF NOT C_ROOT_CATEGORY #{@web.module.title}# ENDIF #
			# IF C_CATEGORY ## IF IS_ADMIN #<a class="offload" href="{U_EDIT_CATEGORY}" aria-label="{@common.edit}"><i class="far fa-edit" aria-hidden="true"></i></a># ENDIF ## ENDIF #
		</div>
		<h1>
			# IF C_PENDING_ITEMS #
				{@web.pending.items}
			# ELSE #
				# IF C_MEMBER_ITEMS #
					# IF C_MY_ITEMS #{@web.my.items}# ELSE #{@web.member.items} {MEMBER_NAME}# ENDIF #
				# ELSE #
					# IF C_ROOT_CATEGORY #{@web.module.title}# ELSE #{CATEGORY_NAME}# ENDIF #
				# ENDIF #
			# ENDIF #
		</h1>
	</header>
	# IF C_CATEGORY_DESCRIPTION #
		<div class="sub-section">
			<div class="content-container">
				<div class="cat-description">
					{CATEGORY_DESCRIPTION}
				</div>
			</div>
		</div>
	# ENDIF #

	# IF C_SUB_CATEGORIES #
		<div class="sub-section">
			<div class="content-container">
				<div class="cell-flex cell-tile cell-columns-{CATEGORIES_PER_ROW}">
					# START sub_categories_list #
						<div class="cell category-{sub_categories_list.CATEGORY_ID}" itemscope>
							<div class="cell-header">
								<h5 class="cell-name" itemprop="about"><a class="offload" href="{sub_categories_list.U_CATEGORY}">{sub_categories_list.CATEGORY_NAME}</a></h5>
								<span class="small pinned notice" role="contentinfo" aria-label="{sub_categories_list.ITEMS_NUMBER} # IF sub_categories_list.C_SEVERAL_ITEMS #${TextHelper::lcfirst(@items)}# ELSE #${TextHelper::lcfirst(@item)}# ENDIF #">
									{sub_categories_list.ITEMS_NUMBER}
								</span>
							</div>
							# IF sub_categories_list.C_CATEGORY_THUMBNAIL #
								<div class="cell-body">
									<div class="cell-thumbnail cell-landscape cell-center">
										<img itemprop="thumbnailUrl" src="{sub_categories_list.U_CATEGORY_THUMBNAIL}" alt="{sub_categories_list.CATEGORY_NAME}" />
										<a class="offload" class="cell-thumbnail-caption" itemprop="about" href="{sub_categories_list.U_CATEGORY}">
											{@common.see.category}
										</a>
									</div>
								</div>
							# ENDIF #
						</div>
					# END sub_categories_list #
				</div>
				# IF C_SUBCATEGORIES_PAGINATION #<div class="align-center"># INCLUDE SUBCATEGORIES_PAGINATION #</div># ENDIF #
			</div>
		</div>
	# ENDIF #

	<div class="sub-section">
		<div class="content-container">
			# IF C_ITEMS #
				# IF C_SEVERAL_ITEMS #
					<div class="content">
						# INCLUDE SORT_FORM #
						<div class="spacer"></div>
					</div>
				# ENDIF #
				# IF C_TABLE_VIEW #
					<div class="responsive-table">
						<table class="table">
							<thead>
								<tr>
									<th>{@common.title}</th>
									<th class="col-small" aria-label="{@common.visits.number}">
										<i class="fa fa-fw fa-share-square hidden-small-screens" aria-hidden="true"></i>
										<span class="hidden-large-screens">{@common.visits.number}</span>
									</th>
									# IF C_ENABLED_NOTATION #
										<th aria-label="{@common.note}">
											<i class="far fa-fw fa-star hidden-small-screens" aria-hidden="true"></i>
											<span class="hidden-large-screens">{@common.note}</span>
										</th>
									# ENDIF #
									# IF C_ENABLED_COMMENTS #
										<th class="col-small" aria-label="{@common.comments}">
											<i class="far fa-fw fa-comments hidden-small-screens" aria-hidden="true"></i>
											<span class="hidden-large-screens">{@common.comments}</span>
										</th>
									# ENDIF #
									# IF C_CONTROLS #
										<th class="col-small" aria-label="{@common.moderation}">
											<i class="fa fa-fw fa-gavel hidden-small-screens" aria-hidden="true"></i>
											<span class="hidden-large-screens">{@common.moderation}</span>
										</th>
									# ENDIF #
								</tr>
							</thead>
							<tbody>
								# START items #
									<tr class="category-{items.CATEGORY_ID}">
										<td>
											<a class="offload" href="{items.U_ITEM}" itemprop="name"# IF items.C_NEW_CONTENT # class="new-content"# ENDIF#>{items.TITLE}</a>
										</td>
										<td>
											{items.VIEWS_NUMBER}
										</td>
										# IF C_ENABLED_NOTATION #
											<td>
												{items.STATIC_NOTATION}
											</td>
										# ENDIF #
										# IF C_ENABLED_COMMENTS #
											<td>
												{items.COMMENTS_NUMBER}
											</td>
										# ENDIF #
										# IF items.C_CONTROLS #
											<td class="controls">
												# IF items.C_EDIT #
													<a class="offload" href="{items.U_EDIT}" aria-label="{@common.edit}"><i class="far fa-fw fa-edit" aria-hidden="true"></i></a>
												# ENDIF #
												# IF items.C_DELETE #
													<a href="{items.U_DELETE}" data-confirmation="delete-element" aria-label="{@common.delete}"><i class="far fa-fw fa-trash-alt" aria-hidden="true"></i></a>
												# ENDIF #
											</td>
										# ENDIF #
									</tr>
								# END items #
							</tbody>
						</table>
					</div>
				# ELSE #
					<div class="cell-layout # IF C_GRID_VIEW #cell-flex cell-columns-{ITEMS_PER_ROW}# ELSE #cell-row# ENDIF #">
						# START items #
							<article id="web-item-{items.ID}" class="web-item several-items category-{items.CATEGORY_ID} cell# IF items.C_IS_PARTNER # content-friends# ENDIF ## IF items.C_IS_PRIVILEGED_PARTNER # content-privileged-friends# ENDIF ## IF items.C_NEW_CONTENT # new-content# ENDIF#" itemscope="itemscope" itemtype="https://schema.org/CreativeWork">
								<div class="cell-primary">
									<div class="cell-body">
										<div class="cell-thumbnail cell-landscape cell-center">
											# IF items.C_IS_ADORNED #
												# IF items.C_IS_PARTNER #
													# IF items.C_HAS_PARTNER_THUMBNAIL #
														<img src="{items.U_PARTNER_THUMBNAIL}" alt="{items.TITLE}" itemprop="image" />
													# ELSE #
														<img src="{items.U_THUMBNAIL}" alt="{items.TITLE}" itemprop="image" />
													# ENDIF #
												# ELSE #
													# IF items.C_HAS_THUMBNAIL #
														<img src="{items.U_THUMBNAIL}" alt="{items.TITLE}" itemprop="image" />
													# ENDIF #
												# ENDIF #
											# ELSE #
												<img src="{PATH_TO_ROOT}/templates/{THEME}/images/no-thumbnail.png" alt="{items.TITLE}" itemprop="image" />
											# ENDIF #
											<div class="cell-thumbnail-caption">
												<div class="cell-list">
													<ul>
														<li><a class="offload" href="{items.U_ITEM}"><i class="fa fa-share"></i> {@common.see.details}</a></li>
														# IF items.C_CONTROLS #
															<li class="li-stretch">
																# IF items.C_EDIT #<a class="offload" href="{items.U_EDIT}" aria-label="{@common.edit}"><i class="far fa-fw fa-edit" aria-hidden="true"></i></a># ENDIF #
																# IF items.C_DELETE #<a href="{items.U_DELETE}" data-confirmation="delete-element" aria-label="{@common.delete}"><i class="far fa-fw fa-trash-alt" aria-hidden="true"></i></a># ENDIF #
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
												<span class="pinned item-views-number"><i class="fa fa-eye" aria-hidden="true"></i> {items.VIEWS_NUMBER}</span>
												# IF C_ENABLED_COMMENTS #
													<span class="pinned item-comments">
														<i class="fa fa-comments" aria-hidden="true"></i>
														# IF items.C_COMMENTS # {items.COMMENTS_NUMBER} # ENDIF # {items.L_COMMENTS}
													</span>
												# ENDIF #
											</div>
											<div class="more">
												# IF C_ENABLED_NOTATION #
													<div class="pinned item-notation">{items.STATIC_NOTATION}</div>
												# ENDIF #
											</div>
										</div>
										<header class="cell-header">
											<h2 class="cell-name"><a class="offload" href="{items.U_ITEM}" itemprop="name">{items.TITLE}</a></h2>
										</header>
										<div class="cell-body">
											<div class="cell-content">
												<div class="cell-infos">
													<span></span>
													# IF items.C_VISIBLE #
														<span>
															<a class="offload" href="{items.U_VISIT}" class="button submit small">
																<i class="fa fa-globe" aria-hidden="true"></i> {@common.visit}
															</a>
															# IF IS_USER_CONNECTED #
																<a href="{items.U_DEADLINK}" data-confirmation="{@contribution.dead.link.confirmation}" class="button bgc-full warning small" aria-label="{@contribution.report.dead.link}">
																	<i class="fa fa-unlink" aria-hidden="true"></i>
																</a>
															# ENDIF #
														</span>
													# ELSE #
														# IF C_PENDING_ITEMS #
															<a class="offload" href="{items.U_VISIT}" class="button submit small">
																<i class="fa fa-globe" aria-hidden="true"></i> {@common.visit}
															</a>
														# ENDIF #
													# ENDIF #
												</div>
												# IF C_FULL_ITEM_DISPLAY #
													<div itemprop="text">{items.CONTENT}</div>
												# ELSE #
													{items.SUMMARY}# IF items.C_READ_MORE # <a class="offload" href="{items.U_ITEM}" class="read-more">[{@common.read.more}]</a># ENDIF #
												# ENDIF #
											</div>

										</div>
									</div>
								</div>

								<footer>
									<meta itemprop="url" content="{items.U_ITEM}">
									<meta itemprop="description" content="${escape(items.SHORT_CONTENT)}"/>
									# IF C_ENABLED_COMMENTS #
										<meta itemprop="discussionUrl" content="{items.U_COMMENTS}">
										<meta itemprop="interactionCount" content="{items.COMMENTS_NUMBER} UserComments">
									# ENDIF #
								</footer>
							</article>
						# END items #
					</div>
				# ENDIF #
			# ELSE #
				# IF NOT C_HIDE_NO_ITEM_MESSAGE #
					<div class="content">
						<div class="message-helper bgc notice align-center">
							{@common.no.item.now}
						</div>
					</div>
				# ENDIF #
			# ENDIF #
		</div>
	</div>

	<footer># IF C_PAGINATION #<div class="sub-section"><div class="content-container"># INCLUDE PAGINATION #</div></div># ENDIF #</footer>
</section>
