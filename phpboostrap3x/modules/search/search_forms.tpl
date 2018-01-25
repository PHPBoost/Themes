		<script>
		<!--
			const FORM = 'form-';
			const SPECIALIZED_FORM_LINK = 'specialize-form-link-';
			var LastSpecializedFormUsed = '{SEARCH_MODE_MODULE}';

			function ChangeForm(module)
			// Change le cadre des résultats
			{
				jQuery('#' + FORM + LastSpecializedFormUsed).fadeOut();
				jQuery('#' + FORM + module).fadeIn();

				document.getElementById(SPECIALIZED_FORM_LINK + LastSpecializedFormUsed).className = 'list-group-item';

				LastSpecializedFormUsed = module;
				document.getElementById('search-in').value = module;

				document.getElementById(SPECIALIZED_FORM_LINK + module).className = 'list-group-item active';
			}

			function check_search_form_post()
			// Vérifie la validité du formulaire
			{
				var textSearched = document.getElementById("TxTsearched").value;
				if ( textSearched.length > 3 && textSearched != '{L_SEARCH}...')
				{
					textSearched = escape_xmlhttprequest(textSearched);
					return true;
				}
				else
				{
					alert({L_WARNING_LENGTH_STRING_SEARCH});
					return false;
				}
			}
		-->
		</script>

	   <section id="module-search">
		    <header>
				<h1>{L_TITLE_SEARCH}</h1>
			</header>
			<form action="{U_FORM_VALID}" onsubmit="return check_search_form_post();" method="post">
				<div class="input-group">
					<input type="search" id="TxTsearched" name="q" value="{TEXT_SEARCHED}" class="form-control" placeholder="{L_SEARCH}...">
					<div class="input-group-btn">
						<button type="submit" name="search_submit" value="{L_SEARCH}" class="btn btn-primary"><i class="fa fa-search"></i></button>
					</div>
				</div>
				<input type="hidden" id="search-in" name="search_in" value="all">
				<input type="hidden" name="query_mode" value="0">
				<input type="hidden" name="token" value="{TOKEN}">

				<div class="row" id="search-details">
					<div class="col-md-4">
						<div id="forms-selection" class="list-group">
							<a id="specialize-form-link-all" href="javascript:ChangeForm('all');"  class="list-group-item# IF C_SIMPLE_SEARCH # active# ENDIF #">{L_SEARCH_ALL}</a>
							# START forms #
							<a id="specialize-form-link-{forms.MODULE_NAME}" href="javascript:ChangeForm('{forms.MODULE_NAME}');" class="list-group-item# IF forms.C_SELECTED # active# ENDIF #">{forms.L_MODULE_NAME}</a>
							# END forms #
						</div>
					</div>
					<div id="form-all" class="col-md-8" # IF NOT C_SIMPLE_SEARCH # style="display:none" # ENDIF #>
						<h4>{L_SEARCH_IN_MODULES}</h4>
						<p>{L_SEARCH_IN_MODULES_EXPLAIN}</p>
						<select class="form-control" id="searched-modules" name="searched_modules[]" multiple data-width="100%">
						# START searched_modules #
							<option value="{searched_modules.MODULE}" {searched_modules.SELECTED}>{searched_modules.L_MODULE_NAME}</option>
						# END searched_modules #
						</select>
					</div>
					# START forms #
					<div id="form-{forms.MODULE_NAME}" class="col-md-8" # IF NOT forms.C_SELECTED # style="display:none" # ENDIF #>
						# IF forms.C_SEARCH_FORM #{forms.SEARCH_FORM}# ELSE #<p class="center-block">{forms.SEARCH_FORM}</p># ENDIF #
					</div>
					# END forms #
				</div>
			</form>
			<footer></footer>
		</section>
		<script>
		<!--
			ChangeForm('{SEARCH_MODE_MODULE}');
		-->
		</script>
