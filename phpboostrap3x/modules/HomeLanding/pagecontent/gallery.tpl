
<article class="mb15" id="last_gallery" style="order: {GALLERY_POSITION}; -webkit-order: {GALLERY_POSITION}; -ms-flex-order: {GALLERY_POSITION}">
	<header>
		<div class="pull-right text-right">
			<a class="btn btn-pbt btn-xs" href="{PATH_TO_ROOT}/gallery" title="${Langloader::get_message('link.to.gallery', 'common', 'HomeLanding')}">
				${Langloader::get_message('link.to.gallery', 'common', 'HomeLanding')}
			</a>
		</div>
		<h2>
			${Langloader::get_message('last.gallery', 'common', 'HomeLanding')}
		</h2>
	</header>
	<div class="row grid-columns">
	# START gallery_items #
		<div class="col-sm-6 col-md-4" itemscope="itemscope" itemtype="http://schema.org/CreativeWork">
			<div class="thumbnail">
				<a href="{gallery_items.U_CATEGORY}">
					<img src="{gallery_items.U_IMG}" alt="{gallery_items.TITLE}" />
					<p class="text-center">{gallery_items.TITLE} <br /> <i class="fa fa-eye"></i> {gallery_items.NB_VIEWS}</p>
				</a>
			</div>

		</div>
	# END gallery_items #
	</div>
	<footer></footer>
</article>
