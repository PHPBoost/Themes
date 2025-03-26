# IF C_LAST_FEEDS #
	# START feed_items #
		<div
				data-listorder-item
				class="cell animate fadeInToTop has-thumbnail"
				style="background-image: linear-gradient(to bottom, rgba(var(--bgc-rgb-m), 0.8), rgba(var(--bgc-rgb-m), 0.8)), url('# IF feed_items.C_HAS_THUMBNAIL #{feed_items.U_THUMBNAIL}# ENDIF #')">
			<span class="lo-date hidden">{feed_items.SORT_DATE}</span>
			<div class="cell-module">
				<a class="offload" href="{PATH_TO_ROOT}/{MODULE_NAME}">{L_MODULE_TITLE}</a>
			</div>
			<div class="cell-content align-center cell-date">
				<span class="pinned item-creation-date">
					<i class="far fa-fw fa-calendar-plus" aria-hidden="true"></i> <time datetime="{feed_items.DATE_ISO8601}" itemprop="datePublished">{feed_items.DATE}</time>
				</span>
			</div>
			<div class="cell-header align-center">
				<h3 class="cell-name">
					<a href="{feed_items.U_ITEM_HOST}" class="offload">{feed_items.ITEM_HOST}</a>
				</h3>
			</div>
			<div class="cell-body">
				<div class="cell-content align-center">
					<p>
						<a class="text-italic small" href="{feed_items.U_ITEM}"# IF C_NEW_WINDOW # target="_blank" rel="noopener noreferrer"# ENDIF #>
							{feed_items.TITLE} <i class="fa fa-square-from-square"></i>
						</a>
					</p>
					{feed_items.SUMMARY} # IF feed_items.C_READ_MORE # <span aria-label="{@flux.words.not.read}" class="small text-italic pinned notice">{feed_items.WORDS_NUMBER}</span># ENDIF #
				</div>
			</div>
		</div>
	# END feed_items #
# ENDIF #
