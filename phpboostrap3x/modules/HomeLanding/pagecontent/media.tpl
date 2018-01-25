
<article class="mb15" id="last-media" style="order: {MEDIA_POSITION}; -webkit-order: {MEDIA_POSITION}; -ms-flex-order: {MEDIA_POSITION}">
	<header>
		<div class="pull-right text-right">
			<a class="btn btn-pbt btn-xs" href="{PATH_TO_ROOT}/media" title="${Langloader::get_message('link.to.media', 'common', 'HomeLanding')}">
				${Langloader::get_message('link.to.media', 'common', 'HomeLanding')}
			</a>
		</div>
		<h2>
			${Langloader::get_message('last.media', 'common', 'HomeLanding')}
		</h2>
	</header>
	<div class="row grid-columns">
		# START media_swf #
			<div class="col-sm-6 col-md-4 mb15" itemscope="itemscope" itemtype="http://schema.org/CreativeWork">
				<h4><a href="{media_swf.U_MEDIA_LINK}">{media_swf.TITLE}</a></h4>
				<div class="well well-sm">
					${LangLoader::get_message('by', 'common')} <span class="color-topic">{media_swf.PSEUDO}</span> ${Langloader::get_message('the', 'common')} {media_swf.DATE}
				</div>

				<a href="{media_swf.URL_EMBED}" data-lightbox="formatter" data-rel="lightcase" title="{media_swf.TITLE}">
					<div class="media-content">
						<div class="poster-img" style="background-image: url({media_swf.POSTER})">
							<div class="player-icon">
								<i class="fa fa-play-circle-o fa-4x"></i>
							</div>
						</div>
					</div>
				</a>
			</div>
		# END media_swf #

		# START media_flv #
			<div class="col-sm-6 col-md-4" itemscope="itemscope" itemtype="http://schema.org/CreativeWork">
				<h4><a href="{media_flv.U_MEDIA_LINK}">{media_flv.TITLE}</a></h4>
				<div class="well well-sm">
					${LangLoader::get_message('by', 'common')} <span class="color-topic">{media_flv.PSEUDO}</span> ${Langloader::get_message('the', 'common')} {media_flv.DATE}
				</div>
				<a href="{media_flv.U_MEDIA_LINK}">
					<div class="media-content">
						<div class="poster-img" style="background-image: url({media_flv.POSTER})">
							<div class="player-icon">
								<i class="fa fa-share fa-4x"></i>
							</div>
						</div>
					</div>
				</a>
			</div>
		# END media_flv #

		# START media_mp4 #
			<div class="col-sm-6 col-md-4" itemscope="itemscope" itemtype="http://schema.org/CreativeWork">
				<h4><a href="{media_mp4.U_MEDIA_LINK}">{media_mp4.TITLE}</a></h4>
				<div class="well well-sm">
					${LangLoader::get_message('by', 'common')} <span class="color-topic">{media_mp4.PSEUDO}</span> ${Langloader::get_message('the', 'common')} {media_mp4.DATE}
				</div>
				<a href="{media_mp4.URL}" data-lightbox="formatter" data-rel="lightcase" title="{media_mp4.TITLE}">
					<div class="media-content">
						<div class="poster-img" style="background-image: url({media_mp4.POSTER})">
							<div class="player-icon">
								<i class="fa fa-play-circle-o fa-4x"></i>
							</div>
						</div>
					</div>
				</a>
			</div>
		# END media_mp4 #

		# START media_mp3 #
			<div class="col-sm-6 col-md-4" itemscope="itemscope" itemtype="http://schema.org/CreativeWork">
				<h4><a href="{media_mp3.U_MEDIA_LINK}">{media_mp3.TITLE}</a></h4>
				<div class="well well-sm">
					${LangLoader::get_message('by', 'common')} <span class="color-topic">{media_mp3.PSEUDO}</span> ${Langloader::get_message('the', 'common')} {media_mp3.DATE}
				</div>

				<a href="{media_mp3.URL}" data-lightbox="formatter" data-rel="lightcase" title="{media_mp3.TITLE}">
					<div class="media-content">
						<div class="poster-img" style="background-image: url({media_mp3.POSTER})">
							<div class="player-icon">
								<i class="fa fa-music fa-4x"></i>
							</div>
						</div>
					</div>
				</a>
			</div>
		# END media_mp3 #

		# START media_other #
			<div class="item-content" itemscope="itemscope" itemtype="http://schema.org/CreativeWork">
				<h3><a href="{media_other.U_MEDIA_LINK}">{media_other.TITLE}</a></h3>
				<div class="more">
					${LangLoader::get_message('by', 'common')} <span class="color-topic">{media_other.PSEUDO}</span> ${Langloader::get_message('the', 'common')} {media_other.DATE}
				</div>
				<a href="{media_other.URL}" data-lightbox="formatter" data-rel="lightcase" title="{media_other.TITLE}">
					<img src="{media_other.POSTER}" alt="{media_other.TITLE}">
				</a>
			</div>
		# END media_other #

	</div>
	<footer></footer>
</article>
