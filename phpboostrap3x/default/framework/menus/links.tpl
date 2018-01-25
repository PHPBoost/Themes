# IF C_MENU # <!-- Menu -->

	# IF C_FIRST_MENU # <!-- Menu container NAV -->

		# IF C_MENU_CONTAINER # <!-- Open mini-module-container -->
		<div class="panel panel-pbt# IF C_HIDDEN_WITH_SMALL_SCREENS # hidden-xs# ENDIF #">
			<div class="panel-heading hidden-xs">
				<div class="panel-title menu-vertical-{DEPTH} text-center">
					# IF RELATIVE_URL #
						<a href="{REL_URL}" title="{TITLE}">
						# IF C_IMG #<img src="{REL_IMG}" alt="{TITLE}" height="{IMG_HEIGHT}" width="{IMG_WIDTH}" /># ENDIF #{TITLE}</a>
					# ELSE #
						# IF C_IMG #<img src="{REL_IMG}" alt="{TITLE}" height="{IMG_HEIGHT}" width="{IMG_WIDTH}" /># ENDIF #{TITLE}
					# ENDIF #
				</div>
			</div>
			<div class="panel-body">
		# ENDIF #
			<nav class="navbar # IF C_MENU_HORIZONTAL #navbar-default dropdown-horizontal# ENDIF ## IF C_MENU_VERTICAL # dropdown-vertical# ENDIF ## IF C_MENU_STATIC # dropdown-static# ENDIF ## IF C_MENU_LEFT # dropdown-left# ENDIF ## IF C_MENU_RIGHT # dropdown-right# ENDIF ## IF C_HIDDEN_WITH_SMALL_SCREENS # hidden-xs# ENDIF ## IF C_MENU_WITH_SUBMENU # dropdown-with-submenu# ENDIF #">
				<div class="navbar-header">
                	<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".{ID}">
                        <span class="sr-only">{TITLE}</span>
						<i class="fa fa-bars"></i>
                    </button>
                    <a class="navbar-brand visible-xs" href="#">{TITLE}</a>
            	</div>
				<div class="collapse navbar-collapse {ID}">
					<ul class="nav navbar-nav">
						# START elements #{elements.DISPLAY}# END elements #
					</ul>
				</div>
			</nav>

		# IF C_MENU_CONTAINER #
			</div>
		</div>
		# ENDIF #




	# ENDIF #


	# IF C_NEXT_MENU #
		<li # IF C_HAS_CHILD #class="has-sub"# ENDIF #>
			# IF C_URL #
				<a href="{REL_URL}" # IF C_HAS_CHILD #class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"# ENDIF #># IF C_IMG #<img src="{REL_IMG}" alt="{TITLE}" height="{IMG_HEIGHT}" width="{IMG_WIDTH}" /> # ENDIF #{TITLE}# IF C_HAS_CHILD # <i class="fa fa-has-sub"></i># ENDIF #</a>
			# ELSE #
				<a href="#" # IF C_HAS_CHILD #class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"# ENDIF #># IF C_IMG #<img src="{REL_IMG}" alt="{TITLE}" height="{IMG_HEIGHT}" width="{IMG_WIDTH}" /># ENDIF#{TITLE}# IF C_HAS_CHILD # <i class="fa fa-has-sub"></i># ENDIF #</a>
			# ENDIF #
			# IF C_HAS_CHILD #
				<ul class="dropdown-menu level-{DEPTH}" aria-labelledby="cssmenu-{ID}"># START elements #{elements.DISPLAY}# END elements #</ul>
			# ENDIF #
		</li>
	# ENDIF #


# ELSE #
	<li>
		# IF C_URL #
			<a href="{REL_URL}"># IF C_IMG #<img src="{REL_IMG}" alt="{TITLE}" height="{IMG_HEIGHT}" width="{IMG_WIDTH}" /> # ENDIF #{TITLE}</a>
		# ELSE #
			<span># IF C_IMG #<img src="{REL_IMG}" alt="{TITLE}" height="{IMG_HEIGHT}" width="{IMG_WIDTH}" /># ENDIF#{TITLE}</span>
		# ENDIF #
	</li>
# ENDIF #
