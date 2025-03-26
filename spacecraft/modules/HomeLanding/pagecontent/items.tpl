# START items #
	<div
			data-listorder-item
			class="{MODULE_NAME}-item category-{items.CATEGORY_ID} cell# IF items.C_PRIME_ITEM # prime-item# ENDIF # animate fadeInToTop has-thumbnail"
			itemscope="itemscope"
			itemtype="https://schema.org/CreativeWork"
			style="background-image: linear-gradient(to bottom, rgba(var(--bgc-rgb-m), 0.8), rgba(var(--bgc-rgb-m), 0.8)), url('# IF items.C_HAS_PARTNER_THUMBNAIL #{items.U_PARTNER_THUMBNAIL}# ELSE ## IF items.C_HAS_THUMBNAIL #{items.U_THUMBNAIL}# ENDIF ## ENDIF #')">
		<span class="lo-date hidden">{items.DATE_TIMESTAMP}</span>
		<div class="cell-module">
			<a class="offload" href="{PATH_TO_ROOT}/{MODULE_NAME}">{L_MODULE_TITLE}</a>
		</div>
		<div class="cell-content align-center cell-date">
			# IF items.C_HAS_UPDATE #
				<span class="pinned item-modified-date">
					<i class="far fa-fw fa-calendar-plus" aria-hidden="true"></i> <time datetime="{items.UPDATE_DATE_ISO8601}" itemprop="dateModified">{items.UPDATE_DATE}</time>
				</span>
			# ELSE #
				<span class="pinned item-creation-date">
					<i class="far fa-fw fa-calendar-alt" aria-hidden="true"></i> <time datetime="{items.DATE_ISO8601}" itemprop="datePublished">{items.DATE}</time>
				</span>
			# ENDIF #
		</div>
		<div class="cell-header align-center">
			<h3 class="cell-name">
				<a class="offload" href="{items.U_ITEM}">{items.TITLE}</a>
			</h3>
		</div>
		<div class="cell-body">
			<div class="cell-content align-center">
				# IF C_DATE #
					<div class="controls align-right"><i class="far fa-fw fa-calendar-alt"></i><span>{items.START_DATE}</span> - <span>{items.END_DATE}</span></div>
				# ENDIF #
				{items.SUMMARY}# IF items.C_READ_MORE #... <a href="{items.U_ITEM}" class="read-more offload">[{@common.read.more}]</a># ENDIF #
			</div>
		</div>
		<div class="cell-infos">
			<div class="more">
				# IF C_AUTHOR_DISPLAYED #
					<span class="pinned item-author">
						<i class="fa fa-fw fa-user" aria-hidden="true"></i>
						# IF items.C_AUTHOR_EXISTS #<a itemprop="author" class="{items.AUTHOR_LEVEL_CLASS} offload" href="{items.U_AUTHOR_PROFILE}"# IF items.C_AUTHOR_GROUP_COLOR # style="{items.AUTHOR_GROUP_COLOR}"# ENDIF #>{items.AUTHOR_DISPLAY_NAME}</a># ELSE #{items.AUTHOR_DISPLAY_NAME}# ENDIF #
					</span>
				# ENDIF #
			</div>
			<div class="more">
				<span class="pinned item-category"><i class="far fa-fw fa-folder" aria-hidden="true"></i> <a class="offload" itemprop="about" href="{items.U_CATEGORY}">{items.CATEGORY_NAME}</a></span>
				# IF C_VIEWS_NUMBER #<span class="pinned item-views-number" aria-label="{items.VIEWS_NUMBER} # IF items.C_SEVERAL_VIEWS #{@common.views}# ELSE #{@common.view}# ENDIF #"><i class="fa fa-fw fa-eye" aria-hidden="true"></i> {items.VIEWS_NUMBER}</span># ENDIF #
			</div>
		</div>

	</div>
# END items #
