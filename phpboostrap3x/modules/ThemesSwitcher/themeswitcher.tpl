# IF C_VERTICAL #
<div class="themes-switcher-vertical">
	<form action="{REWRITED_SCRIPT}" method="get" class="form-group">
		<select class="form-control" name="switchtheme" onchange="document.location = '?switchtheme=' + this.options[this.selectedIndex].value;">
		# START themes #
			<option value="{themes.IDNAME}"# IF themes.C_SELECTED# selected="selected"# ENDIF #>{themes.NAME}</option>
		# END themes #
		</select>
		<div class="text-center">
			<a class="btn btn-default" href="?switchtheme={DEFAULT_THEME}">{@defaut_theme}</a>
		</div>
	</form>
</div>
# ELSE #
<div class="themes-switcher-horizontal">
	<form action="{REWRITED_SCRIPT}" method="get" class="form-group">
		<div class="input-group">
			<span class="input-group-addon">
				<i class="fa fa-picture-o"></i>
			</span>
			<select class="form-control" name="switchtheme" onchange="document.location = '?switchtheme=' + this.options[this.selectedIndex].value;">
			# START themes #
				<option value="{themes.IDNAME}"# IF themes.C_SELECTED# selected="selected"# ENDIF #>{themes.NAME}</option>
			# END themes #
			</select>
			<span class="input-group-addon btn-pbt">
				<a href="?switchtheme={DEFAULT_THEME}">{@defaut_theme}</a>
			</span>
		</div>
	</form>
</div>
# ENDIF #
