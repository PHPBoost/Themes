<section id="module-quotes">
	<header>
		<div class="pull-right text-right">
			# IF IS_ADMIN #<a class="btn btn-info btn-xs" href="{U_EDIT_CATEGORY}" title="${LangLoader::get_message('edit', 'common')}"><i class="fa fa-edit smaller"></i></a># ENDIF #
		</div>
		<h1>
			# IF C_PENDING #{@quotes.pending}# ELSE #{@module_title}# ENDIF # # IF C_CATEGORY ## IF NOT C_ROOT_CATEGORY # - {CATEGORY_NAME}# ENDIF # # ENDIF ## IF C_AUTHOR_NAME # - {AUTHOR_NAME}# ENDIF #
		</h1>
		# IF C_CATEGORY_DESCRIPTION #
			<div class="cat-description">
				{CATEGORY_DESCRIPTION}
			</div>
		# ENDIF #
	</header>

	# IF C_SUB_CATEGORIES #
	<div class="row grid-columns mb15">
		# START sub_categories_list #
		<div class="col-sm-6 col-md-4 text-center">
			<div class="subcat-content">
				# IF sub_categories_list.C_CATEGORY_IMAGE #<a itemprop="about" href="{sub_categories_list.U_CATEGORY}"><img itemprop="thumbnailUrl" src="{sub_categories_list.CATEGORY_IMAGE}" alt="{sub_categories_list.CATEGORY_NAME}" /></a># ENDIF #
				<br />
				<a itemprop="about" href="{sub_categories_list.U_CATEGORY}">{sub_categories_list.CATEGORY_NAME}</a>
				<br />
				<span class="small">{sub_categories_list.ELEMENTS_NUMBER} # IF sub_categories_list.C_MORE_THAN_ONE_ELEMENT #${TextHelper::lcfirst(LangLoader::get_message('quotes', 'common', 'quotes'))}# ELSE #${TextHelper::lcfirst(LangLoader::get_message('quote', 'common', 'quotes'))}# ENDIF #</span>
			</div>
		</div>
		# END sub_categories_list #
		<div class="spacer"></div>
	</div>
	# IF C_SUBCATEGORIES_PAGINATION ## INCLUDE SUBCATEGORIES_PAGINATION ## ENDIF #
	# ENDIF #

	<div class="content">
	# IF C_RESULTS #
		# START quotes #
			<article id="article-quotes-{quotes.ID}" class="block" itemscope="itemscope" itemtype="http://schema.org/CreativeWork">
				# IF quotes.C_MODERATION #
				<header>
					<h2>
						<div class="pull-right text-right">
							<div class="btn-group btn-group-xs">
								# IF quotes.C_EDIT #
									<a class="btn btn-info" href="{quotes.U_EDIT}" title="${LangLoader::get_message('edit', 'common')}"><i class="fa fa-edit"></i></a>
								# ENDIF #
								# IF quotes.C_DELETE #
									<a class="btn btn-danger" href="{quotes.U_DELETE}" title="${LangLoader::get_message('delete', 'common')}" data-confirmation="delete-element"><i class="fa fa-delete"></i></a>
								# ENDIF #
							</div>
						</div>
					</h2>
				</header>
				# ENDIF #

				<div class="content">
					<p itemprop="text">{quotes.QUOTE}</p>
					<div class="spacer"></div>
					<div class="left text-strong"><a href="{quotes.U_AUTHOR_LINK}" class="small">{quotes.AUTHOR}</a></div>
				</div>
				<footer></footer>
			</article>
		# END quotes #
	# ELSE #
		# IF NOT C_HIDE_NO_ITEM_MESSAGE #
		<div class="center">
			${LangLoader::get_message('no_item_now', 'common')}
		</div>
		# ENDIF #
	# ENDIF #
	</div>
	<footer># IF C_PAGINATION # # INCLUDE PAGINATION # # ENDIF #</footer>
</section>
