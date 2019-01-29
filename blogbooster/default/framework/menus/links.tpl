# IF C_MENU # <!-- Menu -->

	# IF C_FIRST_MENU # <!-- Menu container NAV -->

		# IF C_MENU_CONTAINER # <!-- Open mini-module-container -->
		<div id="links-menu-{ID}" class="module-mini-container cssmenu-content# IF C_HIDDEN_WITH_SMALL_SCREENS # hidden-small-screens# ENDIF #">
			<div class="module-mini-top menu-vertical-{DEPTH}">
				# IF RELATIVE_URL #
					<a href="{REL_URL}" title="{TITLE}" class="sub-title">
						# IF C_IMG #<img src="{REL_IMG}" alt="" height="{IMG_HEIGHT}" width="{IMG_WIDTH}" /># ENDIF # {TITLE}
					</a>
				# ELSE #
					<span class="sub-title">
						# IF C_IMG #<img src="{REL_IMG}" alt="" height="{IMG_HEIGHT}" width="{IMG_WIDTH}" /># ENDIF # {TITLE}
					</span>
				# ENDIF #
			</div>
			<div class="module-mini-contents">
		# ENDIF #

		<nav aria-label="{TITLE}" id="cssmenu-{ID}" class="cssmenu# IF C_MENU_HORIZONTAL # cssmenu-horizontal# ENDIF ## IF C_MENU_VERTICAL # cssmenu-vertical# ENDIF ## IF C_MENU_STATIC # cssmenu-static# ENDIF ## IF C_MENU_LEFT # cssmenu-left# ENDIF ## IF C_MENU_RIGHT # cssmenu-right# ENDIF ## IF C_HIDDEN_WITH_SMALL_SCREENS # hidden-small-screens# ENDIF ## IF C_MENU_WITH_SUBMENU # cssmenu-with-submenu# ENDIF #">
			# IF NOT C_MENU_CONTAINER #
				# IF RELATIVE_URL #
				<a href="{REL_URL}" title="{TITLE}" class="cssmenu-img cssmenu-img-level-{DEPTH}">
					# IF C_IMG #<img src="{REL_IMG}" alt="{TITLE}" height="{IMG_HEIGHT}" width="{IMG_WIDTH}" /># ENDIF #
				</a>
				# ELSE #
					# IF C_IMG #<img src="{REL_IMG}" alt="{TITLE}" title="{TITLE}" height="{IMG_HEIGHT}" width="{IMG_WIDTH}" class="cssmenu-img cssmenu-img-level-{DEPTH}" /># ENDIF #
				# ENDIF #
			# ENDIF #
			<ul class="level-{DEPTH}# IF NOT C_MENU_CONTAINER ## IF C_IMG # menu-with-img# ENDIF ## ENDIF #"># START elements #{elements.DISPLAY}# END elements #</ul>
		</nav>

		# IF C_MENU_CONTAINER # <!-- Close mini-module-container -->
			</div>
			<div class="module-mini-bottom hidden-small-screens"></div>
		</div>
		<script>
			jQuery('\#links-menu-{ID} .module-mini-top').on('click',function() {
				jQuery('\#links-menu-{ID} .module-mini-top').parent().toggleClass('opened');
				if(jQuery('\#links-menu-{ID}').hasClass('opened')) {
					value = jQuery('\#links-menu-{ID} .module-mini-contents').innerHeight();
					openedHeight = (value + 60);
				}
				else
					openedHeight = 60;

				jQuery('\#links-menu-{ID}').css('height', openedHeight+'px');
			});
		</script>
		# ENDIF #
		<script>jQuery("#cssmenu-${escape(ID)}").menumaker({ title: "{TITLE}", format: "multitoggle", breakpoint: 768# IF C_MENU_STATIC #, static: true# ENDIF # }); </script>
	# ENDIF #

	# IF C_NEXT_MENU # <!-- Sub Element for Menu -->
	<li # IF C_HAS_CHILD #class="has-sub" # ENDIF #>
		# IF C_URL #
		<a href="{REL_URL}" title="{L_TITLE}" class="cssmenu-title"># IF C_IMG #<img src="{REL_IMG}" alt="" height="{IMG_HEIGHT}" width="{IMG_WIDTH}" /> # ENDIF #{TITLE}</a>
		# ELSE #
		<span class="cssmenu-title"># IF C_IMG #<img src="{REL_IMG}" alt="" height="{IMG_HEIGHT}" width="{IMG_WIDTH}" /># ENDIF#{TITLE}</span>
		# ENDIF #
		# IF C_HAS_CHILD # <!-- Add Sub-Menu Element -->
		<ul class="level-{DEPTH}"># START elements #{elements.DISPLAY}# END elements #</ul>
		# ENDIF #
	</li>
	# ENDIF #

# ELSE # <!-- Menu Element -->
<li>
	# IF C_URL #
	<a href="{REL_URL}" title="{L_TITLE}" class="cssmenu-title"># IF C_IMG #<img src="{REL_IMG}" alt="" height="{IMG_HEIGHT}" width="{IMG_WIDTH}" /> # ENDIF #{TITLE}</a>
	# ELSE #
	<span class="cssmenu-title"># IF C_IMG #<img src="{REL_IMG}" alt="" height="{IMG_HEIGHT}" width="{IMG_WIDTH}" /># ENDIF#{TITLE}</span>
	# ENDIF #
</li>
# ENDIF #
