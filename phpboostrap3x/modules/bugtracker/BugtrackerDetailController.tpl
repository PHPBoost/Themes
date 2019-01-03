<span class="sr-only">${LangLoader::get_message('form.options', 'common')}</span>
<ul class="nav nav-pills nav-justified">
	# IF C_CHANGE_STATUS #
		<li><a href="{U_CHANGE_STATUS}" title="{@actions.change_status}" class="cssmenu-title"><i class="fa fa-gears"></i> {@actions.change_status}</a></li>
	# ENDIF #
		<li><a href="{U_HISTORY}" title="{@actions.history}" class="cssmenu-title"><i class="fa fa-history"></i> {@actions.history}</a></li>
	# IF C_EDIT_BUG #
		<li><a href="{U_EDIT}" title="${LangLoader::get_message('edit', 'common')}" class="cssmenu-title"><i class="fa fa-edit"></i></a></li>
	# ENDIF #
	# IF C_DELETE_BUG #
		<li><a href="{U_DELETE}" title="${LangLoader::get_message('delete', 'common')}" class="cssmenu-title"><i class="fa fa-delete"></i></a></li>
	# ENDIF #
</ul>

<ul class="list-group">
	<li class="list-group-item list-group-item-warning row">{@titles.bugs_treatment_state}</li>
	# IF C_PROGRESS #
	<li class="list-group-item row">
		<div class="col-sm-4">{@labels.fields.progress}</div>
		<div class="col-sm-8">
			<div class="progress">
				<div class="progressbar" aria-valuenow="{PROGRESS}" aria-valuemin="0" aria-valuemax="100" style="width:{PROGRESS}%">
					<span class="sr-only">{PROGRESS}%</span>
				</div>
			</div>
		</div>
	</li>
	# ENDIF #
	<li class="list-group-item row">
		<div class="col-sm-4">{@labels.fields.status}</div>
		<div class="col-sm-8">{STATUS}</div>
	</li>
	<li class="list-group-item row">
		<div class="col-sm-4">{@labels.fields.assigned_to_id}</div>
		<div class="col-sm-8"># IF C_USER_ASSIGNED #<a href="{LINK_USER_ASSIGNED_PROFILE}" class="{USER_ASSIGNED_LEVEL_CLASS}" # IF C_USER_ASSIGNED_GROUP_COLOR # style="color:{USER_ASSIGNED_GROUP_COLOR}" # ENDIF #>{USER_ASSIGNED}</a># ELSE #{@notice.no_one}# ENDIF #</div>
	</li>
	# IF C_FIXED_IN #
	<li class="list-group-item row">
		<div class="col-sm-4">{@labels.fields.fixed_in}</div>
		<div class="col-sm-8">{FIXED_IN}</div>
	</li>
	# ENDIF #
</ul>

<div class="panel panel-default row">
	<div class="panel-heading">{TITLE}</div>
	<div class="panel-body">{CONTENTS}</div>
	<div class="panel-footer text-right">${LangLoader::get_message('by', 'common')} # IF C_AUTHOR_EXIST #<a href="{U_AUTHOR_PROFILE}" class="{AUTHOR_LEVEL_CLASS}" # IF C_AUTHOR_GROUP_COLOR # style="color:{AUTHOR_GROUP_COLOR}" # ENDIF #>{AUTHOR}</a># ELSE #{AUTHOR}# ENDIF #, ${TextHelper::lcfirst(LangLoader::get_message('the', 'common'))} {SUBMIT_DATE_FULL}</div>
</div>

<ul class="list-group">
	<li class="list-group-item list-group-item-info row">{@titles.bugs_infos}</li>
	# IF NOT C_EMPTY_TYPES #
	<li class="list-group-item row">
		<div class="col-sm-4">{@labels.fields.type}</div>
		<div class="col-sm-8">{TYPE}</div>
	</li>
	# ENDIF #
	# IF NOT C_EMPTY_CATEGORIES #
	<li class="list-group-item row">
		<div class="col-sm-4">{@labels.fields.category}</div>
		<div class="col-sm-8">{CATEGORY}</div>
	</li>
	# ENDIF #
	# IF NOT C_EMPTY_SEVERITIES #
	<li class="list-group-item row">
		<div class="col-sm-4">{@labels.fields.severity}</div>
		<div class="col-sm-8">{SEVERITY}</div>
	</li>
	# ENDIF #
	# IF NOT C_EMPTY_PRIORITIES #
	<li class="list-group-item row">
		<div class="col-sm-4">{@labels.fields.priority}</div>
		<div class="col-sm-8">{PRIORITY}</div>
	</li>
	# ENDIF #
	# IF NOT C_EMPTY_VERSIONS #
	<li class="list-group-item row">
		<div class="col-sm-4">{@labels.fields.version}</div>
		<div class="col-sm-8">{DETECTED_IN}</div>
	</li>
	# ENDIF #
	<li class="list-group-item row">
		<div class="col-sm-4">{@labels.fields.reproductible}</div>
		<div class="col-sm-8"># IF C_REPRODUCTIBLE #${LangLoader::get_message('yes', 'common')}# ELSE #${LangLoader::get_message('no', 'common')}# ENDIF #</div>
	</li>
</ul>

# IF C_REPRODUCTION_METHOD #
<fieldset>
	<legend>{@labels.fields.reproduction_method}</legend>
	<div class="content">{REPRODUCTION_METHOD}</div>
</fieldset>
# ENDIF #

<div class="clearfix"></div>

# INCLUDE COMMENTS #
