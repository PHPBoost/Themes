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
				if(document.getElementById('type').value == "") {
				alert("{L_REQUIRE_ANSWER_TYPE}");
				return false;
		    }

			return true;
		}

		function add_field(i, i_max)
		{
			var i2 = i + 1;

			if( document.getElementById('a'+i) )
				document.getElementById('a'+i).innerHTML = '<input class="form-control" type="text" name="a'+i+'" value="" /><span id="a'+i2+'"></span>';
			if( document.getElementById('v'+i) )
				document.getElementById('v'+i).innerHTML = '<div class="input-group"><input class="form-control" type="text" name="v'+i+'" value="" /> <div class="input-group-addon">0.0%</div></div><span id="v'+i2+'"></span>';
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
			</ul>
		</nav>

		<div class="admin-module-poll" id="admin-contents">
			# INCLUDE message_helper #

			<form action="admin_poll.php" method="post" onsubmit="return check_form();" class="form-horizontal">
				<p class="text-center">{L_REQUIRE}</p>
				<fieldset>
					<legend>{L_POLL_MANAGEMENT}</legend>
					<div class="fieldset-inset">
						<div class="form-group">
							<label class="control-label col-sm-4" for="question">* {L_QUESTION}</label>
							<div class="col-sm-8"><input class="form-control" type="text" id="question" name="question" value="{QUESTIONS}" /></div>
						</div>
						<div class="form-group">
							<label class="col-sm-4" for="type">* {L_ANSWER_TYPE}</label>
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
									<input type="radio" name="archive" {ARCHIVES_ENABLED} id="archive1" value="1">
									{L_YES}
								</label>
								<div class="clearfix"></div>
								<label for="archive2">
									<input type="radio" name="archive" {ARCHIVES_DISABLED} id="archive2" value="0">
									{L_NO}
								</label>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-4">* {L_ANSWERS}</label>
							<div class="col-sm-8">
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
												# START answers #
												<input class="form-control mb15" type="text" name="a{answers.ID}" value="{answers.ANSWER}" />
												# END answers #
												<span id="a{MAX_ID}"></span>
											</td>
											<td>
												# START votes #
												<div class="input-group">
													<input class="form-control" type="text" name="v{votes.ID}" value="{votes.VOTES}" />
													<div class="input-group-addon">{votes.PERCENT}</div>
												</div>
												# END votes #
												<span id="v{MAX_ID}"></span>
											</td>
										</tr>
										<tr>
											<td colspan="2">
												<script>
												<!--
													if( {MAX_ID} < 19 )
														document.write('<span id="s{MAX_ID}"><a class="btn btn-success" href="javascript:add_field({MAX_ID}, 19)" title="${LangLoader::get_message('add', 'common')}"><i class="fa fa-plus"></i></a></span>');
												-->
												</script>

											</td>
										</tr>
									</tbody>
								</table>
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
								<div onclick="document.getElementById('start_end_date').checked = true;">
									<div class="input-group">
										<div class="input-group-addon">
											<input type="radio" value="2" name="visible" id="start_end_date" {VISIBLE_WAITING} />
										</div>
										{CALENDAR_START}
										<div class="input-group-addon">
											{L_UNTIL}
										</div>
										{CALENDAR_END}
									</div>
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
							<label class="col-sm-4" for="current_date">* {L_POLL_DATE}</label>
							<div class="col-sm-8">
								<div class="input-group">
									{CALENDAR_CURRENT_DATE}
									<input class="form-control hours-control" type="number" name="hour" value="{HOUR}" />
									<input class="form-control minutes-control" type="number" name="min" value="{MIN}" />
									<div class="input-group-addon">H</div>
								</div>

							</div>
						</div>
					</div>
				</fieldset>

				<p class="text-center">
					<input type="hidden" name="id" value="{IDPOLL}">
					<input type="hidden" name="token" value="{TOKEN}">
					<button type="submit" name="valid" value="true" class="btn btn-primary">{L_UPDATE}</button>
					<button type="reset" value="true" class="btn btn-default">{L_RESET}</button>
				</p>
			</form>
		</div>
