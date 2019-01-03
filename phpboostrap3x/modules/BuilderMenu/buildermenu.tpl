
<a class="btn btn-pbt buildermenu-btn"><i class="fa fa-wrench"></i></a>
<div id="buildermenu" class="row">
	# IF IS_ADMIN #
	<div class="col-md-4">
		<div class="panel panel-pbt">
			<div class="panel-heading">{@menu.tools}</div>
			<ul class="list-group">
				<li class="list-group-item"><a href="{PATH_TO_ROOT}/admin/menus/menus.php">{@menu.menus}</a></li>
				<li class="list-group-item"><a href="${relative_url(AdminCacheUrlBuilder::clear_cache())}">{@menu.empty.cache}</a></li>
				<li class="list-group-item has-sub">
					<a href="#cache" class="toggle-btn" data-toggle="collapse"><i class="fa fa-chevron-right"></i> {@menu.cache}</a>
					<ul id="cache" class="list-group collapse">
						<li class="list-group-item"><a href="{U_CLEAR_CACHE}">{@menu.empty.cache}</a></li>
						# IF C_CSS_CACHE_ENABLED #
							<li class="list-group-item"><a href="{U_DISABLE_CSS}">{@menu.disable.css.cache}</a></li>
							<li class="list-group-item"><a href="{U_CLEAR_CSS_CACHE}">{@menu.empty.css.cache}</a></li>
						# ELSE #
							<li class="list-group-item"><a href="{U_ENABLE_CSS}">{@menu.enable.css.cache}</a></li>
						# ENDIF #
					</ul>
				</li>
				<li class="list-group-item"><a href="${relative_url(AdminErrorsUrlBuilder::logged_errors())}">{@menu.tools.e} ({ERRORS_NB})</a></li>
				<li class="list-group-item"><a href="{PATH_TO_ROOT}/database/admin_database.php">{@menu.tools.b}</a></li>
			</ul>
		</div>
	</div>

	<div class="col-md-4">
		<div class="panel panel-pbt">
			<div class="panel-heading">{@menu.config}</div>
			<ul class="list-group">
				<li class="list-group-item"><a href="${relative_url(AdminConfigUrlBuilder::general_config())}">{@menu.config.g}</a></li>
				<li class="list-group-item"><a href="${relative_url(AdminConfigUrlBuilder::advanced_config())}">{@menu.config.a}</a></li>
				<li class="list-group-item has-sub">
					<a href="#themes" class="toggle-btn" data-toggle="collapse"><i class="fa fa-chevron-right"></i> {@menu.theme}</a>
					<ul id="themes" class="list-group collapse">
						<li class="list-group-item"><a href="${relative_url(AdminThemeUrlBuilder::list_installed_theme())}">{@menu.theme.g}</a></li>
						<li class="list-group-item"><a href="${relative_url(AdminThemeUrlBuilder::add_theme())}">{@menu.theme.a}</a></li>
					</ul>
				</li>
				<li class="list-group-item has-sub">
					<a href="#modules" class="toggle-btn" data-toggle="collapse"><i class="fa fa-chevron-right"></i> {@menu.mod}</a>
					<ul id="modules" class="list-group collapse">
						<li><a href="${relative_url(AdminModulesUrlBuilder::list_installed_modules())}">{@menu.mod.g}</a></li>
						<li><a href="${relative_url(AdminModulesUrlBuilder::add_module())}">{@menu.mod.a}</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</div>

	# ENDIF #
	<div class="col-md-4">
		<div class="panel panel-pbt">
			<div class="panel-heading">{@menu.new.mod}</div>
			<ul class="list-group">
				<li class="list-group-item"><a href="{PATH_TO_ROOT}/agenda">Agenda</a></li>
				<li class="list-group-item"><a href="{PATH_TO_ROOT}/radio">Radio</a></li>
				<li class="list-group-item"><a href="{PATH_TO_ROOT}/tracks">Tracks</a></li>
				<li class="list-group-item has-sub">
					<a href="#modules-mini" class="toggle-btn" data-toggle="collapse"><i class="fa fa-chevron-right"></i> {@menu.mini.mod}</a>
					<ul id="modules-mini" class="list-group collapse">
						<li><a href="{PATH_TO_ROOT}/BuilderMenu/admin/config/">Admin BuilderMenu</a></li>
						<li><a href="{PATH_TO_ROOT}/countdown/admin/config/">Admin Countdown</a></li>
						<li><a href="{PATH_TO_ROOT}/NetworkLinks/admin/config/">Admin NetworkLinks</a></li>
						<li><a href="{PATH_TO_ROOT}/lastcoms/admin/config/">Admin Lastcoms</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</div>
</div>
<script>
	jQuery("#buildermenu").hide();
	jQuery(".buildermenu-btn").click(function() {
		if(jQuery('#buildermenu').css('display') == 'none') {
			jQuery("#buildermenu").slideToggle("slow", function() {
				jQuery("#buildermenu").show();
			});
		}else {
			jQuery("#buildermenu").slideToggle("slow", function() {
				jQuery("#buildermenu").hide();
			});
		};
	});

	$('#buildermenu .toggle-btn').on('click', function() {
	    $('.fa', this)
	      .toggleClass('fa-chevron-right')
	      .toggleClass('fa-chevron-down');
	  });
</script>
