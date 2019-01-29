		<script>
		<!--
		function check_form(){
			if(document.getElementById('question').value == "") {
				alert("{L_REQUIRE_QUESTION}");
				return false;
		    }
			if(document.getElementById('reponses').value == "") {
				alert("{L_REQUIRE_ANSWER}");
				return false;
		    }

			return true;
		}

		function add_field(i, i_max)
		{
			var i2 = i + 1;

			if( document.getElementById('a'+i) )
				document.getElementById('a'+i).innerHTML = '<input class="form-control mb15" type="text" name="a'+i+'" value="" /><span id="a'+i2+'"></span>';
			if( document.getElementById('v'+i) )
				document.getElementById('v'+i).innerHTML = '<input class="form-control mb15" class="poll-vote" type="text" name="v'+i+'" value="" /><span id="v'+i2+'"></span>';
			if( document.getElementById('s'+i) )
				document.getElementById('s'+i).innerHTML = (i < i_max) ? '<span id="s'+i2+'"><a class="btn btn-success" href="javascript:add_field('+i2+', '+i_max+')" title="${LangLoader::get_message('add', 'common')}"><i class="fa fa-plus"></i></a></span>' : '';
		}
		-->
		</script>

		<nav id="admin-quick-menu">
			<a href="" class="js-menu-button" onclick="open_submenu('admin-quick-menu');return false;" title="{L_POLL_MANAGEMENT}">
				<i class="fa fa-bars"></i> {L_POLL_MANAGEMENT}
			</a>
			<ul>
				<li>
					<a href="admin_poll.php" class="quick-link">{L_POLL_MANAGEMENT}</a>
				</li>
				<li>
					<a href="admin_poll_add.php" class="quick-link">{L_POLL_ADD}</a>
				</li>
				<li>
					<a href="admin_poll_config.php" class="quick-link">{L_POLL_CONFIG}</a>
				</li>
				<li>
					<a href="${relative_url(PollUrlBuilder::documentation())}" class="quick-link">${LangLoader::get_message('module.documentation', 'admin-modules-common')}</a>
				</li>
			</ul>
		</nav>

		<div class="admin-module-poll" id="admin-contents">

			# INCLUDE message_helper #

			<form action="admin_poll_add.php" method="post" onsubmit="return check_form();" class="form-horizontal">
				<p class="center">{L_REQUIRE}</p>
				<fieldset>
					<legend>{L_POLL_ADD}</legend>
					<div class="fieldset-inset">
						<div class="form-group">
							<label class="control-label col-sm-4" for="question">* {L_QUESTION}</label>
							<div class="col-sm-8"><input class="form-control" type="text" id="question" name="question"></div>
						</div>
						<div class="form-group">
							<label class="col-sm-4" for="type">* {L_ANSWERS_TYPE}</label>
							<div class="col-sm-8">
								<label for="type1">
									<input type="radio" name="type" id="type1" value="1" checked="checked">
									{L_SINGLE}
								</label>
								<div class="clearfix"></div>

								<label for="type2">
									<input type="radio" name="type" id="type2" value="0">
									{L_MULTIPLE}
								</label>

							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-4" for="archive">* ${LangLoader::get_message('hidden', 'common')}</label>
							<div class="col-sm-8">
								<label for="archive1">
									<input type="radio" name="archive" id="archive1" value="1">
									{L_YES}
								</label>
								<div class="clearfix"></div>
								<label for="archive2">
									<input type="radio" name="archive" id="archive2" value="0" checked="checked">
									{L_NO}
								</label>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-4" for="a0">* {L_ANSWERS}</label>
							<div class="col-sm-8">
								<div class="table-responsive">
									<table class="table table-bordered table-hover">
										<tbody>
											<tr>
												<td>
													{L_ANSWERS}
												</td>
												<td>
													{L_NUMBER_VOTE}
												</td>
											</tr>
											<tr>
												<td>
													<input class="form-control mb15" type="text" name="a0" id="a0" value="{ANSWER0}" />
													<input class="form-control mb15" type="text" name="a1" value="{ANSWER1}" />
													<input class="form-control mb15" type="text" name="a2" value="{ANSWER2}" />
													<span id="a3"></span>
												</td>
												<td>
													<div class="input-group">
														<input class="form-control mb15" type="text" name="v0" value="{VOTES0}" />
														<div class="input-group-addon">{PERCENT0}</div>
													</div>

													<div class="input-group">
														<input class="form-control mb15" type="text" name="v1" value="{VOTES1}" />
														<div class="input-group-addon">{PERCENT1}</div>
													</div>

													<div class="input-group">
														<input class="form-control mb15" type="text" name="v2" value="{VOTES2}" />
														<div class="input-group-addon">{PERCENT2}</div>
													</div>

													<span id="v3"></span>
												</td>
											</tr>
											<tr>
												<td colspan="2">
													<span id="s3"><a class="btn btn-success" href="javascript:add_field(3, 20)" title="${LangLoader::get_message('add', 'common')}"><i class="fa fa-plus"></i></a></span>
												</td>
											</tr>
										</tbody>
									</table>
								</div>

							</div>
						</div>
					</div>
				</fieldset>

				<fieldset>
					<legend>{L_DATE}</legend>
					<div class="fieldset-inset">
						<div class="form-group">
							<label class="control-label col-sm-4" for="release_date">{L_RELEASE_DATE}</label>
							<div class="col-sm-8">
								<div class="" onclick="document.getElementById('start_end_date').checked = true;">
									<label for"start_end_date">
										<div class="input-group pos-rel">
											<div class="input-group-addon">
												<input type="radio" value="2" name="visible" id="start_end_date" {VISIBLE_WAITING} />
											</div>
											{CALENDAR_START}
											<span class="input-group-addon">
												{L_UNTIL}
											</span>
											{CALENDAR_END}
										</div>
									</label>
								</div>
								<div class="clearfix"></div>
								<label for="release_date">
									<input type="radio" value="1" id="release_date" name="visible" {VISIBLE_ENABLED} />
									{L_IMMEDIATE}
								</label>
								<div class="clearfix"></div>
								<label for="unaprob">
									<input type="radio" value="0" id="unaprob" name="visible" {VISIBLE_UNAPROB} />
									{L_UNAPROB}
								</label>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-4" for="current_date">* {L_POLL_DATE}</label>
							<div class="col-sm-8">
								<div class="input-group">
									{CALENDAR_CURRENT_DATE}
									<div class="input-group-addon">
										{L_AT}
									</div>
									<input class="form-control hours-control" type="number" name="hour" value="{HOUR}" />
									<input class="form-control minutes-control" type="number" name="min" value="{MIN}" />
									<div class="input-group-addon">
										H
									</div>
								</div>

							</div>
						</div>
					</div>
				</fieldset>

				<p class="text-center">
					<button type="submit" name="valid" value="true" class="btn btn-primary">{L_SUBMIT}</button>
					<button type="reset" value="true" class="btn btn-default">{L_RESET}</button>
					<input type="hidden" name="token" value="{TOKEN}">
				</p>
			</form>
		</div>
