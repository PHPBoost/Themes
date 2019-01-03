<script>
<!--
var HomeLandingFormFieldSliderConfig = function(){
	this.integer = {NBR_FIELDS};
	this.id_input = ${escapejs(ID)};
	this.max_input = {MAX_INPUT};
};

HomeLandingFormFieldSliderConfig.prototype = {
	add_field : function () {
		if (this.integer <= this.max_input) {
			var id = this.id_input + '_' + this.integer;

			jQuery('<div/>', {'id' : id, class : 'row'}).appendTo('#input_fields_' + this.id_input);

				jQuery('<textarea/> ', {id : 'field_description_' + id, name : 'field_description_' + id, class : 'col-sm-6', placeholder : '{@form.description}'}).appendTo('#' + id);
				jQuery('#' + id).append(' ');

				jQuery('<div/> ', {class : 'input-group col-sm-6', id : 'input-group_' + id}).appendTo('#' + id);
				jQuery('#' + id).append(' ');

					jQuery('<input/> ', {type : 'text', id : 'field_url_' + id, name : 'field_url_' + id, class : 'form-control', placeholder : '{@form.url} {@form.picture}'}).appendTo('#input-group_' + id);
					jQuery('#' + id).append(' ');

					jQuery('<span/> ', {class : 'input-group-btn', id : 'input-btn_' + id}).appendTo('#input-group_' + id);
					jQuery('#' + id).append(' ');

						jQuery('<a/> ', {href : '', title : '${LangLoader::get_message('files_management', 'main')}', class : 'btn btn-primary', onclick : "window.open('{PATH_TO_ROOT}/user/upload.php?popup=1&fd=field_url_" + id + "&parse=true&no_path=true', '', 'height=500,width=720,resizable=yes,scrollbars=yes');return false;"}).html('<i class="fa fa-cloud-upload"></i>').appendTo('#input-btn_' + id);
						jQuery('#' + id).append(' ');

						jQuery('<a/> ', {class : 'btn btn-danger', href : 'javascript:HomeLandingFormFieldSliderConfig.delete_field('+ this.integer +');'}).html('<i class="fa fa-delete"></i>').appendTo('#input-btn_' + id);



			this.integer++;
		}
		if (this.integer == this.max_input) {
			jQuery('#add-' + this.id_input).hide();
		}
	},
	delete_field : function (id) {
		var id = this.id_input + '_' + id;
		jQuery('#' + id).remove();
		this.integer--;
		jQuery('#add-' + this.id_input).show();
	}
};

var HomeLandingFormFieldSliderConfig = new HomeLandingFormFieldSliderConfig();
-->
</script>

<div id="input_fields_${escape(ID)}">
# START fieldelements #
	<div id="${escape(ID)}_{fieldelements.ID}" class="row">
		<textarea name="field_description_${escape(ID)}_{fieldelements.ID}" id="field_description_${escape(ID)}_{fieldelements.ID}" class="col-sm-6" placeholder="{@form.description}">{fieldelements.DESCRIPTION}</textarea>
		<div class="input-group col-sm-6" id="input-group_${escape(ID)}_{fieldelements.ID}">
			<input type="text" name="field_url_${escape(ID)}_{fieldelements.ID}" id="field_url_${escape(ID)}_{fieldelements.ID}" value="{fieldelements.URL}" placeholder="{@form.url} {@form.picture}" class="form-control"/>
			<span class="input-group-btn" id="input-btn_${escape(ID)}_{fieldelements.ID}">
				<a title="${LangLoader::get_message('files_management', 'main')}" href="" class="btn btn-primary" onclick="window.open('{PATH_TO_ROOT}/user/upload.php?popup=1&fd=field_url_${escape(ID)}_{fieldelements.ID}&parse=true&no_path=true', '', 'height=500,width=720,resizable=yes,scrollbars=yes');return false;">
					<i class="fa fa-cloud-upload"></i>
				</a>
				<a href="javascript:HomeLandingFormFieldSliderConfig.delete_field({fieldelements.ID});" class="btn btn-danger" data-confirmation="delete-element"><i class="fa fa-delete"></i></a>
			</span>
		</div>
	</div>
# END fieldelements #
</div>
<a href="javascript:HomeLandingFormFieldSliderConfig.add_field();" id="add-${escape(ID)}"><i class="fa fa-plus"></i></a>
