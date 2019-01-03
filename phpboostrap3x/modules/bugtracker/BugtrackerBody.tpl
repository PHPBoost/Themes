# INCLUDE MSG #
<section id="module-bugtracker" class="row">
	<header>
		<h1>
			# IF C_SYNDICATION #<a href="# IF C_UNSOLVED #{U_SYNDICATION_UNSOLVED}# ELSE #{U_SYNDICATION_SOLVED}# ENDIF #" title="${LangLoader::get_message('syndication', 'common')}"><i class="fa fa-syndication"></i></a># ENDIF #
			{TITLE}
		</h1>
	</header>
	<div class="col-sm-12">
		# IF C_DISPLAY_MENU #
			<small class="sr-only">${LangLoader::get_message('form.options', 'common')}</small>
			<ul class="nav nav-tabs nav-justified">
				<li# IF C_UNSOLVED # class="active"# ENDIF #>
					<a href="${relative_url(BugtrackerUrlBuilder::unsolved())}" class="cssmenu-title">{@titles.unsolved}</a>
				</li>
				<li# IF C_SOLVED # class="active"# ENDIF #>
					<a href="${relative_url(BugtrackerUrlBuilder::solved())}" class="cssmenu-title">{@titles.solved}</a>
				</li>
				# IF C_ROADMAP_ENABLED #
				<li# IF C_ROADMAP # class="active"# ENDIF #>
					<a href="${relative_url(BugtrackerUrlBuilder::roadmap())}" class="cssmenu-title">{@titles.roadmap}</a>
				</li>
				# ENDIF #
				# IF C_STATS_ENABLED #
				<li# IF C_STATS # class="active"# ENDIF #>
					<a href="${relative_url(BugtrackerUrlBuilder::stats())}" class="cssmenu-title">{@titles.stats}</a>
				</li>
				# ENDIF #
			</ul>
		# ENDIF #

		# INCLUDE TEMPLATE #
	</div>
	<footer></footer>
</section>
