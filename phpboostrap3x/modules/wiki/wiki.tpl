		<article id="article-wiki-{ID}" class="pos-rel# IF C_NEW_CONTENT # new-content# ENDIF #">
			<header>
				<div class="pull-right text-right mr-btn">
					<a href="${relative_url(SyndicationUrlBuilder::rss('wiki', ID_CAT))}" title="${LangLoader::get_message('syndication', 'common')}" class="btn btn-warning btn-xs">
						<i class="fa fa-syndication"></i>
					</a>
				</div>
				<h1>
					{TITLE}
				</h1>
			</header>
			<div class="content">
				# INCLUDE wiki_tools #

				# START warning #
				<div id="id-message-helper" class="alert alert-warning">{warning.UPDATED_ARTICLE}</div>
				# END warning #

				# START redirect #
					<div class="w33 mb15">
					{redirect.REDIRECTED}
						# START redirect.remove_redirection #
							<a href="{redirect.remove_redirection.U_REMOVE_REDIRECTION}" title="{redirect.remove_redirection.L_REMOVE_REDIRECTION}" class="fa fa-delete" data-confirmation="{redirect.remove_redirection.L_ALERT_REMOVE_REDIRECTION}"></a>
						# END redirect.remove_redirection #
					</div>
					<div class="clearfix"></div>
				# END redirect #

				# START status #
					<div class="alert alert-info">{status.ARTICLE_STATUS}</div>
				# END status #

				# START menu #
					<div class="wiki-summary">
						<div class="wiki-summary-title">{L_TABLE_OF_CONTENTS}</div>
						{menu.MENU}
					</div>
				# END menu #

				<div class="clearfix"></div>
				{CONTENTS}
				<div class="clearfix"></div>

				# START cat #
					<hr />
					# IF cat.list_cats #
						<ul class="list-group">
							<li class="list-group-item active">
								{L_SUB_CATS}
							</li>
							# START cat.list_cats #
							<li class="list-group-item">
								<i class="fa fa-folder"></i> <a href="{cat.list_cats.U_CAT}">{cat.list_cats.NAME}</a>
							</li>
						# END cat.list_cats #
						</ul>

						# START cat.no_sub_cat #
						{cat.no_sub_cat.NO_SUB_CAT}<br />
						# END cat.no_sub_cat #
					# ENDIF #

					<ul class="list-group">
						<li class="list-group-item active">
							<a class="btn btn-warning btn-xs pull-right text-right" href="${relative_url(SyndicationUrlBuilder::rss('wiki'))}" title="${LangLoader::get_message('syndication', 'common')}">
								<i class="fa fa-syndication"></i>
							</a>
							{L_SUB_ARTICLES}
						</li>
						# START cat.list_art #
						<li class="list-group-item">
							<i class="fa fa-file"></i> <a href="{cat.list_art.U_ARTICLE}">{cat.list_art.TITLE}</a>
						</li>
						# END cat.list_art #
					</ul>


					# START cat.no_sub_article #
					{cat.no_sub_article.NO_SUB_ARTICLE}
					# END cat.no_sub_article #

				# END cat #
				<div class="clearfix"></div>
			</div>
			<footer>
				<div class="wiki-hits">{HITS}</div>
			</footer>
		</article>
