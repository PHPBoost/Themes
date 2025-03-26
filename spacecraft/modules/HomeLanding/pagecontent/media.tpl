# START items #
	<div
			data-listorder-item
			class="cell animate fadeInToTop has-thumbnail"
			itemscope="itemscope"
			itemtype="https://schema.org/CreativeWork"
			style="background-image: linear-gradient(to bottom, rgba(var(--bgc-rgb-m), 0.8), rgba(var(--bgc-rgb-m), 0.8)), url('# IF items.C_HAS_THUMBNAIL #{items.U_THUMBNAIL}# ELSE #{PATH_TO_ROOT}/templates/spacecraft/images/default_item.webp# ENDIF #');">
		<div class="cell-module">
			<a class="offload" href="{PATH_TO_ROOT}/{MODULE_NAME}">
				<i class="fa fa-# IF items.C_AUDIO #music# ELSE #film# ENDIF #" aria-hidden="true"></i>
				{L_MODULE_TITLE}
			</a>
		</div>
		<span class="lo-date hidden">{items.SORT_DATE}</span>
		<div class="cell-content align-center cell-date">
			<span class="pinned item-creation-date">
				<i class="far fa-calendar-alt" aria-hidden="true"></i>
				<time datetime="{items.DATE_ISO8601}" itemprop="datePublished">{items.DATE}
			</span>
		</div>
		<header class="cell-header align-center">
			<h3 class="cell-name"><a class="offload" href="{items.U_ITEM}">{items.TITLE}</a></h3>
		</header>
		<div class="cell-body">
			# IF items.C_SUMMARY #
				<div class="cell-content align-center">
					{items.SUMMARY}
				</div>
			# ENDIF #
		</div>
		<div class="cell-infos">
			<div class="more">
				<span class="pinned item-author"><i class="fa fa-fw fa-user"></i> {items.PSEUDO}</span>
			</div>
			<div class="more">
				<span class="pinned item-category"><i class="far fa-fw fa-folder"></i> {items.CATEGORY_NAME}</span>
			</div>
		</div>
	</div>
# END items #
