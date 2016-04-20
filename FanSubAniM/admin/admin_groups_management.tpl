		<div id="admin-quick-menu">
			<ul>
				<li class="title-menu">{L_GROUPS_MANAGEMENT}</li>
				<li>
					<a href="admin_groups.php"><img src="{PATH_TO_ROOT}/templates/{THEME}/images/admin/groups.png" alt="" /></a>
					<br />
					<a href="admin_groups.php" class="quick-link">{L_GROUPS_MANAGEMENT}</a>
				</li>
				<li>
					<a href="admin_groups.php?add=1"><img src="{PATH_TO_ROOT}/templates/{THEME}/images/admin/groups.png" alt="" /></a>
					<br />
					<a href="admin_groups.php?add=1" class="quick-link">{L_ADD_GROUPS}</a>
				</li>
			</ul>
		</div>
		
		<div id="admin-contents">
			<fieldset class="fieldset-content">
				<legend>{L_GROUPS_MANAGEMENT}</legend>
			
				<table>
					<thead>
						<tr>
							<th>
								{L_NAME}
							</th>
							<th>
								{L_IMAGE}
							</th>
							<th>
								{L_UPDATE}
							</th>
							<th>
								{L_DELETE}
							</th>
						</tr>
					</thead>
					<tfoot>
						<tr>
							<th colspan="4">
								<span><a href="admin_groups.php?add=1" title="{L_ADD_GROUPS}">{L_ADD_GROUPS}</a></span>
							</th>
						</tr>
					</tfoot>
					<tbody>
						# START group #
						<tr> 
							<td>
								<a href="{group.U_USER_GROUP}"# IF group.C_GROUP_COLOR # style="color:{group.GROUP_COLOR}" # ENDIF #>{group.NAME}</a>
							</td>
							<td>
								{group.IMAGE}
							</td>
							<td> 
								<a href="admin_groups.php?id={group.ID}" title="{L_UPDATE}" class="fa fa-edit"></a>
							</td>
							<td>
								<a href="admin_groups.php?del=1&amp;id={group.ID}&amp;token={TOKEN}" title="{L_DELETE}" class="fa fa-delete" data-confirmation="delete-element"></a>
							</td>
						</tr>
						# END group #
					</tbody>
				</table>
			</fieldset>
		</div>
		