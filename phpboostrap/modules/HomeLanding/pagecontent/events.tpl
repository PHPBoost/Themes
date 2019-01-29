
<article class="mb15" id="events" style="order: {CALENDAR_POSITION}; -webkit-order: {CALENDAR_POSITION}; -ms-flex-order: {CALENDAR_POSITION}">
	<header>
        <div class="pull-right text-right">
            <a class="btn btn-pbt btn-xs" href="{PATH_TO_ROOT}/calendar" title="${Langloader::get_message('link.to.events', 'common', 'HomeLanding')}">
                ${Langloader::get_message('link.to.events', 'common', 'HomeLanding')}
            </a>
        </div>
		<h2>
			${Langloader::get_message('next.events', 'common', 'HomeLanding')}
		</h2>
	</header>
	<div class="row">
		# IF C_NO_EVENT #
		<div class="text-center col-sm-12">
			${LangLoader::get_message('no.events', 'common', 'HomeLanding')}
		</div>
		# ENDIF #
	# START item #
			<div class="col-sm-8">
			<h3>
				<a href="{item.U_LINK}" title="{item.TITLE}">{item.TITLE}</a>
			</h3>
            <p>
                {item.DESCRIPTION}# IF item.C_READ_MORE #... <a href="{item.U_LINK}">[${LangLoader::get_message('read-more', 'common')}]</a># ENDIF #
            </p>
			</div>
            <div class=" thumbnail col-sm-4">
                <div class="bg-pbt event-date">
    				${LangLoader::get_message('event.date', 'common', 'HomeLanding')} <time datetime="{item.START_DATE}" itemprop="datePublished">{item.START_DATE}</time>
    			</div>
    			# IF item.C_HAS_PICTURE #
					<img itemprop="thumbnailUrl" src="{item.PICTURE}" alt="{item.TITLE}" />
				# ELSE #
					<img itemprop="thumbnailUrl" src="{PATH_TO_ROOT}/templates/{THEME}/theme/images/logo.png" alt="{item.TITLE}" />
				# ENDIF #
            </div>
	# END item #
	</div>
	<footer></footer>
</article>
