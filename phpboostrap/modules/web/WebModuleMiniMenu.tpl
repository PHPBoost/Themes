# IF C_VERTICAL #
	<div class="mb15" id="web">
		# IF C_PARTNERS #
			# START partners #
			<a href="{partners.U_VISIT}" title="{partners.NAME}" class="mini-content-friends-link">
				# IF partners.C_HAS_PARTNER_PICTURE #
				<img src="{partners.U_PARTNER_PICTURE}" alt="{partners.NAME}" itemprop="image" class="content-friends-picture" />
				# ELSE #
				{partners.NAME}
				# ENDIF #
			</a>
			# END partners #
		# ELSE #
		${LangLoader::get_message('no_item_now', 'common')}
		# ENDIF #
	</div>
	<p class="text-center">
		<a href="{PATH_TO_ROOT}/web" class="btn btn-pbt">{@module_title}</a>
	</p>
# ELSE #
	<div class="row grid-columns mb15" id="web">
		# IF C_PARTNERS #
			# START partners #
			<div class="col-sm-6 col-md-4">
				<a href="{partners.U_VISIT}" title="{partners.NAME}" class="mini-content-friends-link">
					# IF partners.C_HAS_PARTNER_PICTURE #
					<img src="{partners.U_PARTNER_PICTURE}" alt="{partners.NAME}" itemprop="image" class="content-friends-picture" />
					# ELSE #
					{partners.NAME}
					# ENDIF #
				</a>
			</div>
			# END partners #
		# ELSE #
		${LangLoader::get_message('no_item_now', 'common')}
		# ENDIF #
	</div>
	<p class="text-center">
		<a href="{PATH_TO_ROOT}/web" class="btn btn-pbt">{@module_title}</a>
	</p>
# ENDIF #
