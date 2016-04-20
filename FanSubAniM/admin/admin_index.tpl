		<div id="admin-quick-menu">
			<ul>
				<li class="title-menu">{L_QUICK_LINKS}</li>
				<li>
					<a href="admin_alerts.php"><img src="{PATH_TO_ROOT}/templates/{THEME}/images/admin/administrator_alert.png" alt="" /></a>
					<br />
					<a href="admin_alerts.php" class="quick-link">{L_ADMINISTRATOR_ALERTS}</a>
				</li>
				<li>
					<a href="${relative_url(AdminMembersUrlBuilder::management())}"><img src="{PATH_TO_ROOT}/templates/{THEME}/images/admin/members.png" alt="" /></a>
					<br />
					<a href="${relative_url(AdminMembersUrlBuilder::management())}" class="quick-link">{L_USERS_MANAGMENT}</a>
				</li>
				<li>
					<a href="menus/menus.php"><img src="{PATH_TO_ROOT}/templates/{THEME}/images/admin/menus.png" alt="" /></a>
					<br />
					<a href="menus/menus.php" class="quick-link">{L_MENUS_MANAGMENT}</a>
				</li>
				<li>
					<a href="${relative_url(AdminModulesUrlBuilder::list_installed_modules())}"><img src="{PATH_TO_ROOT}/templates/{THEME}/images/admin/modules.png" alt="" /></a>
					<br />
					<a href="${relative_url(AdminModulesUrlBuilder::list_installed_modules())}" class="quick-link">{L_MODULES_MANAGMENT}</a>
				</li>
				<li>
					<a href="updates/updates.php"><img src="{PATH_TO_ROOT}/templates/{THEME}/images/admin/updater.png" alt="" /></a>
					<br />
					<a href="updates/updates.php" class="quick-link">{L_WEBSITE_UPDATES}</a>
				</li>
			</ul>
		</div>
		
		<div id="admin-contents">
			<div style="width:49%;float:left;">
				<table>
					<thead>
						<tr>
							<th colspan="4">
								{L_ADMIN_ALERTS}
							</th>
						</tr>
					</thead>
					<tbody>
						<tr> 
							<td>
								# IF C_UNREAD_ALERTS #
									<div class="warning">{L_UNREAD_ALERT}</div>
								# ELSE #
									<div class="success">{L_NO_UNREAD_ALERT}</div>
								# ENDIF #
								<div class="center">
									<a href="admin_alerts.php">{L_DISPLAY_ALL_ALERTS}</a>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
				<table>
					<thead>
						<tr> 
							<th colspan="4">
								{L_LAST_COMMENTS}
							</th>
						</tr>
					</thead>
					<tbody>
						<tr> 
							<td>
								<div style="height:140px;overflow:auto;">
									# START comments_list #
									<div style="margin-bottom:10px;">
										<a href="{comments_list.U_LINK}"><i class="fa fa-hand-o-right"></i></a> <span class="smaller">{L_BY} {comments_list.U_PSEUDO}</span>
										<p class="smaller">{comments_list.CONTENT}</p>
									</div>
									# END comments_list #
									# IF C_NO_COM #
									<p style="margin:0px;margin-top:50px;"><em>{L_NO_COMMENT}</em></p>
									# ENDIF #
								</div>
								<div style="margin-top:6px;">
									<a href="${relative_url(UserUrlBuilder::comments())}">{L_VIEW_ALL_COMMENTS}</a>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div style="float:right;width:50%;">
				<form action="admin_index.php" method="post">
					<table>
						<thead>
							<tr> 
								<th colspan="4">
									{L_WRITING_PAD}
								</th>
							</tr>
						</thead>
						<tbody>
							<tr> 
								<td>
									<div class="block-contents">
										<textarea id="writing_pad_content" name="writing_pad_content" cols="45" rows="10">{WRITING_PAD_CONTENT}</textarea> 
										<p style="margin:0;margin-top:8px;">
											<button type="submit" class="submit" name="writingpad" value="true">{L_UPDATE}</button>
											<button type="reset" value="true">{L_RESET}</button>
										</p>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
					<input type="hidden" name="token" value="{TOKEN}">
				</form>
			</div>
			
			<div style="clear:right;"></div>
			<div style="clear:both;"></div>
			# INCLUDE ADVISES #
			<table>
				<caption>{L_USER_ONLINE}</caption>
				<thead>
					<tr> 
						<th>
							{L_USER_ONLINE}
						</th>
						<th>
							{L_USER_IP}
						</th>
						<th>
							{L_LOCALISATION}
						</th>
						<th>
							{L_LAST_UPDATE}
						</th>
					</tr>
				</thead>
				<tbody>
					# START user #
					<tr> 
						<td>
							{user.USER}
						</td>
						<td>
							{user.USER_IP}
						</td>
						<td>
							{user.WHERE}
						</td>
						<td>
							{user.TIME}
						</td>
					</tr>
					# END user #
				</tbody>
			</table>
		</div>
			