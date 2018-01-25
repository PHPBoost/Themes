<script>
<!--
var ArticlesFormFieldSelectSources = function(){
	this.integer = ${escapejs(NBR_FIELDS)};
	this.id_input = ${escapejs(ID)};
	this.max_input = ${escapejs(MAX_INPUT)};
};

ArticlesFormFieldSelectSources.prototype = {
	add_field : function () {
		if (this.integer <= this.max_input) {
			var id = this.id_input + '_' + this.integer;

			jQuery('<div/>', {'id' : id, class : 'input-group'}).appendTo('#input_fields_' + this.id_input);

			jQuery('<input/> ', {type : 'text', id : 'field_name_' + id, name : 'field_name_' + id, class : 'form-control', placeholder : '{@form.source.name}'}).appendTo('#' + id);
			jQuery('#' + id).append(' ');

			jQuery('<span/> ', {class : 'input-group-addon input-group-separator'}).appendTo('#' + id);
			jQuery('#' + id).append(' ');

			jQuery('<input/> ', {type : 'url', id : 'field_value_' + id, name : 'field_value_' + id, class : 'form-control', placeholder : '{@form.source.url}'}).appendTo('#' + id);
			jQuery('#' + id).append(' ');

			jQuery('<a/> ', {class : 'input-group-addon',href : 'javascript:ArticlesFormFieldSelectSources.delete_field('+ this.integer +');'}).html('<i class="fa fa-delete"></i>').appendTo('#' + id);

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

var ArticlesFormFieldSelectSources = new ArticlesFormFieldSelectSources();
-->
</script>

<div id="input_fields_${escape(ID)}">
# START fieldelements #
		<div id="${escape(ID)}_{fieldelements.ID}" class="input-group">
			<input class="form-control" type="text" name="field_name_${escape(ID)}_{fieldelements.ID}" id="field_name_${escape(ID)}_{fieldelements.ID}" value="{fieldelements.NAME}" placeholder="{@form.source.name}"/>
			<span class="input-group-addon input-group-separator"></span>
			<input class="form-control" type="url" name="field_value_${escape(ID)}_{fieldelements.ID}" id="field_value_${escape(ID)}_{fieldelements.ID}" value="{fieldelements.VALUE}" placeholder="{@form.source.url}"/>
			<a class="input-group-addon" href="javascript:ArticlesFormFieldSelectSources.delete_field({fieldelements.ID});" data-confirmation="delete-element"><i class="fa fa-delete"></i></a>
		</div>
# END fieldelements #
</div>
<a href="javascript:ArticlesFormFieldSelectSources.add_field();" id="add-${escape(ID)}" class="field-source-more-value" title="${LangLoader::get_message('add', 'common')}"><i class="fa fa-plus"></i></a>
