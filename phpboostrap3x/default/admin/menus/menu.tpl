<div class="menus-block-container" data-id="{IDMENU}" id="menu_{IDMENU}"# IF C_HORIZONTAL # style="width:auto;"# ENDIF #>
	<div class="menus-block-top">

		<span id="m{IDMENU}"></span>
		<h5 class="menus-block-title">{NAME}</h5>

		<div class="btn-group btn-group-xs">
			# IF C_UP #
			<a class="btn btn-primary" href="{U_UP}" alt="{L_MOVE_UP}" title="{L_MOVE_UP}">
				<i class="fa fa-fw fa-chevron-up"></i>
			</a>
			# ENDIF #
			<a href="" class="btn btn-pbt" title="${LangLoader::get_message('move', 'admin')}" onclick="return false;">
				<i class="fa fa-arrows"></i>
			</a>
			# IF C_EDIT #
				<a href="{U_EDIT}" title="{L_EDIT}" class="btn btn-info">
					<i class="fa fa-edit"></i>
				</a>
			# ENDIF #
			# IF C_DEL #
				<a href="{U_DELETE}" title="{L_DEL}" class="btn btn-danger" data-confirmation="delete-element">
					<i class="fa fa-delete"></i>
				</a>
			# ENDIF #
			<a class="# IF C_MENU_ACTIVATED #btn btn-success# ELSE #btn btn-danger# ENDIF #" href="menus.php?action={ACTIV}&amp;id={IDMENU}&amp;token={TOKEN}#m{IDMENU}" title="# IF C_MENU_ACTIVATED #{L_UNACTIVATE}# ELSE #{L_ACTIVATE}# ENDIF #">
				<i class="fa # IF C_MENU_ACTIVATED #fa-eye# ELSE #fa-eye-slash# ENDIF #"></i>
			</a>
			# IF C_DOWN #
			<a class="btn btn-primary" href="{U_DOWN}" alt="{L_MOVE_DOWN}" title="{L_MOVE_DOWN}">
				<i class="fa fa-fw fa-chevron-down"></i>
			</a>
			# ENDIF #
		</div>
	</div>
	<div style="display:none">{CONTENTS}</div>

</div>
