<script>
<!--
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
	jQuery("#table_filters").fadeToggle();
}
-->
</script>
<div class="cssmenu-group">
	<a href="" onclick="toggle_filters_table(); return false;" class="btn btn-info"><i class="fa fa-filter"></i> {L_FILTERS}</a>
</div>
<div class="no-more-tables row">
	<table class="col-sm-12 table-bordered table-striped table-condensed cf" id="table_filters"# IF NOT C_HAS_SELECTED_FILTERS # style="display:none;"# ENDIF #>
		<thead class="cf">
			<tr>
				# IF C_DISPLAY_TYPES #
				<th>
					{@labels.fields.type}
				</th>
				# ENDIF #
				# IF C_DISPLAY_CATEGORIES #
				<th>
					{@labels.fields.category}
				</th>
				# ENDIF #
				# IF C_DISPLAY_SEVERITIES #
				<th>
					{@labels.fields.severity}
				</th>
				# ENDIF #
				<th>
					{@labels.fields.status}
				</th>
				# IF C_DISPLAY_VERSIONS #
				<th>
					{@labels.fields.version}
				</th>
				# ENDIF #
				# IF C_DISPLAY_SAVE_BUTTON #
				<th>
					{@labels.save_filters}
				</th>
				# ENDIF #
			</tr>
		</thead>
		<caption>
			${LangLoader::get_message('items_number', 'common')} : {BUGS_NUMBER}
			# IF C_SAVED_FILTERS #
			# START filters #
			<p id="filter{filters.ID}">
				<a href="" title="${LangLoader::get_message('delete', 'common')}" onclick="delete_filter('{filters.ID}'); return false;"><i class="fa fa-delete"></i></a> <a href="{filters.LINK_FILTER}">{filters.FILTER}</a>
			</p>
			# END filters #
			# ENDIF #
		</caption>
		<tbody>
			<tr>
				# IF C_DISPLAY_TYPES #
				<td data-title="{@labels.fields.type}">
					# INCLUDE SELECT_TYPE #
				</td>
				# ENDIF #
				# IF C_DISPLAY_CATEGORIES #
				<td data-title="{@labels.fields.category}">
					# INCLUDE SELECT_CATEGORY #
				</td>
				# ENDIF #
				# IF C_DISPLAY_SEVERITIES #
				<td data-title="{@labels.fields.severity}">
					# INCLUDE SELECT_SEVERITY #
				</td>
				# ENDIF #
				<td data-title="{@labels.fields.status}">
					# INCLUDE SELECT_STATUS #
				</td>
				# IF C_DISPLAY_VERSIONS #
				<td data-title="{@labels.fields.version}">
					# INCLUDE SELECT_VERSION #
				</td>
				# ENDIF #
				# IF C_DISPLAY_SAVE_BUTTON #
				<td data-title="{@labels.save_filters}" class="text-center">
					<a href="{LINK_FILTER_SAVE}" title="{@labels.save_filters}"><i class="fa fa-save"></i></a>
				</td>
				# ENDIF #
			</tr>
		</tbody>
	</table>
</div>
