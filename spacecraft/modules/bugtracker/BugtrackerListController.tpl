# INCLUDE MESSAGE_HELPER #
<div class="cell-flex cell-columns-3">
	# INCLUDE FILTER_LIST #
	<div class="sort-list cell cell-filter">
		<div class="cell-body">
			<div class="cell-content">
				<span>{@common.sort.by} :</span>
				<div
						data-listorder-control="dropdown-sort"
						class="listorder-drop-down"
						data-group="bugs-items"
						data-name="sorttitle">
					<div data-type="panel" class="listorder-dd-panel"></div>
					<ul data-type="content" class="dropdown-container">
						<li> {@common.sort.by.date}
							<em class="sort-type bgc-full link-color" data-path=".lo-date" data-order="asc" data-type="number"><span class="sr-only">{@common.sort.by.date} &#8593;</span> <i class="fa fa-sort-numeric-up-alt"></i></em>
							<em class="sort-type bgc-full logo-color" data-path=".lo-date" data-order="desc" data-type="number" data-selected="true"><span class="sr-only">{@common.sort.by.date} &#8595;</span> <i class="fa fa-sort-numeric-down-alt"></i></em>
						</li>
						<li> {@common.title}
							<em class="sort-type bgc-full link-color" data-path=".lo-title" data-order="asc" data-type="text"><span class="sr-only">{@common.title} &#8593;</span> <i class="fa fa-sort-alpha-up-alt"></i></em>
							<em class="sort-type bgc-full logo-color" data-path=".lo-title" data-order="desc" data-type="text"><span class="sr-only">{@common.title} &#8595;</span> <i class="fa fa-sort-alpha-down-alt"></i></em>
						</li>
						<li> {@common.sort.by.author}
							<em class="sort-type bgc-full link-color" data-path=".lo-author" data-order="asc" data-type="text"><span class="sr-only">{@common.sort.by.author} &#8593;</span> <i class="fa fa-sort-alpha-up-alt"></i></em>
							<em class="sort-type bgc-full logo-color" data-path=".lo-author" data-order="desc" data-type="text"><span class="sr-only">{@common.sort.by.author} &#8595;</span> <i class="fa fa-sort-alpha-down-alt"></i></em>
						</li>
						# IF C_DISPLAY_TYPE_COLUMN #
							<li> {@common.type}
								<em class="sort-type bgc-full link-color" data-path=".lo-type" data-order="asc" data-type="text"><span class="sr-only">{@common.type} &#8593;</span> <i class="fa fa-sort-alpha-up-alt"></i></em>
								<em class="sort-type bgc-full logo-color" data-path=".lo-type" data-order="desc" data-type="text"><span class="sr-only">{@common.type} &#8595;</span> <i class="fa fa-sort-alpha-down-alt"></i></em>
							</li>
						# ENDIF #
						# IF C_DISPLAY_CATEGORY_COLUMN #
							<li> {@common.category}
								<em class="sort-type bgc-full link-color" data-path=".lo-category" data-order="asc" data-type="text"><span class="sr-only">{@common.category} &#8593;</span> <i class="fa fa-sort-alpha-up-alt"></i></em>
								<em class="sort-type bgc-full logo-color" data-path=".lo-category" data-order="desc" data-type="text"><span class="sr-only">{@common.category} &#8595;</span> <i class="fa fa-sort-alpha-down-alt"></i></em>
							</li>
						# ENDIF #
						# IF C_DISPLAY_PRIORITY_COLUMN #
							<li> {@bugtracker.priority}
								<em class="sort-type bgc-full link-color" data-path=".lo-priority" data-order="asc" data-type="text"><span class="sr-only">{@bugtracker.priority} &#8593;</span> <i class="fa fa-sort-alpha-up-alt"></i></em>
								<em class="sort-type bgc-full logo-color" data-path=".lo-priority" data-order="desc" data-type="text"><span class="sr-only">{@bugtracker.priority} &#8595;</span> <i class="fa fa-sort-alpha-down-alt"></i></em>
							</li>
						# ENDIF #
						# IF C_DISPLAY_DETECTED_IN_COLUMN #
							<li> {@bugtracker.detected.in}
								<em class="sort-type bgc-full link-color" data-path=".lo-detect" data-order="asc" data-type="text"><span class="sr-only">{@bugtracker.detected.in} &#8593;</span> <i class="fa fa-sort-alpha-up-alt"></i></em>
								<em class="sort-type bgc-full logo-color" data-path=".lo-detect" data-order="desc" data-type="text"><span class="sr-only">{@bugtracker.detected.in} &#8595;</span> <i class="fa fa-sort-alpha-down-alt"></i></em>
							</li>
						# ENDIF #
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="cell">
		<div class="cell-content"># INCLUDE LEGEND #</div>
	</div>
