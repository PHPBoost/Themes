<nav id="admin-quick-menu">
		<a href="" class="js-menu-button" onclick="open_submenu('admin-quick-menu');return false;" title="{L_WIKI_MANAGEMENT}">
				<i class="fa fa-bars"></i> {L_WIKI_MANAGEMENT}
		</a>
		<ul>
				<li>
					<a href="admin_wiki.php" class="quick-link">{L_CONFIG_WIKI}</a>
				</li>
				<li>
					<a href="admin_wiki_groups.php" class="quick-link">{L_WIKI_GROUPS}</a>
				</li>
				<li>
				<a href="${relative_url(WikiUrlBuilder::documentation())}" class="quick-link">${LangLoader::get_message('module.documentation', 'admin-modules-common')}</a>
				</li>
		</ul>
</nav>

<div id="admin-contents">
	<form action="admin_wiki_groups.php" method="post" class="form-horizontal">
		<fieldset>
			<legend>{L_WIKI_GROUPS}</legend>
			<div class="fieldset-inset mb15">
				{EXPLAIN_WIKI_GROUPS}

				<div class="form-group">
					<label class="col-sm-4">{L_CREATE_ARTICLE}</label>

					<div class="col-sm-8">
						{SELECT_CREATE_ARTICLE}
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-4">{L_CREATE_CAT}</label>

					<div class="col-sm-8">
						{SELECT_CREATE_CAT}
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-4">{L_RESTORE_ARCHIVE}</label>

					<div class="col-sm-8">
						{SELECT_RESTORE_ARCHIVE}
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-4">{L_DELETE_ARCHIVE}</label>

					<div class="col-sm-8">
						{SELECT_DELETE_ARCHIVE}
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-4">{L_EDIT}</label>

					<div class="col-sm-8">
						{SELECT_EDIT}
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-4">{L_DELETE}</label>

					<div class="col-sm-8">
						{SELECT_DELETE}
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-4">{L_RENAME}</label>

					<div class="col-sm-8">
						{SELECT_RENAME}
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-4">{L_REDIRECT}</label>

					<div class="col-sm-8">
						{SELECT_REDIRECT}
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-4">{L_MOVE}</label>

					<div class="col-sm-8">
						{SELECT_MOVE}
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-4">{L_STATUS}</label>

					<div class="col-sm-8">
						{SELECT_STATUS}
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-4">{L_COM}</label>

					<div class="col-sm-8">
						{SELECT_COM}
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-4">{L_RESTRICTION}</label>

					<div class="col-sm-8">
						{SELECT_RESTRICTION}
					</div>
				</div>
			</div>
		</fieldset>

		<p class="text-center">
			<button type="submit" name="valid" value="true" class="btn btn-primary">{L_UPDATE}</button>
			<button type="reset" value="true" class="btn btn-default">{L_RESET}</button>
			<input type="hidden" name="token" value="{TOKEN}">
		</p>
	</form>
</div>
