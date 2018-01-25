		<script>
		<!--
			var path = '{PICTURES_DATA_PATH}';
			var selected_cat = {SELECTED_CAT};
		-->
		</script>
		<script src="{PICTURES_DATA_PATH}/js/wiki.js"></script>

<section id="module-wiki">
	<header></header>
	<div class="explorer row">
		<div class="col-sm-6">
			<h2>{TITLE}</h2>
			<ul class="wiki-cats">
				<li><a id="class-0" class="{CAT_0}" href="javascript:open_cat(0);"><i class="fa fa-folder"></i> {L_ROOT}</a>
					<ul>
						# START list #
						<li class="sub">
							# IF list.U_FOLDER #
								<a class="parent" href="javascript:show_wiki_cat_contents({list.ID}, 0);"><i class="fa fa-plus-square-o" id="img-subfolder-{list.ID}"></i><i id="img-folder-{list.ID}" class="fa fa-folder"></i></a>
								<a id="class-{list.ID}" href="javascript:open_cat({list.ID});">{list.TITLE}</a>
							# ELSE #
								<a id="class-{list.ID}" href="javascript:open_cat({list.ID});"><i class="fa fa-folder"></i>{list.TITLE}</a>
							# ENDIF #
							<span id="cat-{list.ID}"></span>
						</li>
						# END list #
						{CAT_LIST}
					</ul>
				</li>
			</ul>
		</div>
		<div class="col-sm-6">
			<h2>{L_CATS}</h2>
			<div id="cat-contents">
				<ul class="wiki-cats">
					# START list_cats #
					<li>
						<a class="explorer-list-cat-link" href="javascript:open_cat({list_cats.KEY}); show_wiki_cat_contents({list_cats.ID_PARENT}, 0);"><i class="fa fa-folder"></i>{list_cats.TITLE}</a>
					</li>
					# END list_cats #
					# START list_files #
					<li>
						<a class="explorer-list-file-link" href="{list_files.URL_FILE}"><i class="fa fa-file"></i>{list_files.TITLE}</a>
					</li>
					# END list_files #
				</ul>
			</div>
		</div>
	</div>
	<footer></footer>
</section>
