
	# IF C_VERTICAL_BLOCK #
	<div class="module-mini-container# IF C_HIDDEN_WITH_SMALL_SCREENS # hidden-small-screens# ENDIF #">
		<div class="module-mini-top">
			<h5 class="sub-title">
				<a href="{U_LINK}" class="fa fa-syndication"></a>
				# IF C_NAME #{NAME}# ELSE #{TITLE}# ENDIF #
			</h5>
		</div>
		<div class="module-mini-contents">
			<ul class="feed-list">
			# START item #
					<li class="feed-with-img">
						<div class="feed-img" # IF item.C_IMG #style="background-image: url({PATH_TO_ROOT}{item.U_IMG});"# ENDIF #>
							<div # IF item.C_IMG #class="feed-img-overlay" style="min-height: 50px;"# ENDIF #>
								<span class="smaller">{item.DATE}</span> <a href="{item.U_LINK} ">{item.TITLE} </a>
							</div>
						</div>
					</li>
			# END item #
			</ul>
		</div>
		<div class="module-mini-bottom">
		</div>
	</div>
	# ELSE #
	<div class="block-container# IF C_HIDDEN_WITH_SMALL_SCREENS # hidden-small-screens# ENDIF #">
		<div class="block-contents">
			<h5 class="sub-title">
				<a href="{U_LINK}" class="fa fa-syndication"></a>
				# IF C_NAME #{NAME}# ELSE #{TITLE}# ENDIF #
			</h5>
			<ul class="list">
				# START item #
				<li>
					# IF item.C_IMG #<img src="{PATH_TO_ROOT}{item.U_IMG}" alt="{item.U_IMG}" /># ENDIF #
					<span class="smaller">{item.DATE}</span> <a href="{item.U_LINK} ">{item.TITLE}</a>
				</li>
				# END item #
			</ul>
		</div>
	</div>
	# ENDIF #
