		<script>
		<!--
			function img_change(id, url)
			{
				if (document.getElementById(id))
					document.getElementById(id).src = "{PATH_TO_ROOT}/forum/templates/images/ranks/" + url;
			}
		-->
		</script>

		<nav id="admin-quick-menu">
			<a href="" class="js-menu-button" onclick="open_submenu('admin-quick-menu');return false;" title="{L_FORUM_MANAGEMENT}">
				<i class="fa fa-bars"></i> {L_FORUM_MANAGEMENT}
			</a>
			<ul>
				<li>
					<a href="admin_ranks.php" class="quick-link">{L_FORUM_RANKS_MANAGEMENT}</a>
				</li>
				<li>
					<a href="admin_ranks_add.php" class="quick-link">{L_FORUM_ADD_RANKS}</a>
				</li>
				<li>
					<a href="${relative_url(ForumUrlBuilder::configuration())}" class="quick-link">${LangLoader::get_message('configuration', 'admin-common')}</a>
				</li>
			</ul>
		</nav>

		<div id="admin-contents">
			<form action="admin_ranks.php" method="post" class="form-horizontal">
				<fieldset>
					<legend>{L_FORUM_RANKS_MANAGEMENT}</legend>
					<div class="table-responsive">
						<table class="table table-bordered table-hover">
							<thead>
								<tr>
									<th>
										{L_RANK_NAME}
									</th>
									<th>
										{L_NBR_MSG}
									</th>
									<th>
										{L_IMG_ASSOC}
									</th>
									<th>
										{L_DELETE}
									</th>
								</tr>
							</thead>
							<tbody>
								# START rank #
								<tr>
									<td>
										<input class="form-control" type="text" name="{rank.ID}name" value="{rank.RANK}">
									</td>
									<td>
										{rank.MSG}
									</td>
									<td>
										<select class="form-control" name="{rank.ID}icon" onchange="img_change('icon{rank.ID}', this.options[selectedIndex].value)">
											{rank.RANK_OPTIONS}
										</select>
										# IF rank.IMG_RANK # <img src="{PATH_TO_ROOT}/forum/templates/images/ranks/{rank.IMG_RANK}" id="icon{rank.ID}" alt="{rank.IMG_RANK}" /> # ENDIF #
									</td>
									<td>
										<span class="btn btn-danger btn-sm">{rank.DELETE}</span>
									</td>
								</tr>
								# END rank #
							</tbody>
						</table>
					</div>
				</fieldset>
				<p class="text-center">
					<button type="submit" name="valid" value="true" class="btn btn-primary">{L_UPDATE}</button>
					<button type="reset" value="true" class="btn btn-default">{L_RESET}</button>
					<input type="hidden" name="token" value="{TOKEN}">
				</p>
			</form>
		</div>
