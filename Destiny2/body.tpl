# INCLUDE MAINTAIN #

<script src="{PATH_TO_ROOT}/templates/{THEME}/js/jssor.slider-26.1.5.min.js" ></script>
<script src="{PATH_TO_ROOT}/templates/{THEME}/js/jssor-fontions.js" ></script>
<script type="text/javascript">
	jssor_1_slider_init = function() {

		var jssor_1_SlideoTransitions = [
		  [{b:-1,d:1,o:-0.7}],
		  [{b:900,d:2000,x:-379,e:{x:7}}],
		  [{b:900,d:2000,x:-379,e:{x:7}}],
		  [{b:-1,d:1,o:-1,sX:2,sY:2},{b:0,d:900,x:-171,y:-341,o:1,sX:-2,sY:-2,e:{x:3,y:3,sX:3,sY:3}},{b:900,d:1600,x:-283,o:-1,e:{x:16}}]
		];

		var jssor_1_options = {
		  $AutoPlay: 1,
		  $SlideDuration: 800,
		  $SlideEasing: $Jease$.$OutQuint,
		  $CaptionSliderOptions: {
			$Class: $JssorCaptionSlideo$,
			$Transitions: jssor_1_SlideoTransitions
		  },
		  $ArrowNavigatorOptions: {
			$Class: $JssorArrowNavigator$
		  },
		  $BulletNavigatorOptions: {
			$Class: $JssorBulletNavigator$
		  }
		};

		var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);

		/*#region responsive code begin*/

		var MAX_WIDTH = 3000;

		function ScaleSlider() {
			var containerElement = jssor_1_slider.$Elmt.parentNode;
			var containerWidth = containerElement.clientWidth;

			if (containerWidth) {

				var expectedWidth = Math.min(MAX_WIDTH || containerWidth, containerWidth);

				jssor_1_slider.$ScaleWidth(expectedWidth);
			}
			else {
				window.setTimeout(ScaleSlider, 30);
			}
		}

		ScaleSlider();

		$Jssor$.$AddEvent(window, "load", ScaleSlider);
		$Jssor$.$AddEvent(window, "resize", ScaleSlider);
		$Jssor$.$AddEvent(window, "orientationchange", ScaleSlider);
		/*#endregion responsive code end*/
	};
</script>
<script src="{PATH_TO_ROOT}/templates/{THEME}/js/modernizr.custom.js"></script>
<script src="{PATH_TO_ROOT}/templates/{THEME}/js/jquery.dlmenu.js"></script>
<script>
	$(function() {
		$( '#dl-menu' ).dlmenu();
	});
</script>

<div id="dl-prim">
	<div id="dl-menu" class="dl-menuwrapper">
		<button class="dl-trigger">Open Menu</button> <span class="title-nav">&nbsp; Menu</span>
		<ul class="dl-menu">
		<li><a href="{PATH_TO_ROOT}/news/">Actualités</a></li>
		<li><a href="{PATH_TO_ROOT}/forum/">Forum</a> </li>
		<li><a href="{PATH_TO_ROOT}/faq/">FAQ</a></li>
			<li>
				<a href="#">Menu 1</a>
				<ul class="dl-submenu">
					<li>
						<a href="#">Sous-menu 1</a>
						<ul class="dl-submenu">
							<li><a href="#">Lien 1</a></li>
							<li><a href="#">Lien 2</a></li>
							<li><a href="#">Lien 3</a></li>
							<li><a href="#">Lien 4</a></li>
							<li><a href="#">Lien 5</a></li>
							<li><a href="#">Lien 6</a></li>
						</ul>
					</li>
					<li>
						<a href="#">Sous-menu 2</a>
						<ul class="dl-submenu">
							<li><a href="#">Lien 1</a></li>
							<li><a href="#">Lien 2</a></li>
							<li><a href="#">Lien 3</a></li>
							<li><a href="#">Lien 4</a></li>
						</ul>
					</li>
					<li>
						<a href="#">Sous-menu 3</a>
						<ul class="dl-submenu">
							<li><a href="#">Lien 1</a></li>
							<li><a href="#">Lien 2</a></li>
						</ul>
					</li>
				</ul>
			</li>
			<li>
				<a href="#">Menu 2</a>
				<ul class="dl-submenu">
					<li><a href="#">Lien 1</a></li>
					<li><a href="#">Lien 2</a></li>
					<li><a href="#">Lien 3</a></li>
					<li><a href="#">Lien 4</a></li>
				</ul>
			</li>
			<li>
				<a href="#">Menu 3</a>
				<ul class="dl-submenu">
					<li>
						<a href="#">Sous-menu 1</a>
						<ul class="dl-submenu">
							<li><a href="#">Lien 1</a></li>
							<li><a href="#">Lien 2</a></li>
							<li><a href="#">Lien 3</a></li>
							<li><a href="#">Lien 4</a></li>
						</ul>
					</li>
					<li><a href="#">Sous-menu 2</a>
						<ul class="dl-submenu">
							<li>
								<a href="#">Sous-sous-menu 1</a>
								<ul class="dl-submenu">
									<li><a href="#">Lien 1</a></li>
									<li><a href="#">Lien 2</a></li>
									<li><a href="#">Lien 3</a></li>
									<li><a href="#">Lien 4</a></li>
									<li><a href="#">Lien 5</a></li>
									<li><a href="#">Lien 6</a></li>
								</ul>
							</li>
							<li><a href="#">Lien 1</a></li>
							<li><a href="#">Lien 2</a></li>
							<li><a href="#">Lien 3</a></li>
						</ul>
					</li>
					<li><a href="#">Lien 1</a></li>
					<li><a href="#">Lien 2</a></li>
					<li><a href="#">Lien 3</a></li>
				</ul>
			</li>
			<li>
				<a href="#">Menu 4</a>
				<ul class="dl-submenu">
					<li><a href="#">Lien 1</a></li>
					<li><a href="#">Lien 2</a></li>
					<li><a href="#">Lien 3</a></li>
					<li>
						<a href="#">Sous-menu 1</a>
						<ul class="dl-submenu">
							<li><a href="#">Lien 1</a></li>
							<li><a href="#">Lien 2</a></li>
							<li><a href="#">Lien 3</a></li>
							<li><a href="#">Lien 4</a></li>
						</ul>
					</li>
				</ul>
			</li>
		</ul>
	</div> <!-- /dl-menuwrapper -->
