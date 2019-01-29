		<script>
		<!--
			function ChangeMonth(year, month)
			{
				jQuery.ajax({
					url: ${escapejs(U_AJAX_CALENDAR)} + year + '/' + month + '/' + {MINI_MODULE},
					success: function(returnData){
						jQuery('#calendar').html(returnData);
					}
				});

				# IF NOT C_MINI_MODULE #
				jQuery.ajax({
					url: ${escapejs(U_AJAX_EVENTS)} + year + '/' + month,
					success: function(returnData){
						jQuery('#events').html(returnData);
					}
				});
				# ENDIF #
			}
		-->
		</script>

		<div id="date_select_form" class="text-center">
			<form method="post" class="fieldset-content">
				<div class="horizontal-fieldset" id="CalendarAjaxCalendarController_choose-date">
					<div id="CalendarAjaxCalendarController_month_field" class="form-group-sm">
						<select class="form-control" name="CalendarAjaxCalendarController_month" id="CalendarAjaxCalendarController_month" onchange="ChangeMonth(jQuery('#CalendarAjaxCalendarController_year').val(), jQuery('#CalendarAjaxCalendarController_month').val());" class="form-group">
							# START months #
							<option value="{months.VALUE}"# IF months.SELECTED # selected="selected"# ENDIF #>{months.NAME}</option>
							# END months #
						</select>
					</div>
					<div id="CalendarAjaxCalendarController_year_field" class="form-group-sm">
						<select class="form-control" name="CalendarAjaxCalendarController_year" id="CalendarAjaxCalendarController_year" onchange="ChangeMonth(jQuery('#CalendarAjaxCalendarController_year').val(), jQuery('#CalendarAjaxCalendarController_month').val());" class="form-group">
							# START years #
							<option value="{years.VALUE}"# IF years.SELECTED # selected="selected"# ENDIF #>{years.NAME}</option>
							# END years #
						</select>
					</div>
				</div>
			</form>
		</div>

		<div class="calendar-container text-center">
			<div class="btn-group # IF NOT C_MINI_MODULE #btn-group-justified# ENDIF #">
					<a class="btn btn-default" onclick="ChangeMonth(${escapejs(PREVIOUS_YEAR)}, ${escapejs(PREVIOUS_MONTH)});" title="{PREVIOUS_MONTH_TITLE}"><i class="fa fa-angle-double-left"></i></a>
					<a class="btn btn-default">{DATE}</a>
					<a class="btn btn-default" onclick="ChangeMonth(${escapejs(NEXT_YEAR)}, ${escapejs(NEXT_MONTH)});" title="{NEXT_MONTH_TITLE}"><i class="fa fa-angle-double-right"></i></a>
			</div>

			<div class="calendar-content">
				<table class="# IF C_MINI_MODULE #mini-table # ENDIF #calendar-table table">
					<thead>
						<tr>
							<th></th>
							<th class="text-strong">{@monday_mini}</th>
							<th class="text-strong">{@tuesday_mini}</th>
							<th class="text-strong">{@wednesday_mini}</th>
							<th class="text-strong">{@thursday_mini}</th>
							<th class="text-strong">{@friday_mini}</th>
							<th class="text-strong">{@saturday_mini}</th>
							<th class="text-strong">{@sunday_mini}</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							# START day #
							<td class="{day.CLASS}"# IF day.C_COLOR # style="background-color:{day.COLOR}"# ENDIF #>
								# IF day.C_MONTH_DAY #<a title="{day.TITLE}" href="{day.U_DAY_EVENTS}">{day.DAY}</a># ENDIF #
								# IF day.C_WEEK_LABEL #{day.DAY}# ENDIF #
							</td>
							# IF day.CHANGE_LINE #
						</tr>
						<tr>
							# ENDIF #
							# END day #
						</tr>
						# IF C_DISPLAY_LEGEND #
						<tr>
							<td colspan="8" class="legend-line"># INCLUDE LEGEND #</td>
						</tr>
						# ENDIF #
					</tbody>
				</table>
			</div>

		</div>
