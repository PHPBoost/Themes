# IF C_VERTICAL #
<div class="langs-switcher-vertical">
	<form action="{REWRITED_SCRIPT}" method="get" class="form-group">
		<select class="form-control" name="switchlang" onchange="document.location = '?switchlang=' + this.options[this.selectedIndex].value;">
		# START langs #
			<option value="{langs.IDNAME}"# IF langs.C_SELECTED # selected="selected"# ENDIF #>{langs.NAME}</option>
		# END langs #
		</select>
		<div class="text-center">
			<a class="btn btn-default" href="?switchlang={DEFAULT_LANG}">{@default_lang}</a>
		</div>
	</form>
</div>
# ELSE #
<div class="langs-switcher-horizontal">
	<form action="{REWRITED_SCRIPT}" method="get" class="form-group">
		<div class="input-group">
			<span class="input-group-addon">
				<i class="fa fa-flag"></i>
			</span>
			<select class="form-control" name="switchlang" onchange="document.location = '?switchlang=' + this.options[this.selectedIndex].value;">
			# START langs #
				<option value="{langs.IDNAME}"# IF langs.C_SELECTED # selected="selected"# ENDIF #>{langs.NAME}</option>
			# END langs #
			</select>
			<span class="input-group-addon btn-pbt">
				<a href="?switchlang={DEFAULT_LANG}">{@default_lang}</a>
			</span>
		</div>
	</form>
</div>
# ENDIF #
