		<script>
		<!--
			var path = '{PICTURES_DATA_PATH}';
			var selected_cat = {SELECTED_CAT};
			function check_form_post(){
				if(document.getElementById('title') && document.getElementById('title').value == "") {
					alert("{L_ALERT_TITLE}");
					return false;
				}
				if(document.getElementById('contents').value == "") {
					alert("{L_ALERT_CONTENTS}");
					return false;
				}
				return true;
			}
			var disabled = {OWN_AUTH_DISABLED};
			function disable_own_auth()
			{
				if( disabled )
				{
					disabled = false;
					jQuery("#own_auth_display").show();
				}
				else
				{
					jQuery("#own_auth_display").hide();
					disabled = true;
				}
			}
		-->
		</script>

		<script src="{PATH_TO_ROOT}/pages/templates/js/pages.js"></script>

		# INCLUDE message_helper #

		# START previewing #
		<article>
			<header>
				<h1>{L_PREVIEWING} {previewing.TITLE}</h1>
			</header>
			<div class="content">{previewing.PREVIEWING}</div>
			<footer></footer>
		</article>
		# END previewing #

		<form action="post.php" method="post" onsubmit="return check_form_post();" class="form-horizontal">
			<fieldset>
				<legend>{L_TITLE_POST}</legend>
				# START create #
				<div class="form-group">
					<label class="control-label col-sm-4" for="title">* {L_TITLE_FIELD}</label>
					<div class="col-sm-8">
						<input id="title" class="form-control" type="text" name="title" class="field-large" value="{PAGE_TITLE}">
					</div>
				</div>
				# END create #
				<div class="form-group">
					<div class="col-sm-12">
						<label for="contents">* {L_CONTENTS}</label>
						{KERNEL_EDITOR}
						<textarea class="form-control" rows="25" id="contents" name="contents">{CONTENTS}</textarea>
					</div>
				</div>

			</fieldset>

			<fieldset>
				<legend>{L_PATH}</legend>
				<div class="form-group">
					<label class="col-sm-4" for="is_cat">{L_IS_CAT}</label>
					<div class="col-sm-8"><input type="checkbox" name="is_cat" id="is_cat" {CHECK_IS_CAT}></div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-4">{L_CAT}</label>
					<div class="col-sm-8">
						<input type="hidden" name="id_cat" id="id_cat" value="{ID_CAT}"/>
						<ul id="category-pages">
							<li><a id="class-0" class="{CAT_0}" href="javascript:select_cat(0);"><i class="fa fa-folder"></i>{L_ROOT}</a></li>
							{CAT_LIST}
						</ul>
					</div>
				</div>
			</fieldset>

			<fieldset>
				<legend>{L_PROPERTIES}</legend>
				<div class="form-group">
					<label class="col-sm-4" for="count_hits">{L_COUNT_HITS}</label>
					<div class="col-sm-8"><label><input type="checkbox" id="count_hits" name="count_hits" {COUNT_HITS_CHECKED}></label></div>
				</div>
				<div class="form-group">
					<label class="col-sm-4" for="comments_activated">{L_COMMENTS_ACTIVATED}</label>
					<div class="col-sm-8"><label><input type="checkbox" id="comments_activated" name="comments_activated" {COMMENTS_ACTIVATED_CHECKED}></label></div>
				</div>
				<div class="form-group">
					<label class="col-sm-4" for="display_print_link">{L_DISPLAY_PRINT_LINK}</label>
					<div class="col-sm-8"><label><input type="checkbox" id="display_print_link" name="display_print_link" {DISPLAY_PRINT_LINK_CHECKED}></label></div>
				</div>
			</fieldset>

			<fieldset>
				<legend>{L_AUTH}</legend>
				<div class="form-group">
					<label class="col-sm-4" for="own_auth">{L_OWN_AUTH}</label>
					<div class="col-sm-8"><label><input type="checkbox" name="own_auth" id="own_auth" onclick="disable_own_auth();" {OWN_AUTH_CHECKED}></label></div>
				</div>
				<span id="own_auth_display" style="{DISPLAY}">
					<div class="form-group">
						<label class="control-label col-sm-4">{L_READ_PAGE}</label>
						<div class="col-sm-8">{SELECT_READ_PAGE}</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-4">{L_EDIT_PAGE}</label>
						<div class="col-sm-8">{SELECT_EDIT_PAGE}</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-4">{L_READ_COM}</label>
						<div class="col-sm-8">{SELECT_READ_COM}</div>
					</div>
				</span>
			</fieldset>

			<p class="text-center">
				<input type="hidden" name="id_edit" value="{ID_EDIT}">
				<input type="hidden" name="token" value="{TOKEN}">
				<button type="submit" class="btn btn-primary">{L_SUBMIT}</button>
				<button type="submit" name="preview" value="preview" class="btn btn-default">{L_PREVIEW}</button>
				<button type="reset" class="btn btn-default">{L_RESET}</button>
			</p>
		</form>
		<script>
		$(function () {
			$('#category-pages').metisMenu({
				toggle: true,
				preventDefault: true,
				activeClass: 'active',
				collapseClass: 'collapse',
				collapseInClass: 'in',
				collapsingClass: 'collapsing',
				triggerElement: 'a',
				parentTrigger: 'li',
				subMenu: 'ul'
				onTransitionStart: false,
				onTransitionEnd: false
			});
		});
		</script>
