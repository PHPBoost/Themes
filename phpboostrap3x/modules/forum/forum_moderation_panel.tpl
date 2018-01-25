		# INCLUDE forum_top #

		<article itemscope="itemscope" itemtype="http://schema.org/Creativework" id="article-forum-moderation-panel">
			<header>
				<h2>
					<a href="index.php" title="{FORUM_NAME}">{FORUM_NAME}</a> &raquo; <a href="moderation_forum.php" title="{L_MODERATION_FORUM}">{L_MODERATION_FORUM}</a> {U_MODERATION_FORUM_ACTION}
				</h2>
			</header>
			<div class="row text-center mtb15">
				<div class="col-sm-4">
					<a href="moderation_forum.php?action=warning" title="{L_USERS_WARNING}">
						<i class="fa fa-warning fa-2x"></i>
						<p>{L_USERS_WARNING}</p>
					</a>
				</div>
				<div class="col-sm-4">
					<a href="moderation_forum.php?action=punish" title="{L_USERS_PUNISHMENT}">
						<i class="fa fa-error fa-2x"></i>
						<p>{L_USERS_PUNISHMENT}</p>
					</a>
				</div>
				<div class="col-sm-4">
					<a href="moderation_forum.php?action=alert" title="{L_ALERT_MANAGEMENT}">
						<i class="fa fa-forbidden fa-2x"></i>
						<p>{L_ALERT_MANAGEMENT}</p>
					</a>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12">
					# IF C_FORUM_MODO_MAIN #
					<script>
					<!--

					function Confirm_history()
					{
						return confirm("{L_DEL_HISTORY}");
					}
					-->
					</script>
					<form class="form-horizontal" action="moderation_forum{U_ACTION_HISTORY}" method="post" onsubmit="javascript:return Confirm_history();">
						<table id="table2">
							<caption>
								{L_HISTORY}
							</caption>
							<thead>
								<tr>
									<th>
										{L_MODO}
									</th>
									<th>
										{L_ACTION}
									</th>
									<th>
										{L_USER_CONCERN}
									</th>
									<th class="forum-last-topic">
										{L_DATE}
									</th>
								</tr>
							</thead>
							<tfoot>
								<tr>
									<td colspan="4">
										# IF C_FORUM_ADMIN #
										<span class="pull-left"><button type="submit" name="valid" value="true" class="btn btn-primary">{L_DELETE}</button></span>
										# ENDIF #
										# IF C_DISPLAY_LINK_MORE_ACTION #
										<a href="moderation_forum{U_MORE_ACTION}" title="{L_MORE_ACTION}">{L_MORE_ACTION}</a>
										# ENDIF #
									</td>
								</tr>
							</tfoot>
							<tbody>
							# START action_list #
							<tr>
								<td class="forum-last-topic">
									<a href="{action_list.U_USER_PROFILE}" class="{action_list.LEVEL_CLASS}" # IF action_list.C_GROUP_COLOR # style="color:{action_list.GROUP_COLOR}" # ENDIF # title="{action_list.LOGIN}">{action_list.LOGIN}</a>
								</td>
								<td>
									{action_list.U_ACTION}
								</td>
								<td class="forum-last-topic">
									{action_list.U_USER_CONCERN}
								</td>
								<td class="forum-last-topic">
									{action_list.DATE}
								</td>
							</tr>
							# END action_list #
							# IF C_FORUM_NO_ACTION #
							<tr>
								<td colspan="4">
									{L_NO_ACTION}
								</td>
							</tr>
							# ENDIF #
							</tbody>
						</table>
						<input type="hidden" name="token" value="{TOKEN}">
					</form>
					# ENDIF #


					# IF C_FORUM_ALERTS #
					<script>
					<!--
					function check_alert(status)
					{
						for (i = 0; i < document.alert.length; i++)
							document.alert.elements[i].checked = status;
					}
					-->
					</script>

					<form class="form-horizontal" name="alert" action="moderation_forum{U_ACTION_ALERT}" method="post" onsubmit="javascript:return Confirm_alert();">

						<div class="table-responsive">
							<table class="table">
								<thead>
									<tr>
										<th class="td25"><input type="checkbox" onclick="if(this.checked) {check_alert(true)} else {check_alert(false)};"></th>
										<th class="td20P">{L_TITLE}</th>
										<th class="td20P">{L_TOPIC}</th>
										<th class="td100">{L_STATUS}</th>
										<th class="td70">{L_LOGIN}</th>
										<th class="td70">{L_TIME}</th>
									</tr>
								</thead>
								<tfoot>
									<tr>
										<td colspan="6">
											<button type="submit" name="" value="true" class="btn btn-primary">{L_DELETE}</button>
										</td>
									</tr>
								</tfoot>
								<tbody>
									# START alert_list #
									<tr>
										<td class="td25">
											<input type="checkbox" name="a{alert_list.ID}">
										</td>
										<td class="td20P">
											{alert_list.TITLE} {alert_list.EDIT}
										</td>
										<td class="td20P">
											{alert_list.TOPIC}
										</td>
										<td class="td100" style="{alert_list.BACKGROUND_COLOR}">
											{alert_list.STATUS}
										</td>
										<td class="td70">
											{alert_list.LOGIN}
										</td>
										<td class="td70">
											{alert_list.TIME}
										</td>
									</tr>
									# END alert_list #

									# IF C_FORUM_NO_ALERT #
									<tr>
										<td colspan="6">
											{L_NO_ALERT}
										</td>
									</tr>
									# ENDIF #
								</tbody>
							</table>
						</div>

						<input type="hidden" name="token" value="{TOKEN}">
					</form>
					# ENDIF #


					# IF C_FORUM_ALERT_LIST #
					<div class="table-responsive">
						<table class="table">
							<thead>
								<tr>
									<th colspan="2">
										{TOPIC}
									</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="td25P">{L_TITLE}</td>
									<td>{TITLE}</td>
								</tr>
								<tr>
									<td>{L_TOPIC}</td>
									<td>{TOPIC}</td>
								</tr>
								<tr>
									<td>{L_CAT}</td>
									<td>{CAT}</td>
								</tr>
								<tr>
									<td>{L_CONTENTS}</td>
									<td>{CONTENTS}</td>
								</tr>
								<tr>
									<td>{L_STATUS}</td>
									<td>{STATUS}</td>
								</tr>
								<tr>
									<td>{L_LOGIN}</td>
									<td>{LOGIN}</td>
								</tr>
								<tr>
									<td>{L_TIME}</td>
									<td>{TIME}</td>
								</tr>
							</tbody>
						</table>
					</div>

					<form action="{U_CHANGE_STATUS}" method="post">
						<p class="text-center">
							<button type="submit" name="valid" value="true" class="btn btn-primary">{L_CHANGE_STATUS}</button>
							<input type="hidden" name="token" value="{TOKEN}">
						</p>
					</form>
					# ENDIF #

					# IF C_FORUM_ALERT_NOT_AUTH #
					<div class="table-responsive">
						<table class="table">
							<thead>
								<tr>
									<th colspan="2">
										{L_MODERATION_FORUM} : {L_ALERT_MANAGEMENT}
									</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td colspan="2">
										{L_NO_ALERT}
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					# ENDIF #

					# IF C_FORUM_USER_LIST #
					<script>
					<!--
						function XMLHttpRequest_search()
						{
							var login = document.getElementById('login').value;
							if( login != '' )
							{
								if( document.getElementById('search_img') )
									document.getElementById('search_img').innerHTML = '<i class="fa fa-spinner fa-spin"></i>';
								data = 'login=' + login;
								var xhr_object = xmlhttprequest_init('xmlhttprequest.php?token={TOKEN}&{U_XMLHTTPREQUEST}=1');
								xhr_object.onreadystatechange = function()
								{
									if( xhr_object.readyState == 4 && xhr_object.status == 200 )
									{
										document.getElementById('xmlhttprequest-result-search').innerHTML = xhr_object.responseText;
										hide_div('xmlhttprequest-result-search');
										if( document.getElementById('search_img') )
											document.getElementById('search_img').innerHTML = '';
									}
									else if( xhr_object.readyState == 4 )
									{
										if( document.getElementById('search_img') )
											document.getElementById('search_img').innerHTML = '';
									}
								}
								xmlhttprequest_sender(xhr_object, data);
							}
							else
								alert("{L_REQUIRE_LOGIN}");
						}

						function hide_div(divID)
						{
							if( document.getElementById(divID) )
								document.getElementById(divID).style.display = 'block';
						}
						-->
					</script>

					<form class="form-horizontal" action="moderation_forum{U_ACTION}" method="post">
						<table class="table">
							<tr>
								<td>
									<div class="input-group">
										<span class="input-group-addon">
											{L_SEARCH_USER}
										</span>
										<input class="form-control" type="text" id="login" name="login">
									</div>
									<span id="search_img"></span>
									<span>
										<button type="submit" id="search_member" name="search_member" class="btn btn-primary">{L_SEARCH}</button>
										<script>
										<!--
											document.getElementById('search_member').style.display = 'none';
											document.write('<button onclick="XMLHttpRequest_search();" type="button">{L_SEARCH}</button>');
										-->
										</script>
										<div id="xmlhttprequest-result-search" style="display:none;" class="xmlhttprequest-result-search"></div>
									</span>
								</td>
							</tr>
						</table>
						<div class="table-responsive">
							<table class="table">
								<thead>
									<tr>
										<th class="td25P">{L_LOGIN}</th>
										<th class="td25P">{L_INFO}</th>
										<th class="td25P">{L_ACTION_USER}</th>
										<th class="td25P">{L_PM}</th>
									</tr>
								</thead>
								<tbody>
									# START user_list #
									<tr>
										<td class="td25P">
											<a href="{user_list.U_PROFILE}" class="{user_list.LEVEL_CLASS}" # IF user_list.C_GROUP_COLOR # style="color:{user_list.GROUP_COLOR}" # ENDIF # title="{user_list.LOGIN}">{user_list.LOGIN}</a>
										</td>
										<td class="td25P">
											{user_list.INFO}
										</td>
										<td class="td25P">
											{user_list.U_ACTION_USER}
										</td>
										<td class="td25P">
											<a href="{user_list.U_PM}" class="btn btn-pbt btn-xs" title="MP">MP</a>
										</td>
									</tr>
									# END user_list #

									# IF C_FORUM_NO_USER #
									<tr>
										<td colspan="4">
											{L_NO_USER}
										</td>
									</tr>
									# ENDIF #
								</tbody>
							</table>
						</div>
						<input type="hidden" name="token" value="{TOKEN}">
					</form>
					# ENDIF #


					# IF C_FORUM_USER_INFO #
					<script>
					<!--
					function change_textarea_level(replace_value, regex)
					{
						var contents = document.getElementById('action_contents').value;
						{REPLACE_VALUE}
						document.getElementById('action_contents').value = contents;

						# IF C_TINYMCE_EDITOR # setTinyMceContent(contents); # ENDIF #
					}
					-->
					</script>
					<div class="col-sm-12">
						<form class="form-horizontal" action="moderation_forum{U_ACTION_INFO}" method="post">
							<div class="table-responsive">
								<table class="table">
									<thead>
										<tr>
											<th>
												${LangLoader::get_message('description', 'main')}
											</th>
											<th>
												${LangLoader::get_message('display_name', 'user-common')}
											</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="td33P">
												{L_LOGIN}
											</td>
											<td>
												{LOGIN}
											</td>
										</tr>
										<tr>
											<td class="td33P">
												{L_PM}
											</td>
											<td>
												<a href="{U_PM}" class="btn btn-pbt" title="MP">MP</a>
											</td>
										</tr>
									</tbody>
								</table>
							</div>

							<div class="alert alert-info">{L_ALTERNATIVE_PM}</div>
							<div>
								{KERNEL_EDITOR}
								<textarea rows="6" class="form-control" name="action_contents" id="action_contents">{ALTERNATIVE_PM}</textarea>
							</div>
							<div>
								<label class="control-label col-sm-12" for="new_info">{L_INFO_EXPLAIN}</label>
								<div class="col-sm-12">
									<div class="input-group">
										<span class="input-group-addon" id="action_info">{INFO}</span>
										<select class="form-control" name="new_info" id="new_info" onchange="change_textarea_level(this.options[this.selectedIndex].value, {REGEX})">
											{SELECT}
										</select>
										<span class="input-group-btn">
											<button type="submit" name="valid_user" value="true" class="btn btn-primary">{L_CHANGE_INFO}</button>
										</span>
									</div>
									<input type="hidden" name="token" value="{TOKEN}">
								</div>

							</div>
						</form>
					</div>

					# ENDIF #
				</div>
			</div>



			<footer>
				<a href="index.php" title="{FORUM_NAME}">{FORUM_NAME}</a> &raquo; <a href="moderation_forum.php" title="{L_MODERATION_FORUM}">{L_MODERATION_FORUM}</a> {U_MODERATION_FORUM_ACTION}
			</footer>
		</article>


		# INCLUDE forum_bottom #
