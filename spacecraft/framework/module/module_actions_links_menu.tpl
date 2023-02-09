# IF C_DISPLAY #
	<div id="module-actionslinks" class="cell-hover-container">
		<span class="actionslinks-toggle cell-hover-trigger" data-tooltip-pos="left" aria-label="${LAngLoader::get_message('menu.tree.links', 'menu-lang')} {MODULE_NAME}">
			<i class="fa fa-lg fa-cog" aria-hidden="true"></i>
		</span>
		<nav id="module-{ID}" class="cell-list cell-hover-content">
			<ul>
				# START element #
					# INCLUDE element.ELEMENT #
				# END element #
			</ul>
		</nav>
	</div>
# ENDIF #
