<script>
	function delete_filter(id) {
		if (confirm(${escapejs(@actions.confirm.del_filter)})) {
			jQuery.ajax({
				url: '${relative_url(BugtrackerUrlBuilder::delete_filter())}',
				type: "post",
				data: {'id' : id, 'token' : '{TOKEN}'},
				success: function(returnData){
					if (returnData.code > 0) {
						jQuery("#filter" + returnData.code).remove();
					}
				}
			});
		}
	}

	function toggle_filters_table() {
		jQuery("#bug_filters").fadeToggle();
	}
</script>
<div class="cell bugtracker-filters">
	# IF C_SAVED_FILTERS #
		# START filters #
			<div id="filter{filters.ID}" class="cell-content flex-between">
				<a class="offload" href="{filters.LINK_FILTER}">{filters.FILTER}</a>
				<a href="#" aria-label="{@common.delete}" onclick="delete_filter('{filters.ID}'); return false;"><i class="far fa-trash-alt" aria-hidden="true"></i></a>
			</div>
		# END filters #
	# ENDIF #
	<div class="cell-content cell-header" onclick="toggle_filters_table(); return false;">
		<div class="cell-name">
			<span><i class="fa fa-filter" aria-hidden="true"></i> {@common.filter.items}</span>
		</div>
		<span><i class="fa fa-fw fa-caret-down"></i></span>
	</div>
	<div class="cell-body filter-list" id="bug_filters"# IF NOT C_HAS_SELECTED_FILTERS # style="display: none;"# ENDIF #>
		<div class="cell-infos">
			{@bugtracker.items.number} : {BUGS_NUMBER}
			# IF C_DISPLAY_SAVE_BUTTON #
				<a class="offload" href="{LINK_FILTER_SAVE}" aria-label="{@labels.save_filters}"><i class="fa fa-fw fa-save" aria-hidden="true"></i></a>
			# ENDIF #
		</div>
		# IF C_DISPLAY_TYPES #
			<div class="cell-form">
				<div class="cell-label">{@common.type} </div>
				<div class="cell-input"># INCLUDE SELECT_TYPE #</div>
			</div>
		# ENDIF #
		# IF C_DISPLAY_CATEGORIES #
			<div class="cell-form">
				<div class="cell-label">{@common.category} </div>
				<div class="cell-input"># INCLUDE SELECT_CATEGORY #</div>
			</div>
		# ENDIF #
		# IF C_DISPLAY_SEVERITIES #
			<div class="cell-form">
				<div class="cell-label">{@bugtracker.severity} </div>
				<div class="cell-input"># INCLUDE SELECT_SEVERITY #</div>
			</div>
		# ENDIF #
			<div class="cell-form">
				<div class="cell-label">{@common.status}</div>
				<div class="cell-input"># INCLUDE SELECT_STATUS #</div>
			</div>
		# IF C_DISPLAY_VERSIONS #
			<div class="cell-form">
				<div class="cell-label">{@common.version}</div>
				<div class="cell-input"># INCLUDE SELECT_VERSION #</div>
			</div>
		# ENDIF #
	</div>
</div>
