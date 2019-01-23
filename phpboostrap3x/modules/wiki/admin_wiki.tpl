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
    <form action="admin_wiki.php?token={TOKEN}" method="post" class="form-horizontal">
        <fieldset>
            <legend>{L_WHOLE_WIKI}</legend>
            <div class="fieldset-inset">
                <div class="form-group">
                    <label class="control-label col-sm-4" for="wiki_name">{L_WIKI_NAME}</label>
                    <div class="col-sm-8">
                        <input class="form-control" type="text" id="wiki_name" name="wiki_name" value="{WIKI_NAME}" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-4" for="hits_counter">{L_HITS_COUNTER}</label>
                    <div class="col-sm-8">
                        <label for="hits_counter">
                            <input type="checkbox" name="hits_counter" id="hits_counter" {HITS_SELECTED} />
                        </label>
                    </div>
                </div>
            </div>		</fieldset>		<fieldset>			<legend>{L_INDEX_WIKI}</legend>			<div class="fieldset-inset">				<div class="form-group">					<label class="col-sm-4" for="display_cats">{L_DISPLAY_CATEGORIES_ON_INDEX}</label>					<div class="col-sm-8">						<label for="display_cats">							<input type="radio" {HIDE_CATEGORIES_ON_INDEX} name="display_categories_on_index" id="display_cats" value="0">							{L_NOT_DISPLAY}						</label>						<div class="clearfix"></div>						<label for="display_cats_visible">							<input type="radio" {DISPLAY_CATEGORIES_ON_INDEX} id="display_cats_visible" name="display_categories_on_index" value="1" />							{L_DISPLAY}						</label>					</div>				</div>				<div class="form-group">					<label class="col-sm-4" for="number_articles_on_index">{L_NUMBER_ARTICLES_ON_INDEX} <span class="help-block">{L_NUMBER_ARTICLES_ON_INDEX_EXPLAIN}</span></label>					<div class="col-sm-8">						<input class="form-control" type="text" name="number_articles_on_index" id="number_articles_on_index" value="{NUMBER_ARTICLES_ON_INDEX}">					</div>				</div>				<div class="form-group-textarea">					<label for="contents">{L_DESCRIPTION}</label>					<div id="loading-preview-contents"class="loading-preview-container" style="display:none;">						<div class="loading-preview"><i class="fa fa-spinner fa-2x fa-spin"></i></div>					</div>					<div id="xmlhttprequest-preview-contents" class="xmlhttprequest-preview" style="display:none;"></div>					{KERNEL_EDITOR}					<textarea class="form-control" rows="10" cols="60" id="contents" name="contents">{DESCRIPTION}</textarea>					<div class="text-center mb15"><button class="btn btn-default btn-sm" type="button" onclick="XMLHttpRequest_preview('contents');">{L_PREVIEW}</button></div>				</div>			</div>		</fieldset>		<p class="text-center">			<button type="submit" name="update" value="true" class="btn btn-primary">{L_UPDATE}</button>			<button type="reset" value="true" class="btn btn-default">{L_RESET}</button>			<input type="hidden" name="token" value="{TOKEN}">		</p>	</form></div>
