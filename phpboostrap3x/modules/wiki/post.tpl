		<script>
		<!--
			var path = '{PICTURES_DATA_PATH}';
			var selected_cat = {SELECTED_CAT};
			function check_form_post(){

				if(document.getElementById('title').value == "") {
					alert("{L_ALERT_TITLE}");
					return false;
				}
				if(document.getElementById('contents').value == "") {
					alert("{L_ALERT_CONTENTS}");
					return false;
				}
				return true;
			}
		-->
		</script>

		# START preview #
		<article>
			<header>
				<h1>{L_PREVIEWING}: {preview.TITLE}</h1>
			</header>
			<div class="content" id="preview">
				# START preview.menu #
					<div class="wiki-summary">
						<div class="wiki-summary-title">{L_TABLE_OF_CONTENTS}</div>
						{preview.menu.MENU}
					</div>
				# END preview.menu #
				<br /><br />
				{preview.CONTENTS}
			</div>
			<footer></footer>
		</article>
		# END preview #

		# INCLUDE message_helper #

		<form action="{TARGET}" method="post" onsubmit="return check_form_post();" class="form-horizontal">
			<p class="center">{L_REQUIRE}</p>
			<fieldset>
				<legend>{TITLE}</legend>
				# START create #
				<div class="form-group">
					<label class="control-label col-sm-4" for="title">* {L_TITLE_FIELD}</label>
					<div class="col-sm-8">
						<input type="text" id="title" name="title" class="form-control" value="{ARTICLE_TITLE}">
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-4">{L_CURRENT_CAT}</label>
					<div class="col-sm-8">
						<input type="hidden" name="id_cat" id="id_cat" value="{ID_CAT}"/>
						<div id="selected_cat">{CURRENT_CAT}</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-4">{L_CAT}</label>
					<div class="col-sm-8">
						<ul class="wiki-cats">
							<li><a class="{CAT_0}" id="class-0" href="javascript:select_cat(0);"><i class="fa fa-folder"></i>{L_DO_NOT_SELECT_ANY_CAT}</a>
								<ul>
									# START create.list #
									<li class="sub">
										# IF create.list.C_SUB_CAT #
										<a class="parent" href="javascript:show_wiki_cat_contents({create.list.ID}, 1);" title="${LangLoader::get_message('display', 'common')}">
											<i class="fa fa-plus-square-o" id="img-subfolder-{create.list.ID}"></i>
											<i class="fa fa-folder" id ="img-folder-{create.list.ID}"></i>
										</a>
										<a id="class-{create.list.ID}" href="javascript:select_cat({create.list.ID});">{create.list.TITLE}</a>
										# ELSE #
										<a id="class-{create.list.ID}" href="javascript:select_cat({create.list.ID});"><i class="fa fa-folder"></i>{create.list.TITLE}</a>
										# ENDIF #
										<span id="cat-{create.list.ID}"></span>
									</li>
									# END create.list #
									{CAT_LIST}
								</ul>
							</li>
						</ul>
					</div>
				</div>
				# END create #

				<div class="col-sm-12 form-group">
					<label for="contents">* {L_CONTENTS}</label>
					# INCLUDE post_js_tools #
					{KERNEL_EDITOR}
						<textarea class="form-control" rows="25" id="contents" name="contents">{CONTENTS}</textarea>
				</div>
				# IF C_VERIF_CODE #
				<div class="form-group">
					<label class="col-sm-4" for="captcha">* ${LangLoader::get_message('form.captcha', 'common')}</label>
					<div class="col-sm-8">
						{VERIF_CODE}
					</div>
				</div>
				<script>
				<!--
				jQuery(document).ready(function() {
					jQuery('button[name="submit"]').click(function()
					{
						if(!jQuery('#captcha').val() && !jQuery('#g-recaptcha-response').val()) {
							alert(${escapejs(LangLoader::get_message('captcha.validation_error', 'status-messages-common'))});
							return false;
						}
					});
				});
				-->
				</script>
				# ENDIF #
			</fieldset>

			<p class="text-center">
				<input type="hidden" name="is_cat" value="{IS_CAT}">
				<input type="hidden" name="id_edit" value="{ID_EDIT}">
				<input type="hidden" name="token" value="{TOKEN}">
				<button type="submit" name="submit" class="btn btn-primary">{L_SUBMIT}</button>
				<button type="submit" name="preview" value="preview" class="btn btn-default">{L_PREVIEW}</button>
				<button type="reset" class="btn btn-default">{L_RESET}</button>
			</p>

		</form>
