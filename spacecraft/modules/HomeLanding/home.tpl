<section id="module-homelanding" class="several-items">
	<header class="section-header" style="order: 0;">
		<h1>{MODULE_TITLE}</h1>
	</header>

	<div style="order: 1;">
		# INCLUDE PINNED_NEWS #
	</div>

	<div style="order: 2;">
		# INCLUDE CAROUSEL #
	</div>

	<div style="order: 3;">
		# IF C_EDITO_ENABLED #
			<div class="sub-section">
				<div class="content-container">
					<article id="edito-panel">
						<div class="content">
							{EDITO}
							<div class="spacer"></div>
						</div>
					</article>
				</div>
			</div>
		# ENDIF #
	</div>

	<div style="order: 4;">
		<div
			class="hidden"
			data-listorder-control="hidden-sort"
			data-group="masonry-items"
			data-path=".lo-date"
			data-order="desc"
			data-type="number">
		</div>
		<div id="cell-grid" class="cell-flex cell-columns-# IF C_HAS_ALL_VERTICAL_MENUS #2# ELSE ## IF C_HAS_SOME_VERTICAL_MENUS #3# ELSE #4# ENDIF ## ENDIF #" data-listorder-group="masonry-items">
			# INCLUDE LASTCOMS #


			# INCLUDE ARTICLES #

			# INCLUDE ARTICLES_CAT #


			# INCLUDE CALENDAR #


			# INCLUDE DOWNLOAD #

			# INCLUDE DOWNLOAD_CAT #


			# INCLUDE FLUX #


			# INCLUDE FORUM #


			# INCLUDE MEDIA #


			# INCLUDE NEWS #

			# INCLUDE NEWS_CAT #


			# INCLUDE SMALLADS #

			# INCLUDE SMALLADS_CAT #


			# INCLUDE  WEB #

			# INCLUDE  WEB_CAT #
			<!-- Additional modules -->
		</div>
	</div>

	<div style="order: 5;">
		# INCLUDE CONTACT #
	</div>

	<div style="order: 6;">
		# INCLUDE GALLERY #
	</div>

	<div style="order: 7;">
		# INCLUDE GUESTBOOK #
	</div>

	<footer style="order: 9999;"></footer>
</section>
<script src="{PATH_TO_ROOT}/templates/spacecraft/js/animate# IF C_CSS_CACHE_ENABLED #.min# ENDIF #.js"></script>
<script>
	jQuery('document').ready(function(jQuery){
		listorder.init();
	});
</script>
