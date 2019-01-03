
<article class="mb15" id="last_coms" style="order: {LASTCOMS_POSITION}; -webkit-order: {LASTCOMS_POSITION}; -ms-flex-order: {LASTCOMS_POSITION}">
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

		# START lastcoms_items #
		<a href="{lastcoms_items.U_LINK}" class="list-group-item">
			<h4 class="list-group-item-heading">
				{lastcoms_items.CONTENTS}# IF lastcoms_items.C_READ_MORE #... [${LangLoader::get_message('read-more', 'common')}]# ENDIF #
			</h4>
			<p class="list-group-item-text"># IF lastcoms_items.C_AUTHOR_EXIST #{lastcoms_items.PSEUDO}# ENDIF # # IF C_MODULE_NAME #${Langloader::get_message('in.modules', 'common', 'HomeLanding')} {lastcoms_items.MODULE_NAME}# ENDIF # ({lastcoms_items.DATE}) <i class="fa fa-hand-o-right"></i></p>
		</a>
		# END lastcoms_items #

	</div>
	<footer></footer>
</article>