</div>

	
<header id="header">	
	<div id="top-header">
		<div id="jssor_1">
			<!-- Loading Screen -->
			<div data-u="loading" class="jssorl-009-spin">
				<img style="" src="{PATH_TO_ROOT}/templates/{THEME}/theme/images/slide/spin.svg" />
			</div>
			<div data-u="slides" class="jssorl-data">
				<div>
					<img data-u="image" src="{PATH_TO_ROOT}/templates/{THEME}/theme/images/slide/001.png" />
					<div class="jssorl-logo">
						<div id="site-logo" # IF C_HEADER_LOGO #style="background-image: url({HEADER_LOGO});"# ENDIF #></div>
					</div>
					<div class="jssorl-name">
						<a id="site-name" href="{PATH_TO_ROOT}/">{SITE_NAME}</a><span id="site-slogan">{SITE_SLOGAN}</span>
					</div>
				</div>
				<div>
					<img data-u="image" src="{PATH_TO_ROOT}/templates/{THEME}/theme/images/slide/002.png" />
					<div class="jssorl-news">
						<div class="actus" style="color:#fff;list-style-type: none;">
						<?php echo Feed::get_parsed('news', Feed::DEFAULT_FEED_NAME, 0, false, 10);  ?>
						</div>
					</div>					
					<div class="jssorl-logo1">
						<div id="site-logo" # IF C_HEADER_LOGO #style="background-image: url({HEADER_LOGO});"# ENDIF #></div>
					</div>				
					<div class="jssorl-actus">
						Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et
						dolore magna aliqua.
					</div>
				</div>
				<div>
					<img data-u="image" src="{PATH_TO_ROOT}/templates/{THEME}/theme/images/slide/003.png" />
					<div class="jssorl-coms">
					Entrez dans le jeu !!
					<br />
					REJOIGNEZ-NOUS !!
					</div>					
			   </div>
			</div>
<!-- ON NE TOUCHE PAS : START -->			
			<!-- Bullet Navigator -->
			<div data-u="navigator" class="jssorb032" style="position:absolute;bottom:12px;right:12px;" data-autocenter="1" data-scale="0.5" data-scale-bottom="0.75">
				<div data-u="prototype" class="i" style="width:16px;height:16px;">
					<svg viewbox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;">
						<circle class="b" cx="8000" cy="8000" r="5800"></circle>
					</svg>
				</div>
			</div>
			<!-- Arrow Navigator -->
			<div data-u="arrowleft" class="jssora051" style="width:65px;height:65px;top:0px;left:25px;" data-autocenter="2" data-scale="0.75" data-scale-left="0.75">
				<svg viewbox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;">
					<polyline class="a" points="11040,1920 4960,8000 11040,14080 "></polyline>
				</svg>
			</div>
			<div data-u="arrowright" class="jssora051" style="width:65px;height:65px;top:0px;right:25px;" data-autocenter="2" data-scale="0.75" data-scale-right="0.75">
				<svg viewbox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;">
					<polyline class="a" points="4960,1920 11040,8000 4960,14080 "></polyline>
				</svg>
			</div>
