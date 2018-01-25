		<article id="article-pages-{ID}" class="article-pages">
			<header>
				<div class="pull-right text-right">
					<div class="btn-group btn-group-xs">
						# IF C_ACTIV_COM #
							<a href="{U_COM}" class="btn btn-info"><i class="fa fa-comments-o"></i> {L_COM}</a>&nbsp;
						# ENDIF #
						# IF C_TOOLS_AUTH #
							<a href="{U_RENAME}" title="{L_RENAME}" class="btn btn-warning"><i class="fa fa-magic"></i></a>
							<a href="{U_EDIT}" title="{L_EDIT}" class="btn btn-info"><i class="fa fa-edit"></i></a>
							<a href="{U_DELETE}" title="{L_DELETE}" data-confirmation="delete-element" class="btn btn-danger"><i class="fa fa-delete"></i></a>
						# ENDIF #
						# IF C_PRINT #
							<a href="{U_PRINT}" title="{L_PRINT}" class="btn btn-pbt"><i class="fa fa-print"></i></a>
						# ENDIF #
					</div>
				</div>
				<h1>
					{TITLE}
				</h1>
			</header>
			<div class="content">
				# START redirect #
					<div class="pull-right">
					{redirect.REDIRECTED_FROM} {redirect.DELETE_REDIRECTION}
					</div>
				# END redirect #

				<div class="clearfix"></div>
					{CONTENTS}
				<div class="clearfix"></div>
			</div>
			<footer class="center">{COUNT_HITS}</footer>
		</article>
