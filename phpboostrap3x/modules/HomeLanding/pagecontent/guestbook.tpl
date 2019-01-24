
<article class="mb15" id="guestbook" style="order: {GUESTBOOK_POSITION}; -webkit-order: {GUESTBOOK_POSITION}; -ms-flex-order: {GUESTBOOK_POSITION}">
	<header>
		<div class="pull-right text-right">
			<a class="btn btn-pbt btn-xs" href="{PATH_TO_ROOT}/guestbook" title="${Langloader::get_message('link.to.guestbook', 'common', 'HomeLanding')}">
				${Langloader::get_message('link.to.guestbook', 'common', 'HomeLanding')}
			</a>
		</div>
		<h2>
			${Langloader::get_message('last.guestbook', 'common', 'HomeLanding')}
		</h2>
	</header>
	# IF C_EMPTY_GUESTBOOK #
	<div class="text-center">
		${LangLoader::get_message('empty.guestbook', 'common', 'HomeLanding')}
	</div>
	# ENDIF #
	# START item #
		<div class="col-sm-6">
			<div class="panel panel-default" itemscope="itemscope" itemtype="http://schema.org/CreativeWork">
				<div class="panel-heading">
					<div class="row">
						<div class="col-sm-4">
							${LangLoader::get_message('by', 'common')}
							# IF item.C_AUTHOR_EXIST #
							<a href="{item.U_AUTHOR_PROFILE}" class="{item.USER_LEVEL_CLASS}" # IF item.C_USER_GROUP_COLOR # style="color:{item.USER_GROUP_COLOR}" # ENDIF #>{item.PSEUDO}</a>
							# ELSE #
							{item.PSEUDO}
							# ENDIF #
						</div>
						<div class="col-sm-8">
							<div class="btn btn-default btn-xs">
								{item.DATE}
							</div>
						</div>
					</div>
				</div>
				<div class="panel-body">
					<div class="row">
						<div class="col-sm-4">
							<img class="avatar" src="{item.U_AVATAR}" alt="{item.PSEUDO}" />
						</div>
						<div class="col-sm-8">
							{item.CONTENTS}# IF item.C_READ_MORE #...# ENDIF #
						</div>
					</div>
				</div>
			</div>
		</div>		
	# END item #
	<footer></footer>
</article>