<!-- ON NE TOUCHE PAS : END -->			
		</div>
		<script type="text/javascript">jssor_1_slider_init();</script>
		
		<div id="top-header-content">
		# IF C_MENUS_HEADER_CONTENT #
			# START menus_header #
			{menus_header.MENU}
			# END menus_header #
		# ENDIF #
		</div>
	</div>
	
	<div id="sub-header">
		<div id="sub-header-content">
		# IF C_MENUS_SUB_HEADER_CONTENT #
			# START menus_sub_header #
			{menus_sub_header.MENU}
			# END menus_sub_header #
		# ENDIF #
		</div>
		<div class="spacer"></div>
	</div>
	
	<div class="spacer"></div>
	
</header>

<div id="global">
	# IF C_MENUS_LEFT_CONTENT #
	<aside id="menu-left">
		# START menus_left #
		{menus_left.MENU}
		# END menus_left #
	</aside>
	# ENDIF #

	<div id="main" class="# IF C_MENUS_LEFT_CONTENT #main-with-left# ENDIF ## IF C_MENUS_RIGHT_CONTENT # main-with-right# ENDIF #" role="main">
		# IF C_MENUS_TOPCENTRAL_CONTENT #
		<div id="top-content">
			# START menus_top_central #
			{menus_top_central.MENU}
			# END menus_top_central #
		</div>
		<div class="spacer"></div>
		# ENDIF #

		<div id="main-content" itemprop="mainContentOfPage">
			# INCLUDE ACTIONS_MENU #
			<nav id="breadcrumb" itemprop="breadcrumb">
				<ol>
					<li itemscope itemtype="http://data-vocabulary.org/Breadcrumb">
						<a href="{START_PAGE}" itemprop="url">
							<span itemprop="title">{L_INDEX}</span>
						</a>
					</li>
					# START link_bread_crumb #
					<li itemscope itemtype="http://data-vocabulary.org/Breadcrumb" # IF link_bread_crumb.C_CURRENT # class="current" # ENDIF #>
						<a href="{link_bread_crumb.URL}" itemprop="url">
							<span itemprop="title">{link_bread_crumb.TITLE}</span>
						</a>
					</li>
					# END link_bread_crumb #
				</ol>
			</nav>
			# INCLUDE KERNEL_MESSAGE #
			{CONTENT}
		</div>

		# IF C_MENUS_BOTTOM_CENTRAL_CONTENT #
		<div id="bottom-content">
			# START menus_bottom_central #
			{menus_bottom_central.MENU}
			# END menus_bottom_central #
		</div>
		# ENDIF #
	</div>

	# IF C_MENUS_RIGHT_CONTENT #
	<aside id="menu-right">
		# START menus_right #
		{menus_right.MENU}
		# END menus_right #
	</aside>
	# ENDIF #

	<div class="spacer"></div>
</div>

<footer id="footer">
<div class="ghost"></div>
	# IF C_MENUS_TOP_FOOTER_CONTENT #
	<div id="top-footer">
		# START menus_top_footer #
		{menus_top_footer.MENU}
		# END menus_top_footer #
		<div class="spacer"></div>
	</div>
	# ENDIF #

	# IF C_MENUS_FOOTER_CONTENT #
	<div class="footer-content">
		# START menus_footer #
		{menus_footer.MENU}
		# END menus_footer #
	</div>
	# ENDIF #


	<div class="footer-infos">
		<span class="cms">
			{L_POWERED_BY} <a href="http://www.phpboost.com" title="PHPBoost">PHPBoost</a> {L_PHPBOOST_RIGHT}
		</span>
		# IF C_DISPLAY_BENCH #
		<span class="requete">
		<span class="footer-infos-separator"> | </span>{L_ACHIEVED} {BENCH}{L_UNIT_SECOND} - {REQ} {L_REQ} - {MEMORY_USED}
		</span>
		# ENDIF #
		# IF C_DISPLAY_AUTHOR_THEME #
		<span class="author">
		<span class="footer-infos-separator"> | </span>{L_THEME} {L_THEME_NAME} {L_BY}
			<a href="{U_THEME_AUTHOR_LINK}">{L_THEME_AUTHOR}</a>
		</span>
		# ENDIF #
		# IF C_VISIT_COUNTER #
		<span class="footer-infos-separator"> | </span><span class="visit-counter">{L_VISIT} : {VISIT_COUNTER_TOTAL}&nbsp;-&nbsp;{L_TODAY} : {VISIT_COUNTER_DAY}</span>
		# ENDIF #
	</div>
</footer>

<a id="scroll-to-top" class="scroll-to" href="#" title="${LangLoader::get_message('scroll-to.top', 'user-common')}"><i class="fa fa-chevron-up"></i></a>
