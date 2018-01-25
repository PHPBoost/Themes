		<script>
		<!--
		function check_form_convers(){
			if(document.getElementById('login').value == "") {
				alert("{L_REQUIRE_RECIPIENT}");
				return false;
		    }
			if(document.getElementById('contents').value == "") {
				alert("{L_REQUIRE_MESSAGE}");
				return false;
		    }
			if(document.getElementById('title').value == "") {
				alert("{L_REQUIRE_TITLE}");
				return false;
		    }
			return true;
		}
		function check_form_pm(){
			if(document.getElementById('contents').value == "") {
				alert("{L_REQUIRE_MESSAGE}");
				return false;
		    }
			return true;
		}
		function Confirm_pm() {
			return confirm("{L_DELETE_MESSAGE}");
		}
		-->
		</script>


		# START convers #
		<script>
		<!--
			function check_convers(status, id)
			{
				var i;
				for(i = 0; i < {convers.NBR_PM}; i++)
				{
					if( document.getElementById(id + i) )
						document.getElementById(id + i).checked = status;
				}
				document.getElementById('checkall').checked = status;
				document.getElementById('validc').checked = status;
			}
		-->
		</script>
		# INCLUDE message_helper #

		<form action="pm{convers.U_USER_ACTION_PM}" method="post" onsubmit="javascript:return Confirm_pm();">
			<section id="module-user-convers" class="row">
				<div class="col-sm-12">
					<header>
						<h1>{convers.U_PM_BOX}</h1>
					</header>

					<nav class="navbar navbar-default">
						<div class="container-fluid">
							<div class="navbar-header">
								<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#pm-options" aria-expanded="false">
									<span class="sr-only">${LangLoader::get_message('form.options', 'common')}</span>
									<i class="fa fa-bars"></i>
								</button>
								<a href="#" class="navbar-brand visible-xs">${LangLoader::get_message('form.options', 'common')}</a>
							</div>
							<div class="collapse navbar-collapse" id="pm-options">
								<ul class="nav navbar-nav">
									<li>
										<a href="{convers.U_POST_NEW_CONVERS}"><i class="fa fa-plus"></i> {convers.L_POST_NEW_CONVERS}</a>
									</li>
									<li>
										<a href="{convers.U_MARK_AS_READ}"><i class="fa fa-eraser"></i> {convers.L_MARK_AS_READ}</a>
									</li>
								</ul>
								<ul class="nav navbar-nav navbar-right">
									<li>{L_PRIVATE_MSG}: {convers.PM_POURCENT}</li>
								</ul>
							</div>
						</div>
					</nav>

					<div class="table-responsive">
						<table class="table">
							<thead>
								<tr>
									<th>
										<i class="fa fa-envelope"></i>
									</th>
									<th></th>
									<th>
										{L_TITLE}
									</th>
									<th>
										{L_PARTICIPANTS}
									</th>
									<th>
										{L_MESSAGE}
									</th>
									<th>
										{L_LAST_MESSAGE}
									</th>
								</tr>
							</thead>
							<tfoot>
								<tr>
									<td colspan="6">
										<div class="left">&nbsp;<input type="checkbox" id="validc" onclick="check_convers(this.checked, 'd');" title="{L_SELECT_ALL_MESSAGES}" /> &nbsp;<input type="hidden" name="token" value="{TOKEN}"><button type="submit" name="valid" value="true" class="submit">{L_DELETE}</button></div>
										# IF convers.C_PAGINATION #<div class="pull-right"># INCLUDE convers.PAGINATION #</div># ENDIF #
									</td>
								</tr>
							</tfoot>
							<tbody>
								# START convers.list #
								<tr>
									<td>
										<input type="checkbox" id="d{convers.list.INCR}" name="{convers.list.ID}">
									</td>
									<td class="convers-announce">
										<i class="fa fa-envelope {convers.list.ANNOUNCE}"></i>
									</td>
									<td class="convers-title">
										{convers.list.ANCRE} <a href="pm{convers.list.U_CONVERS}">{convers.list.TITLE}</a> <br /><small>{convers.list.U_AUTHOR}</small>
									</td>
									<td>
										{convers.list.U_PARTICIPANTS}
									</td>
									<td>
										{convers.list.MSG}
									</td>
									<td class="small">
										{convers.list.U_LAST_MSG}
									</td>
								</tr>
								# END convers.list #

								# START convers.no_pm #
								<tr>
									<td colspan="6">
										<span class="text-strong">{convers.no_pm.L_NO_PM}</span>
									</td>
								</tr>
								# END convers.no_pm #
							</tbody>
						</table>
					</div>

					<div class="table-responsive">
						<table class="announce-legend">
							<tr>
								<td>
									<i class="fa fa-envelope message-announce"></i> {L_READ}
								</td>
								<td>
									<i class="fa fa-envelope message-announce-track"></i> {L_TRACK}
								</td>
								<td>
									<i class="fa fa-envelope message-announce-new"></i> {L_NOT_READ}
								</td>
							</tr>
						</table>
					</div>
				</div>
				<footer></footer>
			</section>
		</form>
		# END convers #

		# START pm #
		<section id="module-user-pm" class="row">
			<div class="col-sm-12">
				<header>
					<h1>
						<small>{pm.U_PM_BOX} :</small> <p>{pm.U_TITLE_CONVERS}</p>
					</h1>
				</header>


				# IF pm.C_PAGINATION #<div class="pull-right"># INCLUDE pm.PAGINATION #</div># ENDIF #

				# START pm.msg #
				<div class="panel panel-default" id="article-pm-{pm.msg.ID}" class="row">
					<div id="m{pm.msg.ID}" class="panel-heading">
						<div class="row">
							<div class="col-sm-4">
								# IF pm.msg.C_VISITOR #
									<span>{pm.msg.PSEUDO}</span>
								# ELSE #
									<a href="{pm.msg.U_PROFILE}" class="{pm.msg.LEVEL_CLASS}" # IF pm.msg.C_GROUP_COLOR # style="color:{pm.msg.GROUP_COLOR}" # ENDIF #>
										{pm.msg.PSEUDO}
									</a>
								# ENDIF #
							</div>
							<div class="col-sm-8">
								<div class="pull-right text-right">
									<div class="btn-group btn-group-xs">
										<a class="btn btn-info" href="#article-pm-{pm.msg.ID}">\#{pm.msg.ID}</a>
										# IF pm.msg.C_MODERATION_TOOLS #
										<a href="pm.php?edit={pm.msg.ID}" title="{L_EDIT}" class="btn btn-info">
											<i class="fa fa-edit"></i>
										</a>
										<a href="pm.php?del={pm.msg.ID}&amp;token={TOKEN}" title="{L_DELETE}" class="btn btn-danger" data-confirmation="delete-element">
											<i class="fa fa-delete"></i>
										</a>
										# ENDIF #
									</div>
								</div>
								<span class="btn btn-default btn-xs">${LangLoader::get_message('on', 'main')} {pm.msg.DATE_FULL}</span>
							</div>
						</div>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-sm-4">
								<p class="text-center">{pm.msg.L_LEVEL}</p>
								# IF pm.msg.C_AVATAR #
								<p class="text-center">
									<img src="{pm.msg.USER_AVATAR}" title="{pm.msg.USER_PSEUDO}" alt="{pm.msg.USER_PSEUDO}" class="message-avatar" />
								</p>
								# ENDIF #
							</div>
							<div class="col-sm-8">
								{pm.msg.CONTENTS}
							</div>
						</div>
					</div>
				</div>
				# END pm.msg #
			</div>
			<footer>
				# IF pm.C_PAGINATION #<div class="pull-right"># INCLUDE pm.PAGINATION #</div># ENDIF #
			</footer>
		</section>
		# END pm #

		# START post_pm #
		# INCLUDE message_helper #
		<span id="quote"></span>
		<form action="pm{post_pm.U_PM_ACTION_POST}" method="post" onsubmit="return check_form_msg();" class="form-horizontal">
			<legend>{L_RESPOND}</legend>
			<div class="form-group">
				{KERNEL_EDITOR}
				<textarea class="form-control" rows="20" cols="66" id="contents" name="contents">{post_pm.CONTENTS}</textarea>
			</div>
			<div class="text-center">
				<input type="hidden" name="token" value="{TOKEN}">
				<button type="submit" name="pm" value="true" class="btn btn-primary">{L_SUBMIT}</button>
				<button type="button" name="prw" id="prw_pm" class="btn btn-default" onclick="XMLHttpRequest_preview();">{L_PREVIEW}</button>
				<button type="reset" class="btn btn-default" value="true">{L_RESET}</button>
			</div>
		</form>
		# END post_pm #


		# START edit_pm #
		<form action="pm{edit_pm.U_ACTION_EDIT}" method="post" onsubmit="return check_form_convers();" class="form-group">
			<section id="module-user-edit-pm">
				<header>
					<h1>{edit_pm.U_PM_BOX}</h1>
				</header>
				<div class="content">
					<div class="fieldset-content">
						<p class="text-center">{L_REQUIRE}</p>
						<fieldset>
							<legend>{L_EDIT}</legend>
							# START edit_pm.title #
							<div class="form-group">
								<label class="col-sm-4" for="title">* {L_TITLE}</label>
								<div class="col-sm-8"><input class="form-control" type="text" id="title" name="title" value="{edit_pm.title.TITLE}"></div>
							</div>
							# END edit_pm.title #
							<div class="form-group">
								<label for="contents">* {L_MESSAGE}</label>
								{KERNEL_EDITOR}
								<textarea class="form-control" rows="20" id="contents" name="contents">{edit_pm.CONTENTS}</textarea>
							</div>
						</fieldset>

						<div class="text-center">
							<input type="hidden" name="token" value="{TOKEN}">
							<button type="submit" name="{SUBMIT_NAME}" value="{L_SUBMIT}" class="btn btn-primary">{L_SUBMIT}</button>
							<button type="button" name="prw" id="prw_pm" class="btn btn-default" onclick="XMLHttpRequest_preview();">{L_PREVIEW}</button>
							<button type="reset" class="btn btn-default" value="true">{L_RESET}</button>
						</div>
					</div>
				</div>
				<footer></footer>
			</section>
		</form>
		# END edit_pm #


		# START post_convers #
		<form action="pm.php" method="post" onsubmit="return check_form_convers();" class="form-horizontal">
			<section id="module-user-post-convers">
				<header>
					<h1>{post_convers.U_PM_BOX}</h1>
				</header>
				<div class="content">
					# INCLUDE message_helper #

					<div class="fieldset-content">
						<p class="text-center">{L_REQUIRE}</p>
						<fieldset>
							<legend>{L_POST_NEW_CONVERS}</legend>
							# START post_convers.user_id_dest #
							<div class="form-group">
								<label class="control-label col-sm-4" for="login">* {L_RECIPIENT}</label>
								<div class="col-sm-8">
									<div class="input-group">
										<input class="form-control" type="text" id="login" name="login" value="{post_convers.LOGIN}">
										<div class="input-group-btn">
											<button type="button" class="btn btn-primary" value="{L_SEARCH}" onclick="XMLHttpRequest_search_members('', '{THEME}', 'insert_member', '{L_REQUIRE_RECIPIENT}');">{L_SEARCH}</button>
										</div>
									</div>
									<span id="search_img"></span>
									<div id="xmlhttprequest-result-search" style="display:none;" class="xmlhttprequest-result-search"></div>
									# START post_convers.user_id_dest.search #
										{post_convers.user_id_dest.search.RESULT}
									# END post_convers.user_id_dest.search #
								</div>
							</div>
							# END post_convers.user_id_dest #
							<div class="form-group">
								<label class="control-label col-sm-4" for="title">* {L_TITLE}</label>
								<div class="col-sm-8">
									<input type="text" class="form-control" id="title" name="title" value="{post_convers.TITLE}">
								</div>
							</div>
							<div class="form-group">
								<label for="contents">* {L_MESSAGE}</label>
								{KERNEL_EDITOR}
								<textarea class="form-control" rows="25" id="contents" name="contents">{CONTENTS}</textarea>
							</div>
						</fieldset>

						<div class="text-center">
							<input type="hidden" name="token" value="{TOKEN}">
							<button type="submit" name="convers" value="true" class="btn btn-primary">{L_SUBMIT}</button>
							<button type="button" name="prw_convers" id="prw_convers_pm" class="btn btn-default" onclick="XMLHttpRequest_preview();">{L_PREVIEW}</button>
							<button type="reset" class="btn btn-default" value="true">{L_RESET}</button>
						</div>
					</div>
				</div>
				<footer></footer>
			</section>
		</form>
		# END post_convers #
