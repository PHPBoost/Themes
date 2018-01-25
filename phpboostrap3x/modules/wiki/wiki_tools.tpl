
			<nav class="dropdown actionslinks">
				<button id="wiki-module-actionslinks" class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					<small class="visible-xs">{L_OTHER_TOOLS}</small>
					<i class="fa fa-bars"></i>
				</button>
				<ul class="dropdown-menu dropdown-menu-right" aria-labelledby="wiki-module-actionslinks">
					# IF C_ACTIV_COM #
						<li>
							<a href="{U_COM}"><i class="fa fa-comments-o"></i> {L_COM}</a>
						</li>
					# ENDIF #
					<li>
						<a href="{U_HISTORY}" title="{L_HISTORY}">
							<i class="fa fa-reply"></i> {L_HISTORY}
						</a>
					</li>
					# IF C_INDEX_PAGE #
						# IF IS_ADMIN #
							<li>
								<a href="{U_EDIT_INDEX}" title="{L_EDIT_INDEX}">
									<i class="fa fa-edit"></i> {L_EDIT_INDEX}
								</a>
							</li>
						# ENDIF #
						<li>
							<a href="{U_RANDOM}" title="{L_RANDOM}">
								<i class="fa fa-random"></i> {L_RANDOM}
							</a>
						</li>
					# ELSE #
						# IF C_EDIT #
						<li>
							<a href="{U_EDIT}" title="{L_EDIT}">
								<i class="fa fa-edit"></i> {L_EDIT}
							</a>
						</li>
						# ENDIF #
						# IF C_DELETE #
						<li>
							<a href="{U_DELETE}" title="{L_DELETE}" data-confirmation="delete-element">
								<i class="fa fa-delete"></i> {L_DELETE}
							</a>
						</li>
						# ENDIF #
						# IF C_RENAME #
						<li>
							<a href="{U_RENAME}" title="{L_RENAME}">
								<i class="fa fa-magic"></i> {L_RENAME}
							</a>
						</li>
						# ENDIF #
						# IF C_REDIRECT #
						<li>
							<a href="{U_REDIRECT}" title="{L_REDIRECT}">
								<i class="fa fa-fast-forward"></i> {L_REDIRECT}
							</a>
						</li>
						# ENDIF #
						# IF C_MOVE #
						<li>
							<a href="{U_MOVE}" title="{L_MOVE}">
								<i class="fa fa-move"></i> {L_MOVE}
							</a>
						</li>
						# ENDIF #
						# IF C_STATUS #
						<li>
							<a href="{U_STATUS}" title="{L_STATUS}">
								<i class="fa fa-tasks"></i> {L_STATUS}
							</a>
						</li>
						# ENDIF #
						# IF C_RESTRICTION #
						<li>
							<a href="{U_RESTRICTION}" title="{L_RESTRICTION}">
								<i class="fa fa-lock"></i> {L_RESTRICTION}
							</a>
						</li>
						# ENDIF #
						# IF IS_USER_CONNECTED #
							<li>
								<a href="{U_WATCH}" title="{L_WATCH}">
									<i class="fa fa-heart"></i> {L_WATCH}
								</a>
							</li>
						# ENDIF #
						<li>
							<a href="{U_PRINT}" title="{L_PRINT}">
								<i class="fa fa-print"></i> {L_PRINT}
							</a>
						</li>
					# ENDIF #
				</ul>
			</nav>
