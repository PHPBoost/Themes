		<script>
		<!--
			function add_filter(nbr_filter)
			{
				if (typeof this.max_filter_p == 'undefined' )
					this.max_filter_p = nbr_filter;
				else
					this.max_filter_p++;

				var new_id = this.max_filter_p + 1;
				document.getElementById('add_filter' + this.max_filter_p).innerHTML +=
					'<div class="input-group" id="filter' + new_id + '"><span class="input-group-addon">{PATH_TO_ROOT} /</span> <select class="form-control filter-control" name="filter_module' + new_id + '" id="filter_module' + new_id + '">' +
					# START modules #
					'<option value="{modules.ID}">{modules.ID}</option>' +
					# END modules #
					'</select> <input class="form-control filter-control" type="text" name="f' + new_id + '" id="f' + new_id + '" value="">' +
					' <span class="input-group-btn"><a href="javascript:delete_filter(' + new_id + ');" class="btn btn-danger"><i class="fa fa-delete"></i></a></span></div>' +
					'<span id="add_filter' + new_id + '"></span>';
			}
			function delete_filter(id) {
				document.getElementById('f' + id).value = '_deleted';
				document.getElementById('filter_module' + id).value = '';
				document.getElementById('filter' + id).style.display = 'none';
			}
		-->
		</script>

		<fieldset>
			<legend>{@filters}</legend>
			<p>
				{@links_menus_filters_explain}
			</p>
			<div class="form-horizontal">
				<label class="control-label col-sm-4">{@filters}</label>
				<div class="col-sm-8">
					# START filters #
					<div class="input-group" id="filter{filters.ID}">
						<span class="input-group-addon">
							{PATH_TO_ROOT} /
						</span>
						<select name="filter_module{filters.ID}" id="filter_module{filters.ID}" class="form-control filter-control">
							# START filters.modules #
							<option value="{filters.modules.ID}"{filters.modules.SELECTED}>{filters.modules.ID}</option>
							# END filters.modules #
						</select>
						<input type="text" name="f{filters.ID}" id="f{filters.ID}" class="form-control filter-control" value="{filters.FILTER}">
						<span class="input-group-btn">
							<a href="javascript:delete_filter({filters.ID});" class="btn btn-danger">
								<i class="fa fa-delete"></i>
							</a>
						</span>
					</div>
					# END filters #

					<span id="add_filter{NBR_FILTER}"></span>
					<p class="text-right">
						<a href="javascript:add_filter({NBR_FILTER})" title="{@add_filter}" class="btn btn-success"><i class="fa fa-plus"></i></a>
					</p>
				</div>
			</div>
	    </fieldset>
