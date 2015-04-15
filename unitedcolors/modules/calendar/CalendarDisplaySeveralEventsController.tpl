# INCLUDE MSG #

<section>
	<header class="color-02">
		<h1>
			<a href="${relative_url(SyndicationUrlBuilder::rss('calendar'))}" class="fa fa-syndication" title="${LangLoader::get_message('syndication', 'main')}"></a>
			{@module_title}
		</h1>
	</header>
	
	<div class="content">
		# IF NOT C_PENDING_PAGE #
		<div id="calendar">
			# INCLUDE CALENDAR #
		</div>
		
		<div class="spacer">&nbsp;</div>
		# ENDIF #
		
		<div id="events">
			# INCLUDE EVENTS #
		</div>
	</div>
	
	<footer></footer>
</section>
