		# INCLUDE forum_top #

		<script>
		<!--
		function check_form_move(){
			if(document.getElementById('to').value == "") {
				alert("{L_SELECT_SUBCAT}");
				return false;
			}
			return true;
		}
		-->
		</script>

		<article itemscope="itemscope" itemtype="http://schema.org/Creativework" id="article-forum-move">
			<header>
				<h2>{U_FORUM_CAT} &raquo; {U_TITLE_T}</h2>
			</header>

			<div class="content">
				<form method="post" action="move.php" onsubmit="javascript:return check_form_move();" class="form-horizontal">
					<fieldset>
						<legend>{L_MOVE_SUBJECT} : {TITLE}</legend>
						<div class="form-group">
							<label class="col-sm-4 control-label" for="to">{L_CAT}</label>
							<div class="col-sm-8">
							   <select class="form-control" id="to" name="to">
									{CATEGORIES}
								</select>
							</div>
						</div>
					</fieldset>

					<p class="text-center">
						<input type="hidden" name="id" value="{ID}">
						<input type="hidden" name="token" value="{TOKEN}">
						<button type="submit" name="submit" value="true" class="btn btn-primary">{L_SUBMIT}</button>
					</p>
				</form>
			</div>
			<footer>{U_FORUM_CAT} &raquo; {U_TITLE_T}</footer>
		</article>

		# INCLUDE forum_bottom #
