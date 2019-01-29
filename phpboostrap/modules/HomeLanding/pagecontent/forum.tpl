
<article class="mb15" id="forum" style="order: {FORUM_POSITION}; -webkit-order: {FORUM_POSITION}; -ms-flex-order: {FORUM_POSITION}">
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
	# START item #
		<div class="col-sm-6">
			<div class="panel panel-default" itemscope="itemscope" itemtype="http://schema.org/CreativeWork">
				<div class="panel-heading">
					<div class="row">
						<div class="col-sm-4">
							<i class="fa fa-user"></i> {item.PSEUDO}
						</div>
						<div class="col-sm-8">
							<div class="btn-group btn-group-xs">
								<span class="btn btn-default"><i class="fa fa-clock"></i> {item.DATE}</span>
								<span class="btn btn-info"><i class="fa fa-file"></i> <a href="{item.U_MESSAGE}">{item.MESSAGE}</a></span>
							</div>
						</div>
					</div>
				</div>
				<div class="panel-body">
					<div class="row">
						<div class="col-sm-4">
							<img src="{item.U_AVATAR}" alt="{item.PSEUDO}" />
						</div>
						<div class="col-sm-8">
							{item.CONTENTS} ... <a href="{item.U_LINK}">[${LangLoader::get_message('read-more', 'common')}]</i></a>
						</div>
					</div>
				</div>
			</div>
		</div>		
	# END item #
	<footer></footer>
</article>
