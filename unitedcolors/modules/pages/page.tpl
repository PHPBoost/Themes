		<article>
			<header class="color-sub">
				<h1>
					<span>{TITLE}</span>
					<span class="actions">
					# IF C_ACTIV_COM #
						<a href="{U_COM}"><i class="fa fa-comments-o"></i> {L_COM}</a>&nbsp;
					# ENDIF #
					# IF C_TOOLS_AUTH #
						<a href="{U_RENAME}" title="{L_RENAME}" class="fa fa-magic"></a>
						<a href="{U_EDIT}" title="{L_EDIT}" class="fa fa-edit"></a>
						<a href="{U_DELETE}" title="{L_DELETE}" class="fa fa-delete" data-confirmation="delete-element"></a>
					# ENDIF #
					# IF C_PRINT #
						<a href="{U_PRINT}" title="{L_PRINT}" class="fa fa-print"></a>
					# ENDIF #
					</span>
				</h1>
			</header>
			<div class="content" style="padding-bottom:85px;">
				# START redirect #
					<div class="options" style="width:auto; float:left;">
					{redirect.REDIRECTED_FROM} {redirect.DELETE_REDIRECTION}
					</div>
				# END redirect #
				
				<div class="spacer">&nbsp;</div>
					{CONTENTS}
				<div class="spacer">&nbsp;</div>
			</div>
			<footer style="text-align:center">{COUNT_HITS}</footer>
		</article>