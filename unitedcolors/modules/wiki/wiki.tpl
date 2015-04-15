		<article>
			<header class="color-sub">
				<h1>
					<a href="${relative_url(SyndicationUrlBuilder::rss('wiki', ID_CAT))}" title="${LangLoader::get_message('syndication', 'main')}" class="fa fa-syndication"></a>
					{TITLE}
				</h1>
			</header>
			<div class="content">
				# INCLUDE wiki_tools #
				
				# START warning #
				<div id="id-message-helper" class="warning">{warning.UPDATED_ARTICLE}</div>
				# END warning #
				
				# START redirect #
					<div style="width:30%;">
					{redirect.REDIRECTED}
						# START redirect.remove_redirection #
							<a href="{redirect.remove_redirection.U_REMOVE_REDIRECTION}" title="{redirect.remove_redirection.L_REMOVE_REDIRECTION}" class="fa fa-delete" data-confirmation="{redirect.remove_redirection.L_ALERT_REMOVE_REDIRECTION}"></a>
						# END redirect.remove_redirection #
					</div>
					<div class="spacer">&nbsp;</div>
				# END redirect #
				
				# START status #
					<div class="spacer">&nbsp;</div>
					<div class="blockquote">{status.ARTICLE_STATUS}</div>
					<div class="spacer">&nbsp;</div>
				# END status #
				
				# START menu #
					<div class="options" style="float:none;width:50%">
						<div style="text-align:center;"><strong>{L_TABLE_OF_CONTENTS}</strong></div>
						{menu.MENU}
					</div>
				# END menu #
				<div class="spacer">&nbsp;</div>
				{CONTENTS}
				<div class="spacer">&nbsp;</div>
				# START cat #
					<hr />
					# IF cat.list_cats #
					<br />
					<strong>{L_SUB_CATS}</strong>
					<br /><br />
					# START cat.list_cats #
						<i class="fa fa-folder"></i> <a href="{cat.list_cats.U_CAT}">{cat.list_cats.NAME}</a><br />
					# END cat.list_cats #
					# START cat.no_sub_cat #
					{cat.no_sub_cat.NO_SUB_CAT}<br />
					# END cat.no_sub_cat #
					# END IF #
					<br />
					<strong>{L_SUB_ARTICLES}</strong> &nbsp; <a href="${relative_url(SyndicationUrlBuilder::rss('wiki'))}" class="fa fa-syndication" title="${LangLoader::get_message('syndication', 'main')}"></a>
					<br /><br />
					# START cat.list_art #
						<i class="fa fa-file"></i> <a href="{cat.list_art.U_ARTICLE}">{cat.list_art.TITLE}</a><br />
					# END cat.list_art #
					
					# START cat.no_sub_article #
					{cat.no_sub_article.NO_SUB_ARTICLE}
					# END cat.no_sub_article #
					
				# END cat #
				<div class="spacer" style="margin-top:30px;">&nbsp;</div>
			</div>
			<footer>
				<div style="text-align:center;margin-top:8px;margin-bottom:10px;">{HITS}</div>
			</footer>
		</article>