# INCLUDE UPLOAD_FORM #
<form action="{REWRITED_SCRIPT}" method="post" class="form-horizontal">
	<input type="hidden" name="token" value="{TOKEN}">
	# INCLUDE MSG #
	<fieldset>
		<legend>{@modules.updates_available}</legend>
		<div class="fieldset-inset">
		# IF C_UPDATES #
		<div class="table-responsive">
			<table class="table table-bordered table-hover">
				<caption>{@modules.updates_available}</caption>
				<thead>
					<tr>
						<th>{@modules.name}</th>
						<th>{@modules.description}</th>
						<th>{@modules.upgrade_module}</th>
					</tr>
				</thead>
				<tbody>
					# START modules_upgradable #
					<tr>
						<td>
							<img src="{PATH_TO_ROOT}/{modules_upgradable.ICON}/{modules_upgradable.ICON}.png" alt="{modules_upgradable.NAME}" /> <span class="text-strong">{modules_upgradable.NAME}</span> <span class="text-italic">({modules_upgradable.VERSION})</span>
						</td>
						<td class="left">
							<strong>{@modules.author} :</strong> {modules_upgradable.AUTHOR} {modules_upgradable.AUTHOR_WEBSITE}
							<div class="clearfix"></div>
							<strong>{@modules.description} :</strong> {modules_upgradable.DESCRIPTION}
							<div class="clearfix"></div>
							<strong>{@modules.compatibility} :</strong> PHPBoost {modules_upgradable.COMPATIBILITY}
							<div class="clearfix"></div>
							<strong>{@modules.php_version} :</strong> {modules_upgradable.PHP_VERSION}
						</td>
						<td>
							<button type="submit" class="btn btn-primary" name="upgrade-{modules_upgradable.ID}" value="true">{@modules.upgrade_module}</button>
						</td>
					</tr>
					# END modules_upgradable #
				</tbody>
			</table>
		</div>

		# ELSE #
			<div class="alert alert-success">${LangLoader::get_message('no_item_now', 'common')}</div>
		# ENDIF #
		</div>
	</fieldset>
</form>
