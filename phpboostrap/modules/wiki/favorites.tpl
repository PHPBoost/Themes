		# INCLUDE message_helper #

		# IF NO_FAVORITE #
			<div class="text-center alert alert-notice">{L_NO_FAVORITE}</div>
		# ELSE #
		{L_FAVORITES}
		<div class="table-responsive">
			<table class="table">
				<thead>
					<tr>
						<th>
							{L_TITLE}
						</th>
						<th>
							{L_UNTRACK}
						</th>
					</tr>
				</thead>
				<tbody>
					# START list #
					<tr>
						<td>
							<a href="{list.U_ARTICLE}">{list.ARTICLE}</a>
						</td>
						<td>
							{list.ACTIONS}
						</td>
					</tr>
					# END list #
				</tbody>
			</table>
		</div>

		# ENDIF #
