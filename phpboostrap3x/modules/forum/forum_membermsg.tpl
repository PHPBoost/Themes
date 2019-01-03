		<span id="go-top"></span>

		# INCLUDE forum_top #

		<article itemscope="itemscope" itemtype="http://schema.org/Creativework" id="article-forum-membermsg">
			<header class="mb15">
				# IF C_PAGINATION #<span class="pull-right"># INCLUDE PAGINATION #</span># ENDIF #
				<h2>
					<span class="forum-cat-title">
						<a href="membermsg{U_FORUM_VIEW_MSG}" title="{L_VIEW_MSG_USER}">
							{L_VIEW_MSG_USER}
						</a>
					</span>
				</h2>
			</header>

			# START list #
			<p>{list.U_FORUM_CAT} &raquo; {list.U_TITLE_T}</p>
			<div class="panel panel-default">
				<div class="panel-heading">
					<div class="row">
						<div class="col-sm-4">
							{list.USER_ONLINE} # IF NOT list.C_GUEST #<a class="forum-link-pseudo {list.LEVEL_CLASS}" # IF list.C_GROUP_COLOR # style="color:{list.GROUP_COLOR}" # ENDIF # href="{list.U_USER_PROFILE}" title="{list.USER_PSEUDO}">{list.USER_PSEUDO}</a># ELSE # {list.USER_PSEUDO} # ENDIF #
						</div>
						<div class="col-sm-8">
							<div class="pull-right text-right">
								<div class="btn-group btn-group-xs">
									<a class="btn btn-primary" href="#go-top" title="go top"><i class="fa fa-arrow-up"></i></a>
									<a class="btn btn-primary" href="#go-bottom" title="go bottom"><i class="fa fa-arrow-down"></i></a>
								</div>
							</div>
							<div class="btn-group btn-group-xs">
								<span class="btn btn-info">
									<span id="m{list.ID}"></span><a href="{PATH_TO_ROOT}/forum/topic{list.U_VARS_ANCRE}#m{list.ID}" title="{list.DATE}"><i class="fa fa-hand-o-right"></i></a>
								</span>
								<span class="btn btn-default">
									{list.DATE}
								</span>
							</div>
						</div>
					</div>
				</div>
				<div class="panel-body">
					<div class="row">
						<div class="col-sm-4">
							<div class="text-center mb5">
								{list.USER_AVATAR}
							</div>
							<ul class="list-group">
								<li class="list-group-item">{list.USER_RANK}</li>
								<li class="list-group-item">{list.USER_IMG_ASSOC}</li>
								<li class="list-group-item">{list.USER_GROUP}</li>
								<li class="list-group-item">{list.USER_DATE}</li>
								<li class="list-group-item">{list.USER_MSG}</li>
							</ul>
						</div>
						<div class="col-sm-8">
							{list.CONTENTS}
						</div>
						<div class="col-sm-12">{list.USER_SIGN}</div>
					</div>
				</div>
				<div class="panel-footer">
					<div class="btn-group btn-group-xs">
						<span class="btn btn-pbt">{list.USER_PM} {list.USER_MAIL}</span>
						# START list.ext_fields #
						<span class="btn btn-pbt">{list.ext_fields.BUTTON}</span>
						# END list.ext_fields #
					</div>
				</div>
			</div>
			# END list #
			<footer>
				<span class="forum-cat-title">
					<a href="membermsg{U_FORUM_VIEW_MSG}" title="{L_VIEW_MSG_USER}">{L_VIEW_MSG_USER}</a>
				</span>
				# IF C_PAGINATION #
				<span class="pull-right"># INCLUDE PAGINATION #</span>
				<div class="clearfix"></div>
				# ENDIF #
			</footer>
		</article>

		<span id="go-bottom"></span>

		# INCLUDE forum_bottom #
