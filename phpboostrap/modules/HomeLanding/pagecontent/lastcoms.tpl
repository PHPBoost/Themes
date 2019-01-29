
<article class="mb15" id="lastcoms" style="order: {LASTCOMS_POSITION}; -webkit-order: {LASTCOMS_POSITION}; -ms-flex-order: {LASTCOMS_POSITION}">
	<header>
		<h2>
			${Langloader::get_message('last.comments', 'common', 'HomeLanding')}
		</h2>
	</header>
	<div class="list-group">
		# IF C_NO_COMMENT #
		<p class="text-center list-group-item">
			${LangLoader::get_message('no.comment', 'common', 'HomeLanding')}
		</p>
		# ENDIF #

		# START item #
		<a href="{item.U_LINK}" class="list-group-item">
			<h4 class="list-group-item-heading">
				{item.CONTENTS}# IF item.C_READ_MORE #... [${LangLoader::get_message('read-more', 'common')}]# ENDIF #
			</h4>
			<p class="list-group-item-text"># IF item.C_AUTHOR_EXIST #{item.PSEUDO}# ENDIF # # IF C_MODULE_NAME #${Langloader::get_message('in.modules', 'common', 'HomeLanding')} {item.MODULE_NAME}# ENDIF # ({item.DATE}) <i class="fa fa-hand-point-right "></i></p>
		</a>
		# END item #

	</div>
	<footer></footer>
</article>
