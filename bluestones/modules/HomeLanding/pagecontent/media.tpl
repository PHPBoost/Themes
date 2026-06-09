<div class="sub-section" style="order: {MODULE_POSITION};">
	<div class="content-container">
		<article id="{MODULE_NAME}-panel">
			<header class="module-header flex-between">
				<h2>
					{L_MODULE_TITLE}
				</h2>
				<div class="controls align-right">
					<a class="offload" href="{PATH_TO_ROOT}/{MODULE_NAME}" aria-label="{@homelanding.see.module}"><i class="fa fa-share-square" aria-hidden="true"></i></a>
				</div>
			</header>

			# IF C_ITEMS #
				<div class="cell-layout cell-flex # IF C_GRID_VIEW #cell-columns-{ITEMS_PER_ROW}# ELSE #cell-row# ENDIF #" data-type="content" data-listorder-group="media-items">
					# START items #
						<div class="media-items several-items cell" itemscope="itemscope" itemtype="https://schema.org/CreativeWork">
							<div class="cell-primary">
								<a class="item-category offload" itemprop="about" href="{items.U_CATEGORY}">{items.CATEGORY_NAME}</a>
								<div class="cell-thumbnail cell-landscape cell-center">
									# IF items.C_THUMBNAIL #
										<img src="{items.U_THUMBNAIL}" alt="{items.TITLE}">
									# ELSE #
										<img src="{PATH_TO_ROOT}/templates/{THEME}/images/no-thumbnail.png" alt="{items.TITLE}" />
									# ENDIF #
									<div class="cell-thumbnail-caption">
										<div class="cell-list">
											<ul>
												<li>
													<a class="cell-thumbnail-caption offload" href="{items.U_ITEM}"><i class="fa fa-share" aria-hidden="true"></i> {@common.see.details}</a>
												</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
							<div class="cell-secondary">
								<div class="cell-infos">
									<div class="more">
										<span class="pinned item-author"><i class="fa fa-fw fa-user"></i> {items.PSEUDO}</span>
										<span class="pinned item-creation-date"><i class="far fa-fw fa-calendar-alt"></i> {items.DATE}</span>
									</div>
								</div>
								<header class="cell-header">
									<h3 class="cell-name"><a class="offload" href="{items.U_ITEM}">{items.TITLE}</a></h3>
									<i class="fa fa-# IF items.C_AUDIO #music# ELSE #film# ENDIF #" aria-hidden="true"></i>
								</header>
								<div class="cell-body">
									# IF items.C_SUMMARY #
										<div class="cell-content">
											{items.SUMMARY}
										</div>
									# ENDIF #
								</div>
							</div>
						</div>
					# END items #
				</div>
			# ELSE #
				<div class="content">
					<div class="message-helper bgc notice">
						{@common.no.item.now}
					</div>
				</div>
			# ENDIF #
		</article>

	</div>
</div>
