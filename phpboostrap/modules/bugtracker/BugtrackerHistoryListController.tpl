# IF C_HISTORY #
<div class="no-more-tables row">
	<table class="col-sm-12 table-bordered table-striped table-condensed cf">
		<thead class="cf">
			<tr>
				<th>
					{@labels.fields.updater_id}
				</th>
				<th>
					{@labels.fields.updated_field}
				</th>
				<th>
					{@labels.fields.old_value}
				</th>
				<th>
					{@labels.fields.new_value}
				</th>
				<th>
					{@labels.fields.update_date}
				</th>
				<th>
					{@labels.fields.change_comment}
				</th>
			</tr>
		</thead>
		# IF C_PAGINATION #
		<caption>
			# INCLUDE PAGINATION #
		</caption>
		# ENDIF #
		<tbody>
			# START history #
			<tr>
				<td data-title="{@labels.fields.updater_id}">
					# IF history.C_UPDATER_EXIST #<a href="{history.U_UPDATER_PROFILE}" class="{history.UPDATER_LEVEL_CLASS}" # IF history.C_UPDATER_GROUP_COLOR # style="color:{history.UPDATER_GROUP_COLOR}" # ENDIF #>{history.UPDATER}</a># ELSE #{history.UPDATER}# ENDIF #
				</td>
				<td data-title="{@labels.fields.updated_field}">
					{history.UPDATED_FIELD}
				</td>
				<td data-title="{@labels.fields.old_value}">
					{history.OLD_VALUE}
				</td>
				<td data-title="{@labels.fields.new_value}">
					{history.NEW_VALUE}
				</td>
				<td data-title="{@labels.fields.update_date}">
					{history.UPDATE_DATE_FULL}
				</td>
				<td data-title="{@labels.fields.change_comment}">
					{history.COMMENT}
				</td>
			</tr>
			# END history #
		</tbody>
	</table>
</div>
# ELSE #
<div class="alet alert-info">{@notice.no_history}</div>
# ENDIF #
