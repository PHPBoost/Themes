		# IF C_ARTICLE #
		<div class="table-responsive">
			<table class="table">
				<caption>{L_HISTORY}: <a href="{U_ARTICLE}">{TITLE}</a></caption>
				<thead>
					<tr>
						<th>
							{L_VERSIONS}
						</th>
						<th>
							{L_DATE}
						</th>
						<th>
							{L_AUTHOR}
						</th>
						<th>
							{L_ACTIONS}
						</th>
					</tr>
				</thead>
				<tbody>
					# START list #
					<tr>
						<td>
							<a href="{list.U_ARTICLE}">{list.TITLE}</a> {list.CURRENT_RELEASE}
						</td>
						<td>
							{list.DATE}
						</td>
						<td>
							{list.AUTHOR}
						</td>
						<td>
							{list.ACTIONS}
						</td>
					</tr>
					# END list #
				</tbody>
			</table>
		</div>
		# ELSE #
		<div class="table-responsive">
			<table class="table">
				<caption>{L_HISTORY}</caption>
				<thead>
					<tr>
						<th>
							<a href="{TOP_TITLE}" class="fa fa-table-sort-up"></a>
							{L_TITLE}
							<a href="{BOTTOM_TITLE}" class="fa fa-table-sort-down"></a>
						</th>
						<th>
							<a href="{TOP_DATE}" class="fa fa-table-sort-up"></a>
							{L_DATE}
							<a href="{BOTTOM_DATE}" class="fa fa-table-sort-down"></a>
						</th>
						<th>
							{L_AUTHOR}
						</th>
					</tr>
				</thead>
				# IF C_PAGINATION #
				<tfoot>
					<tr>
						<td colspan="3">
							# INCLUDE PAGINATION #
						</td>
					</tr>
				</tfoot>
				# ENDIF #
				<tbody>
					# START list #
					<tr>
						<td class="text-left">
							<a href="{list.U_ARTICLE}">{list.TITLE}</a>
						</td>
						<td>
							{list.DATE}
						</td>
						<td>
							{list.AUTHOR}
						</td>
					</tr>
					# END list #
				</tbody>
			</table>
		</div>

		# END IF #
