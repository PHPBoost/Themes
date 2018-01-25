<section id="module-online">
	<header>
		<h1>{@online}</h1>
	</header>
	<div class="table-responsive">
		<table class="table">
			<thead>
				<tr>
					<th>
						${Langloader::get_message('avatar', 'user-common')}
					</th>
					<th>
						${LangLoader::get_message('form.name', 'common')}
					</th>
					<th>
						${Langloader::get_message('rank', 'main')}
					</th>
					<th>
						{@online.location}
					</th>
					<th class="column-last-update">
						{@online.last_update}
					</th>
				</tr>
			</thead>
			# IF C_PAGINATION #
			<tfoot>
				<tr>
					<td colspan="3"># INCLUDE PAGINATION #</td>
				</tr>
			</tfoot>
			# ENDIF #
			<tbody>
				# START users #
				<tr>
					<td>
						# IF users.C_AVATAR #<img src="{users.U_AVATAR}" class="message-avatar" alt="${LangLoader::get_message('avatar', 'user-common')}" /># ENDIF #
					</td>
					<td>
						<a href="{users.U_PROFILE}" class="{users.LEVEL_CLASS}" # IF users.C_GROUP_COLOR # style="color:{users.GROUP_COLOR}" # ENDIF #>{users.PSEUDO}</a>
					</td>
					<td>
						{users.LEVEL}
					</td>
					<td>
						<a href="{users.U_LOCATION}">{users.TITLE_LOCATION}</a>
					</td>
					<td>
						{users.LAST_UPDATE_DATE_FULL}
					</td>
				</tr>
				# END users #
				# IF NOT C_USERS #
				<tr>
					<td colspan="3">
						${LangLoader::get_message('no_item_now', 'common')}
					</td>
				</tr>
				# ENDIF #
			</tbody>
		</table>
	</div>

	<footer></footer>
</section>
