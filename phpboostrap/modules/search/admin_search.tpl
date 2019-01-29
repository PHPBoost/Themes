		<script>
		<!--
			function check_form_conf()
			{
				if (document.getElementById('nb_results_p').value == "") {
					alert("{L_REQUIRE_INTEGER}");
					return false;
				}
				if (document.getElementById('cache_time').value == "") {
					alert("{L_REQUIRE_INTEGER}");
					return false;
				}
				if (document.getElementById('max_use').value == "") {
					alert("{L_REQUIRE_INTEGER}");
					return false;
				}
				return true;
			}
		-->
		</script>
		<nav id="admin-quick-menu">
			<a href="" class="js-menu-button" onclick="open_submenu('admin-quick-menu');return false;" title="{L_SEARCH_MANAGEMENT}">
				<i class="fa fa-bars"></i> {L_SEARCH_MANAGEMENT}
			</a>
			<ul>
				<li>
					<a href="admin_search.php" class="quick-link">{L_SEARCH_CONFIG}</a>
				</li>
				<li>
					<a href="admin_search.php?weighting=true" class="quick-link">{L_SEARCH_CONFIG_WEIGHTING}</a>
				</li>
			</ul>
		</nav>

		<div id="admin-contents">
			# IF NOT C_WEIGHTING #
			<form action="admin_search.php" method="post" onsubmit="return check_form_conf();" class="form-horizontal">
				<p class="center">{L_REQUIRE}</p>
				<fieldset>
					<legend>{L_SEARCH_CONFIG}</legend>
					<div class="fieldset-inset">
						<div class="form-group">
							<label class="control-label col-sm-4" for="nb_results_p">* {L_NB_RESULTS_P}</label>
							<div class="col-sm-8"><input class="form-control" type="number" min="1" max="200" id="nb_results_p" name="nb_results_p" value="{NB_RESULTS_P}"></div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-4" for="authorized_modules[]">* {L_AUTHORIZED_MODULES} <span class="help-block">{L_AUTHORIZED_MODULES_EXPLAIN}</span></label>
							<div class="col-sm-8">
								<select class="form-control" id="authorized_modules[]" name="authorized_modules[]" multiple="multiple" class="list-modules">
									# START authorized_modules #
									<option value="{authorized_modules.MODULE}" id="{authorized_modules.MODULE}"{authorized_modules.SELECTED}>{authorized_modules.L_MODULE_NAME}</option>
									# END authorized_modules #
								</select>
							</div>
						</div>
					</div>
				</fieldset>

				<fieldset>
					<legend>{L_SEARCH_CACHE}</legend>
					<div class="fieldset-inset">
						<div class="form-group">
							<label class="control-label col-sm-4" for="cache_time">* {L_CACHE_TIME} <span class="help-block">{L_CACHE_TIME_EXPLAIN}</span></label>
							<div class="col-sm-8"><input class="form-control" type="number" min="0" id="cache_time" name="cache_time" value="{CACHE_TIME}"></div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-4" for="max_use">* {L_MAX_USE} <span class="help-block">{L_MAX_USE_EXPLAIN}</span></label>
							<div class="col-sm-8"><input class="form-control" type="number" min="0" id="max_use" name="max_use" value="{MAX_USE}"></div>
						</div>
					</div>
				</fieldset>

				<fieldset>
					<legend>{L_AUTHORIZATIONS}</legend>
					<div class="fieldset-inset">
						<div class="form-group">
							<label class="col-sm-4">
								{L_READ_AUTHORIZATION}
							</label>
							<div class="col-sm-8">
								{READ_AUTHORIZATION}
							</div>
						</div>
					</div>
				</fieldset>

				<p class="text-center">
					<button type="submit" name="valid" value="true" class="btn btn-primary">{L_UPDATE}</button>
					<button type="reset" value="true" class="btn btn-default">{L_RESET}</button>
					<input type="hidden" name="token" value="{TOKEN}">
				</p>
			</form>
			<form action="admin_search.php?clear=1&amp;token={TOKEN}" name="form" method="post" class="form-horizontal">
				<fieldset>
					<legend>{L_CLEAR_OUT_CACHE}</legend>
					<div class="text-center">
						<i class="fa fa-refresh fa-2x"></i>
						<a class="btn btn-pbt" href="admin_search.php?clear=1" title="{L_CLEAR_OUT_CACHE}">
							<span>{L_CLEAR_OUT_CACHE}</span>
						</a>
					</div>
				</fieldset>
			</form>
			# ELSE #
			<form action="admin_search.php?weighting=true&amp;token={TOKEN}" method="post" class="form-horizontal">
				<fieldset>
					<legend>{L_SEARCH_CONFIG_WEIGHTING}</legend>

						<p>{L_SEARCH_CONFIG_WEIGHTING_EXPLAIN}</p>

						# START weights #
						<div class="form-group">
							<label class="control-label col-sm-4" for="{weights.MODULE}">{weights.L_MODULE_NAME}</label>
							<div class="col-sm-8">
								<input class="form-control" type="number" id="{weights.MODULE}" name="{weights.MODULE}" value="{weights.WEIGHT}" min="1" max="100">
							</div>
						</div>
						# END weights #
				</fieldset>

				<p class="text-center">
					<button type="submit" name="valid" value="true" class="btn btn-primary">{L_UPDATE}</button>
					<button type="reset" value="true" class="btn btn-default">{L_RESET}</button>
					<input type="hidden" name="token" value="{TOKEN}">
				</p>
			</form>
			# ENDIF #
		</div>
