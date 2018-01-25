<div class="form-inline">
	<div class="input-group m5">
		<div class="input-group-addon">
			<a href="" onclick="xmlhttprequest_calendar(${escapejs(FIELD)}, ${escapejs(INPUT_FIELD)}, ${escapejs(PREVIOUS_YEAR)}, ${escapejs(PREVIOUS_MONTH)}, 1, ${escapejs(CALENDAR_NUMBER)});return false;"><i class="fa fa-caret-left fa-large"></i></a>
		</div>
		<select onchange="xmlhttprequest_calendar(${escapejs(FIELD)}, ${escapejs(INPUT_FIELD)}, ${escapejs(YEAR)}, jQuery(this).val(), 1, ${escapejs(CALENDAR_NUMBER)});" class="form-control date-picker">
			# START month #
			{month.MONTH}
			# END month #
		</select>
		<select onchange="xmlhttprequest_calendar(${escapejs(FIELD)}, ${escapejs(INPUT_FIELD)}, jQuery(this).val(), ${escapejs(MONTH)}, 1, ${escapejs(CALENDAR_NUMBER)});" class="form-control date-picker">
			# START year #
				{year.YEAR}
			# END year #
		</select>
		<div class="input-group-addon">
			<a href="" onclick="xmlhttprequest_calendar(${escapejs(FIELD)}, ${escapejs(INPUT_FIELD)}, ${escapejs(NEXT_YEAR)}, ${escapejs(NEXT_MONTH)}, 1, ${escapejs(CALENDAR_NUMBER)});return false;"><i class="fa fa-caret-right fa-large"></i></a>
		</div>
	</div>
</div>

<table class="mini-table table table-bordered">
	<thead>
		<tr>
			<th><span class="small">{@monday_short}</span></th>
			<th><span class="small">{@tuesday_short}</span></th>
			<th><span class="small">{@wednesday_short}</span></th>
			<th><span class="small">{@thursday_short}</span></th>
			<th><span class="small">{@friday_short}</span></th>
			<th><span class="small">{@saturday_short}</span></th>
			<th><span class="small">{@sunday_short}</span></th>
		</tr>
	</thead>
	<tbody>
		<tr>
			# START day #
			<td class="{day.CLASS}">
				<a href="" onclick="insert_date(${escapejs(FIELD)}, ${escapejs(INPUT_FIELD)}, ${escapejs(day.DATE)}, ${escapejs(CALENDAR_NUMBER)});return false;">{day.DAY}</a>
			</td>
			# IF day.CHANGE_LINE #
		</tr>
		<tr>
			# ENDIF #
			# END day #
		</tr>
	</tbody>
</table>
