<nav id="admin-quick-menu">
	<a href="" class="js-menu-button" onclick="open_submenu('admin-quick-menu');return false;" title="{L_ADMIN_ALERTS}">
		<i class="fa fa-bars"></i> {L_ADMIN_ALERTS}
	</a>
	<ul>
		<li>
			<a href="admin_alerts.php" class="quick-link">{L_ADMINISTRATOR_ALERTS_LIST}</a>
		</li>
	</ul>
</nav>

<script>
<!--
function change_alert_status(id, status)
{
	document.getElementById("status_" + id).innerHTML = '<i class="fa fa-spinner fa-spin"></i>';

	var xhr_object = null;
	var data = null;
	var filename = PATH_TO_ROOT + '/kernel/framework/ajax/admin_alerts.php?change_status=' + id + '&token={TOKEN}';

	if(window.XMLHttpRequest) // Firefox
		xhr_object = new XMLHttpRequest();
	else if(window.ActiveXObject) // Internet Explorer
		xhr_object = new ActiveXObject("Microsoft.XMLHTTP");
	else // XMLHttpRequest non supporté par le navigateur
		return;

	xhr_object.open('GET', filename, true);
	xhr_object.onreadystatechange = function()
	{
		if( xhr_object.readyState == 4 && xhr_object.responseText == "1" )
		{
			if( status == 0 )
			{
				document.getElementById("status_" + id).innerHTML = "<i class=\"fa fa-success\"></i>";
				document.getElementById("status_" + id).href = "javascript:change_alert_status('" + id + "', '2');";
				document.getElementById("status_" + id).title = "{L_UNFIX}";
			}
			else
			{
				document.getElementById("status_" + id).innerHTML = "<i class=\"fa fa-error\"></i>";
				document.getElementById("status_" + id).href = "javascript:change_alert_status('" + id + "', '0');";
				document.getElementById("status_" + id).title = "{L_FIX}";
			}
		}
	}

	xhr_object.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	xhr_object.send(data);
}

function delete_alert(id)
{
	if( !confirm("{L_CONFIRM_DELETE_ALERT}") )
		return;

	document.getElementById("status_" + id).innerHTML = '<i class="fa fa-spinner fa-spin"></i>';

	var xhr_object = null;
	var data = null;
	var filename = PATH_TO_ROOT + '/kernel/framework/ajax/admin_alerts.php?delete=' + id + '&token={TOKEN}';

	if(window.XMLHttpRequest) // Firefox
	   xhr_object = new XMLHttpRequest();
	else if(window.ActiveXObject) // Internet Explorer
	   xhr_object = new ActiveXObject("Microsoft.XMLHTTP");
	else // XMLHttpRequest non support� par le navigateur
		return;

	xhr_object.open('GET', filename, true);
	xhr_object.onreadystatechange = function()
	{
		if( xhr_object.readyState == 4 && xhr_object.responseText == "1" )
		{
			document.getElementById("delete_" + id).style.display = "none";
		}
	}

	xhr_object.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	xhr_object.send(data);
}
-->
</script>

<div id="admin-contents">
	<fieldset>
		<legend>{L_ADMIN_ALERTS}</legend>
		<div class="fieldset-inset">
		# IF C_EXISTING_ALERTS #
		<div class="table-responsive">
			<table class="table table-bordered table-hover">
				<caption>{L_ADMIN_ALERTS}</caption>
				<thead>
					<tr>
						<th>
							# IF NOT C_ORDER_ENTITLED_ASC #
								<a href="{U_ORDER_ENTITLED_ASC}" class="fa fa-table-sort-up"></a>
							# ENDIF #
							{L_TYPE}
							# IF NOT C_ORDER_ENTITLED_DESC #
								<a href="{U_ORDER_ENTITLED_DESC}" class="fa fa-table-sort-down"></a>
							# ENDIF #
						</th>
						<th>
							# IF NOT C_ORDER_CREATION_DATE_ASC #
								<a href="{U_ORDER_CREATION_DATE_ASC}" class="fa fa-table-sort-up"></a>
							# ENDIF #
							{L_DATE}
							# IF NOT C_ORDER_CREATION_DATE_DESC #
								<a href="{U_ORDER_CREATION_DATE_DESC}" class="fa fa-table-sort-down"></a>
							# ENDIF #
						</th>
						<th>
							# IF NOT C_ORDER_PRIORITY_ASC #
								<a href="{U_ORDER_PRIORITY_ASC}" class="fa fa-table-sort-up"></a>
							# ENDIF #
							{L_PRIORITY}
							# IF NOT C_ORDER_PRIORITY_DESC #
								<a href="{U_ORDER_PRIORITY_DESC}" class="fa fa-table-sort-down"></a>
							# ENDIF #
						</th>
						<th>
							# IF NOT C_ORDER_STATUS_ASC #
								<a href="{U_ORDER_STATUS_ASC}" class="fa fa-table-sort-up"></a>
							# ENDIF #
							{L_ACTIONS}
							# IF NOT C_ORDER_STATUS_DESC #
								<a href="{U_ORDER_STATUS_DESC}" class="fa fa-table-sort-down"></a>
							# ENDIF #
						</th>
					</tr>
				</thead>
				# IF C_PAGINATION #
				<tfoot>
					<tr>
						<td colspan="4">
							# INCLUDE PAGINATION #
						</td>
					</tr>
				</tfoot>
				# ENDIF #
				<tbody>
					# START alerts #
					<tr id="delete_{alerts.ID}">
						<td>
							{alerts.IMG} <a href="{alerts.FIXING_URL}">{alerts.NAME}</a>
						</td>
						<td>
							{alerts.DATE}
						</td>
						<td style="{alerts.STYLE}">
							{alerts.PRIORITY}
						</td>
						<td>
							{alerts.ACTIONS}
							<a href="javascript:change_alert_status('{alerts.ID}', '{alerts.STATUS}');" title="# IF alerts.C_PROCESSED #{L_UNFIX}# ELSE #{L_FIX}# ENDIF #" id="status_{alerts.ID}"><i class="fa # IF alerts.C_PROCESSED #fa-success# ELSE #fa-error# ENDIF #"></i></a>
							<a href="javascript:delete_alert('{alerts.ID}');" title="{L_DELETE}" class="fa fa-delete"></a>
						</td>
					</tr>
					# END alerts #
				</tbody>
			</table>
		</div>

		# ELSE #
		<div class="alert alert-info">{L_NO_ALERT}</div>
		# ENDIF #
		</div>
	</fieldset>
</div>
