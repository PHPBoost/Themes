<div class="panel panel-pbt">
	<div class="panel-heading">
		<h5>{@module_title}</h5>
	</div>
	<div class="panel-body">
		# IF C_SERVERS #
		<div class="table-responsive">
			<table class="table">
				<tbody>
				# START servers #
					<tr>
						<td># IF servers.C_ICON #<img src="{servers.ICON}" alt="" /># ENDIF #</td>
						<td>
							<span class="text-strong"><a href="{servers.U_DISPLAY_SERVER}">{servers.NAME}</a></span>
							# IF C_ADDRESS_DISPLAYED #
							<br />
							<span class="very-small">{servers.ADDRESS}:{servers.PORT}</span>
							# ENDIF #
						</td>
						<td class="status-picture">
							# IF servers.C_ONLINE #<img src="{PATH_TO_ROOT}/ServerStatus/templates/images/online.png" alt="{@server.online}" title="{@server.online}" /># ELSE #<img src="{PATH_TO_ROOT}/ServerStatus/templates/images/offline.png" alt="{@server.offline}" title="{@server.offline}" /># ENDIF #
						</td>
					</tr>
				# END servers #
				</tbody>
			</table>
			<div class="text-center">
				<a href="{PATH_TO_ROOT}/ServerStatus" class="btn btn-pbt">{@module_title}</a>
			</div>
		</div>
		# ENDIF #
		<div class="center"# IF C_SERVERS #style="display:none;"# ENDIF #>{@admin.config.servers.no_server}</div>
	</div>
</div>
