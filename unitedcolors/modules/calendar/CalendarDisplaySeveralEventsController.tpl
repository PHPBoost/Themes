# INCLUDE MSG #

<section id="module-calendar">
	<header>
		<div class="cat-actions">
			<a href="${relative_url(SyndicationUrlBuilder::rss('calendar'))}" aria-label="${LangLoader::get_message('syndication', 'common')}"><i class="fa fa-syndication" aria-hidden="true" title="${LangLoader::get_message('syndication', 'common')}"></i></a>
		</div>
		<h1>
			{@module_title}
		</h1>
	</header>

	<div class="elements-container">
		# IF NOT C_PENDING_PAGE #
			<div id="calendar">
				# INCLUDE CALENDAR #
			</div>
		# ENDIF #

		<div id="events">
			# INCLUDE EVENTS #
		</div>
	</div>

	<footer></footer>
</section>
