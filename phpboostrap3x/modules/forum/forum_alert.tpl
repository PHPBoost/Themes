		# INCLUDE forum_top #

		<article itemscope="itemscope" itemtype="http://schema.org/Creativework" id="article-forum-moderation">
			<header>
				<h2>{U_FORUM_CAT} &raquo; {U_TITLE_T} <span><em>{DESC}</em></span> &raquo; <a href="">{L_ALERT}</a></h2>
			</header>

			# START alert_form #
				<script>
				<!--
				function check_form_alert(){
					if(document.getElementById('contents').value == "") {
						alert("{L_REQUIRE_TEXT}");
						return false;
					}
					if(document.getElementById('title').value == "") {
						alert("{L_REQUIRE_TITLE}");
						return false;
					}
					return true;
				}
				-->
				</script>

				<form class="form-horizontal" method="post" action="alert.php" onsubmit="javascript:return check_form_alert();">
					<fieldset>
						<legend>{L_ALERT}</legend>

						<div id="id-message-helper" class="alert alert-info">
							{L_ALERT_EXPLAIN}: <br /><a title="{alert_form.TITLE}" href="{alert_form.U_TOPIC}">{alert_form.TITLE}</a>
						</div>
						<div class="form-group">
							<label class="col-sm-4 control-label" for="title">* {L_ALERT_TITLE}</label>
							<div class="col-sm-8">
								<input type="text" name="title" id="title" class="form-control">
							</div>
						</div>
						<div class="form-element-textarea">
							<label for="contents">* {L_ALERT_CONTENTS}</label>
							{KERNEL_EDITOR}
							<textarea class="form-control" rows="15" cols="40" id="contents" name="contents"></textarea>
							<input type="hidden" name="id" value="{alert_form.ID_ALERT}">
						</div>
					</fieldset>

					<p class="text-center">
							<button type="submit" name="edit_msg" value="true" class="btn btn-primary">{L_SUBMIT}</button>
							<button onclick="XMLHttpRequest_preview();" type="button" class="btn btn-default">{L_PREVIEW}</button>
							<button type="reset" value="true" class="btn btn-default">{L_RESET}</button>
							<input type="hidden" name="token" value="{TOKEN}">
					</p>
				</form>
				# END alert_form #


				# START alert_confirm #
				<fieldset>
					<legend>{L_ALERT}</legend>
					<div class="alert alert-success">
						{alert_confirm.MSG}
						<br /><br />
						<div class="text-center"><a href="{URL_TOPIC}">{L_BACK_TOPIC}</a></div>
					</div>
				</fieldset>
				# END alert_confirm #
			<footer>{U_FORUM_CAT} &raquo; {U_TITLE_T} <span><em>{DESC}</em></span> &raquo; <a href="">{L_ALERT}</a></footer>
		</article>

		# INCLUDE forum_bottom #
