
<article class="mb15" id="last-messages" style="order: {FORUM_POSITION}; -webkit-order: {FORUM_POSITION}; -ms-flex-order: {FORUM_POSITION}">
	<header>
		<div class="pull-right text-right">
			<a class="btn btn-pbt btn-xs" href="{PATH_TO_ROOT}/forum" title="${Langloader::get_message('link.to.forum', 'common', 'HomeLanding')}">
				${Langloader::get_message('link.to.forum', 'common', 'HomeLanding')}
			</a>
		</div>
		<h2>
			${Langloader::get_message('last.forum.messages', 'common', 'HomeLanding')}
		</h2>
	</header>
	# START forum_items #
		<div class="panel panel-default" itemscope="itemscope" itemtype="http://schema.org/CreativeWork">
			<div class="panel-heading">
				<div class="row">
					<div class="col-sm-4">
						<i class="fa fa-user"></i> {forum_items.PSEUDO}
					</div>
					<div class="col-sm-8">
						<div class="btn-group btn-group-xs">
							<span class="btn btn-default"><i class="fa fa-clock-o"></i> {forum_items.DATE}</span>
							<span class="btn btn-info"><i class="fa fa-file-o"></i> <a href="{forum_items.U_MESSAGE}">{forum_items.MESSAGE}</a></span>
						</div>
					</div>
				</div>
			</div>
			<div class="panel-body">
				<div class="row">
					<div class="col-sm-4">
						<img src="{forum_items.U_AVATAR}" alt="{forum_items.PSEUDO}" />
					</div>
					<div class="col-sm-8">
						{forum_items.CONTENTS} ... <a href="{forum_items.U_LINK}">[${LangLoader::get_message('read-more', 'common')}]</i></a>
					</div>
				</div>
			</div>
		</div>
	# END forum_items #
	<footer></footer>
</article>
