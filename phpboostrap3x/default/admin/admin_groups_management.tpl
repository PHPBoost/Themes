		<nav id="admin-quick-menu">
			<a href="" class="js-menu-button" onclick="open_submenu('admin-quick-menu');return false;" title="{L_GROUPS_MANAGEMENT}">
				<i class="fa fa-bars"></i> {L_GROUPS_MANAGEMENT}
			</a>
			<ul>
				<li>
					<a href="admin_groups.php" class="quick-link">{L_GROUPS_MANAGEMENT}</a>
				</li>
				<li>
					<a href="admin_groups.php?add=1" class="quick-link">{L_ADD_GROUPS}</a>
				</li>
			</ul>
		</nav>

		<div id="admin-contents">
			<fieldset class="fieldset-content">
				<legend>{L_GROUPS_MANAGEMENT}</legend>
				<div class="fieldset-inset">
					<div class="table-responsive">
						<table class="table table-bordered table-hover">
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
									<td colspan="4">
										<a href="admin_groups.php?add=1" class="btn btn-info" title="{L_ADD_GROUPS}">{L_ADD_GROUPS}</a>
									</td>
								</tr>
							</tfoot>
							<tbody>
								# START group #
								<tr>
									<td>
										<a href="{group.U_USER_GROUP}"# IF group.C_GROUP_COLOR # style="color:{group.GROUP_COLOR}"# ENDIF #>{group.NAME}</a>
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
					</div>
				</div>
			</fieldset>
		</div>