</div>


# IF C_BUGS #
	<div class="cell-flex cell-columns-# IF C_HAS_ALL_VERTICAL_MENUS #2# ELSE ## IF C_HAS_SOME_VERTICAL_MENUS #3# ELSE #4# ENDIF ## ENDIF # cell-tile bug-list" data-listorder-group="bugs-items">
		# START bug #
			<div data-listorder-item class="cell"# IF bug.C_LINE_COLOR # style="border-color:{bug.LINE_COLOR};"# ENDIF #>
				<span class="lo-date hidden">{bug.SUBMIT_DATE_TIMESTAMP}</span>
				<div class="cell-body lo-title">
					<div class="cell-header">
						<h4 class="cell-name"><a class="offload" href="{bug.U_LINK}">\#{bug.ID}</a></h4>
						<span>{bug.TITLE}</span>
					</div>
				</div>
				<div class="cell-infos">
					<div class="more lo-author">
						# IF C_UNSOLVED #{bug.SUBMIT_DATE}# ELSE ## IF bug.C_FIX_DATE #{bug.FIX_DATE}# ELSE #{@bugtracker.not.solved}# ENDIF ## ENDIF #
						# IF C_DISPLAY_AUTHOR #{@common.by} # IF bug.C_AUTHOR_EXISTS #<a itemprop="author" href="{bug.U_AUTHOR_PROFILE}" class="{bug.AUTHOR_LEVEL_CLASS} offload" # IF bug.C_AUTHOR_GROUP_COLOR # style="color:{bug.AUTHOR_GROUP_COLOR}" # ENDIF #>{bug.AUTHOR}</a># ELSE #{bug.AUTHOR}# ENDIF ## ENDIF #
					</div>
					<div class="more"><a class="offload" href="{bug.U_COMMENTS}">{bug.COMMENTS_NUMBER} # IF bug.C_MORE_THAN_ONE_COMMENT #{@common.comments}# ELSE #${@common.comment}# ENDIF #</a></div>
				</div>
				<div class="cell-infos">
					# IF C_DISPLAY_TYPE_COLUMN #<span class="pinned bgc notice lo-type" aria-label="{@common.type}">{bug.TYPE}</span># ENDIF #
					# IF C_DISPLAY_CATEGORY_COLUMN #<span class="pinned bgc notice lo-category" aria-label="{@common.category}">{bug.CATEGORY}</span># ENDIF #
					# IF C_DISPLAY_PRIORITY_COLUMN #<span class="pinned bgc notice lo-priority" aria-label="{@bugtracker.priority}">{bug.PRIORITY}</span># ENDIF #
					# IF C_DISPLAY_DETECTED_IN_COLUMN #<span class="pinned bgc notice lo-detect" aria-label="{@bugtracker.detected.in}">{bug.DETECTED_IN}</span># ENDIF #
				</div>
				<div class="cell-infos">
					<span>{@common.status} :</span>
					<span>{bug.STATUS}</span>
				</div>
				# IF bug.C_PROGRESS #
					<div class="cell-content">
						<div class="progressbar-container" role="progressbar" aria-valuenow="{bug.PROGRESS}" aria-valuemin="0" aria-valuemax="100">
							<div class="progressbar-infos">{bug.PROGRESS}%</div>
							<div class="progressbar" style="width:{bug.PROGRESS}%"></div>
						</div>
					</div>
				# ENDIF #
				# IF C_IS_ADMIN #
					<div class="cell-infos">
						<a class="offload" href="{bug.U_CHANGE_STATUS}" aria-label="{@bugtracker.change.status}"><i class="fa fa-fw fa-cogs" aria-hidden="true"></i></a>
						<a class="offload" href="{bug.U_HISTORY}" aria-label="{@bugtracker.history}"><i class="fa fa-fw fa-history" aria-hidden="true"></i></a>
						<a href="{bug.U_EDIT}" aria-label="{@common.edit}"><i class="far fa-fw fa-edit" aria-hidden="true"></i></a>
						<a href="{bug.U_DELETE}" aria-label="{@common.delete}"><i class="far fa-fw fa-trash-alt" aria-hidden="true"></i></a>
					</div>
				# ENDIF #
			</div>
		# END bug #
	</div>
	# IF C_PAGINATION #
		# INCLUDE PAGINATION #
	# ENDIF #
# ELSE #
	<div class="message-helper bgc notice">{@common.no.item.now}</div>
# ENDIF #
<script>listorder.init();</script>
