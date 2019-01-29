<div class="list-group online-mini">
	<li class="list-group-item list-group-item-success">
		{L_VISITOR} : <span class="badge">{TOTAL_VISITOR_CONNECTED}</span>
	</li>
	<li class="list-group-item list-group-item-info">
		{L_MEMBER} : <span class="badge">{TOTAL_MEMBER_CONNECTED}</span>
	</li>
	<li class="list-group-item list-group-item-warning">
		{L_MODO} : <span class="badge">{TOTAL_MODERATOR_CONNECTED}</span>
	</li>
	<li class="list-group-item list-group-item-pbt">
		{L_ADMIN} : <span class="badge">{TOTAL_ADMINISTRATOR_CONNECTED}</span>
	</li>
</div>

<ul class="list-group">
	# START users #
		<li class="list-group-item">
			<a href="{users.U_PROFILE}" class="{users.LEVEL_CLASS} online-user" # IF users.C_GROUP_COLOR # style="color:{users.GROUP_COLOR}" # ENDIF #>
				{users.PSEUDO}
			</a>
		</li>
	# END users #
	# IF C_MORE_USERS #
		<li class="list-group-item">
			<a href="${relative_url(OnlineUrlBuilder::home())}">{TOTAL_USERS_CONNECTED} {L_USERS_ONLINE} <i class="fa fa-angle-right"></i></a>
		</li>
	# ENDIF #
</ul>

<div class="list-group">
	<li class="list-group-item active">
		{L_TOTAL} : <span class="badge">{TOTAL_USERS_CONNECTED}</span>
	</li>
</div>

<div class="text-center">
	<a href="${relative_url(OnlineUrlBuilder::home())}" class="btn btn-pbt">{@online}</a>
</div>
