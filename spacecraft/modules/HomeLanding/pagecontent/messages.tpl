# START items #
	<div
	data-listorder-item
	class="message-container message-small cell animate fadeInToTop has-thumbnail"
	style="background-image: linear-gradient(to bottom, rgba(var(--bgc-rgb-m), 0.8), rgba(var(--bgc-rgb-m), 0.8)), url('{PATH_TO_ROOT}/templates/{THEME}/images/messages.webp')"
	itemscope="itemscope"
	itemtype="https://schema.org/CreativeWork">
		<div class="cell-module">
			<a class="offload" href="{PATH_TO_ROOT}/{MODULE_NAME}">{L_MODULE_TITLE}</a>
		</div>
		<span class="lo-date hidden">{items.SORT_DATE}</span>
		<div class="cell-content align-center cell-date">
			<span class="pinned item-creation-date">
				<i class="far fa-fw fa-calendar-alt" aria-hidden="true"></i>
				<time datetime="{items.DATE_ISO8601}" itemprop="datePublished">{items.DATE}</time>
			</span>
		</div>
		<div class="cell-body">
			<div class="cell-content">
				{items.CONTENT}
				<div class="message-infos cell-center"><a href="{items.U_ITEM}" class="pinned offload"><i class="fa fa-share"></i> {@common.read.more}</a></div>
			</div>
		</div>
		<div class="cell-infos">
			<div class="more">
				<i class="fa fa-user fa-fw" aria-hidden="true"></i>
				# IF items.C_AUTHOR_EXISTS #
					<span itemprop="author" class="{items.AUTHOR_LEVEL_CLASS} offload"# IF items.C_AUTHOR_GROUP_COLOR # style="{items.AUTHOR_GROUP_COLOR}"# ENDIF #>{items.AUTHOR_DISPLAY_NAME}</span>
				# ELSE #
					{items.AUTHOR_DISPLAY_NAME}
				# ENDIF #
			</div>
			<div class="more">
				<span class="pinned"><i class="far fa-file"></i> <a class="offload" href="{items.U_TOPIC}">{items.TOPIC}</a></span>
			</div>
		</div>
	</div>
# END items #
