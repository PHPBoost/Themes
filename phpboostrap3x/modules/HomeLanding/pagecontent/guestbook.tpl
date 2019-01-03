
<article class="mb15" id="last-guestbook" style="order: {GUESTBOOK_POSITION}; -webkit-order: {GUESTBOOK_POSITION}; -ms-flex-order: {GUESTBOOK_POSITION}">
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
	# START guestbook_items #
		<div class="panel panel-default" itemscope="itemscope" itemtype="http://schema.org/CreativeWork">
			<div class="panel-heading">
				<div class="row">
					<div class="col-sm-4">
						${LangLoader::get_message('by', 'common')}
						# IF guestbook_items.C_AUTHOR_EXIST #
						<a href="{guestbook_items.U_AUTHOR_PROFILE}" class="{guestbook_items.USER_LEVEL_CLASS}" # IF guestbook_items.C_USER_GROUP_COLOR # style="color:{guestbook_items.USER_GROUP_COLOR}" # ENDIF #>{guestbook_items.PSEUDO}</a>
						# ELSE #
						{guestbook_items.PSEUDO}
						# ENDIF #
					</div>
					<div class="col-sm-8">
						<div class="btn btn-default btn-xs">
							{guestbook_items.DATE}
						</div>
					</div>
				</div>
			</div>
			<div class="panel-body">
				<div class="row">
					<div class="col-sm-4">
						<img class="avatar" src="{guestbook_items.U_AVATAR}" alt="{guestbook_items.PSEUDO}" />
					</div>
					<div class="col-sm-8">
						{guestbook_items.CONTENTS}# IF guestbook_items.C_READ_MORE #...# ENDIF #
					</div>
				</div>
			</div>
		</div>
	# END guestbook_items #
	<footer></footer>
</article>
