# START comments #
	<div class="panel panel-default" id="com{comments.ID_COMMENT}" itemscope="itemscope" itemtype="http://schema.org/Comment">
		<div class="panel-heading">
			<div class="row">
				<div class="col-sm-4">
					# IF comments.C_VISITOR #
						<span itemprop="author">{comments.PSEUDO}</span>
					# ELSE #
						<a itemprop="author" href="{comments.U_PROFILE}" class="{comments.LEVEL_CLASS}" # IF comments.C_GROUP_COLOR # style="color:{comments.GROUP_COLOR}" # ENDIF #>
							{comments.PSEUDO}
						</a>
					# ENDIF #
				</div>
				<div class="col-sm-8">
					<!-- <div id="message-rating" class="pull-right">
						<div class="btn-group btn-group-xs">
							<button class="btn btn-success"><i class="fa fa-plus"></i></button>
							<button class="btn btn-default">0{NBR_RATING_VOTE}</button>
							<button class="btn btn-danger"><i class="fa fa-minus"></i></button>
						</div>
					</div> -->
					# IF comments.C_MODERATOR #
					<div class="pull-right text-right">
						<div class="btn-group btn-group-xs">
							<a href="{comments.U_EDIT}" title="${LangLoader::get_message('edit', 'common')}" class="btn btn-info">
								<i class="fa fa-fw fa-edit"></i>
							</a>
							<a href="{comments.U_DELETE}" title="${LangLoader::get_message('delete', 'common')}" class="btn btn-danger" data-confirmation="delete-element">
								<i class="fa fa-fw fa-delete"></i>
							</a>
						</div>
					</div>
					# ENDIF #
					<div class="btn-group btn-group-xs">
						<a class="btn btn-info" itemprop="url" href="\#com{comments.ID_COMMENT}">\#{comments.ID_COMMENT}</a>
						<time class="btn btn-default" itemprop="datePublished" datetime="{comments.DATE_ISO8601}">{comments.DATE}</time>
					</div>
				</div>
			</div>
		</div>
		<div class="panel-body">
			<div class="row">
				<div class="col-sm-4">
					<p class="text-center">
						{comments.L_LEVEL}
					</p>
					# IF comments.C_AVATAR #
					<p class="text-center">
						<img src="{comments.U_AVATAR}" alt="${LangLoader::get_message('avatar', 'user-common')}" class="message-avatar" />
					</p>
					# ENDIF #
				</div>
				<div class="col-sm-8">
					{comments.MESSAGE}
					# IF comments.C_VIEW_TOPIC #
						<div class="view-topic">
							<a href="{comments.U_TOPIC}\#com{comments.ID_COMMENT}">
							{L_VIEW_TOPIC}
							<i class="fa fa-arrow-circle-right"></i>
						</a>
						</div>
					# ENDIF #
				</div>
			</div>
		</div>
	</div>
# END comments #
