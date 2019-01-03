<div class="well well-sm">{L_INFO}</div>

# START item #
	<span class="label label-default">{item.TYPE}</span>
	<h4><a href="{PATH_TO_ROOT}/smallads/smallads.php\#smallads_{item.ID}">{item.TITLE}</a></h4>
	<div class="row">
		# IF item.C_PICTURE #
			<div class="col-sm-4">
				<img src="{item.PICTURE}" alt="" />
			</div>
			<div class="col-sm-8">
		# ELSE #
			<div class="col-sm-12">
		# ENDIF #
				{item.PRICE}&nbsp;{L_PRICE_UNIT}
				<p>{item.DATE}</p>
			</div>
	</div>
# END item #
<div class="text-center">
	<a class="btn btn-pbt" href="{U_HREF}">{L_ALL_SMALLADS}</a>
</div>
