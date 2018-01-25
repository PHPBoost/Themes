<script>
<!--
var GoogleMapsFormFieldMultipleMarkers = function(){
	this.integer = {NBR_FIELDS};
	this.id_input = ${escapejs(HTML_ID)};
	this.max_input = {MAX_INPUT};
};

GoogleMapsFormFieldMultipleMarkers.prototype = {
	add : function () {
		if (this.integer <= this.max_input) {
			var id = this.id_input + '-' + this.integer;

			jQuery('<div/>', {id : 'marker-' + id, class : 'mb15'}).appendTo('#input-fields-' + this.id_input);

			jQuery('<div/>', {id : 'field-' + id}).appendTo('#marker-' + id);

			jQuery('<div/>', {class : 'input-group', id : 'input-group-' + id}).appendTo('#field-' + id);
			jQuery('#field-' + id).append(' ');

			jQuery('<span/>', {class : 'input-group-addon'}).html('<i class="fa fa-map-o"></i>').appendTo('#input-group-' + id);
			jQuery('#input-group-' + id).append(' ');

			jQuery('<input/> ', {type : 'text', id : id, name : id, required : "required", placeholder : '{@form.marker.address}', class: 'form-control marker-control multiple-markers# IF C_CLASS # ${escape(CLASS)}# ENDIF #'}).appendTo('#input-group-' + id);
			jQuery('#input-group-' + id).append(' ');

			jQuery('<span/>', {class : 'input-group-addon'}).html('<i class="fa fa-map-marker"></i>').appendTo('#input-group-' + id);
			jQuery('#input-group-' + id).append(' ');

			jQuery('<input/> ', {type : 'text', id : 'name-' + id, name : 'name-' + id, placeholder : '{@form.marker.name}', class: 'form-control marker-control multiple-markers marker-name# IF C_CLASS # ${escape(CLASS)}# ENDIF #'}).appendTo('#input-group-' + id);
			jQuery('#input-group-' + id).append(' ');

			jQuery('<span/>', {class : 'input-group-btn', id : 'input-group-btn-' + id}).appendTo('#input-group-' + id);
			jQuery('#input-group-' + id).append(' ');

			jQuery('<a/> ', {class : 'btn btn-danger', href : 'javascript:GoogleMapsFormFieldMultipleMarkers.delete('+ this.integer +');', title : "${LangLoader::get_message('delete', 'common')}"}).html('<i class="fa fa-delete"></i>').appendTo('#input-group-btn-' + id);

			jQuery('<input/> ', {type : 'hidden', id : 'latitude-' + id, name : 'latitude-' + id}).appendTo('#field-' + id);
			jQuery('<input/> ', {type : 'hidden', id : 'longitude-' + id, name : 'longitude-' + id}).appendTo('#field-' + id);
			jQuery('<input/> ', {type : 'hidden', id : 'zoom-' + id, name : 'zoom-' + id}).appendTo('#field-' + id);

			jQuery('<div/>', {id : 'map-' + id, class: 'map-canvas'}).appendTo('#marker-' + id);

			jQuery('<script/>').html('jQuery("#' + id + '").on(\'blur\',function(){ var marker = jQuery("#' + id + '").geocomplete("marker"); if (jQuery("#' + id + '").val()) marker.setVisible(true); else marker.setVisible(false); }); jQuery(function(){ jQuery("#' + id + '").geocomplete({ map: "#map-' + id + '", location: [{DEFAULT_LATITUDE}, {DEFAULT_LONGITUDE}], types: ["geocode", "establishment"], markerOptions: { draggable: true, visible: false }, mapOptions: { scrollwheel: true } }); jQuery("#' + id + '").bind("geocode:dragged", function(event, latLng){ jQuery("input[name=latitude-' + id + ']").val(latLng.lat()); jQuery("input[name=longitude-' + id + ']").val(latLng.lng()); }); jQuery("#' + id + '").bind("geocode:idle", function(event, latLng){ jQuery("input[name=latitude-' + id + ']").val(latLng.lat()); jQuery("input[name=longitude-' + id + ']").val(latLng.lng()); }); jQuery("#' + id + '").bind("geocode:zoom", function(event, value){ jQuery("input[name=zoom-' + id + ']").val(value); }); });').appendTo('#marker-' + id);

			this.integer++;
		}
		if (this.integer == this.max_input) {
			jQuery('#add-' + this.id_input).hide();
		}
	},
	delete : function (id) {
		var id = 'marker-' + this.id_input + '-' + id;
		jQuery('#' + id).remove();
		this.integer--;
		jQuery('#add-' + this.id_input).show();
	},
};

var GoogleMapsFormFieldMultipleMarkers = new GoogleMapsFormFieldMultipleMarkers();
-->
</script>

<div id="input-fields-${escape(HTML_ID)}">
# START fieldelements #
	<div id="marker-${escape(HTML_ID)}-{fieldelements.ID}" class="mb15">
		<div id="field-${escape(HTML_ID)}-{fieldelements.ID}">
			<div class="input-group" id="input-group-${escape(HTML_ID)}-{fieldelements.ID}">
				<span class="input-group-addon"><i class="fa fw fa-map-o"></i></span>
				<input type="text" name="${escape(HTML_ID)}-{fieldelements.ID}" id="${escape(HTML_ID)}-{fieldelements.ID}" value="{fieldelements.ADDRESS}" placeholder="{@form.marker.address}" class="form-control multiple-markers# IF C_READONLY # low-opacity# ENDIF ## IF C_CLASS # ${escape(CLASS)}# ENDIF #" # IF C_DISABLED # disabled="disabled" # ENDIF # />
				<span class="input-group-addon"><i class="fa fw fa-map-marker"></i></span>
				<input type="text" name="name-${escape(HTML_ID)}-{fieldelements.ID}" id="name-${escape(HTML_ID)}-{fieldelements.ID}" value="{fieldelements.MARKER_NAME}" placeholder="{@form.marker.name}" class="form-control multiple-markers marker-name# IF C_READONLY # low-opacity# ENDIF ## IF C_CLASS # ${escape(CLASS)}# ENDIF #" # IF C_DISABLED # disabled="disabled" # ENDIF # />
				<span class="input-group-btn" id="input-group-btn-${escape(HTML_ID)}-{fieldelements.ID}">
					<a class="btn btn-danger" href="javascript:GoogleMapsFormFieldMultipleMarkers.delete({fieldelements.ID});" title="${LangLoader::get_message('delete', 'common')}" data-confirmation="delete-element"><i class="fa fa-delete"></i></a>
				</span>
			</div>
			<input type="hidden" id="latitude-${escape(HTML_ID)}-{fieldelements.ID}" name="latitude-${escape(HTML_ID)}-{fieldelements.ID}" value="{fieldelements.LATITUDE}" />
			<input type="hidden" id="longitude-${escape(HTML_ID)}-{fieldelements.ID}" name="longitude-${escape(HTML_ID)}-{fieldelements.ID}" value="{fieldelements.LONGITUDE}" />
			<input type="hidden" id="zoom-${escape(HTML_ID)}-{fieldelements.ID}" name="zoom-${escape(HTML_ID)}-{fieldelements.ID}" value="{fieldelements.ZOOM}" />

		</div>
		<div class="map-canvas" id="map-${escape(HTML_ID)}-{fieldelements.ID}"></div>
		<script>
		<!--
		jQuery("#${escape(HTML_ID)}-{fieldelements.ID}").on('blur',function(){
			var marker = jQuery("#${escape(HTML_ID)}-{fieldelements.ID}").geocomplete("marker");
			if (jQuery("#${escape(HTML_ID)}-{fieldelements.ID}").val())
				marker.setVisible(true);
			else
				marker.setVisible(false);
		});

		jQuery(function(){
			# IF fieldelements.C_ADDRESS #
			var address = "{fieldelements.ADDRESS}";
			# ELSE #
			var address = [{DEFAULT_LATITUDE}, {DEFAULT_LONGITUDE}];
			# ENDIF #

			jQuery("#${escape(HTML_ID)}-{fieldelements.ID}").geocomplete({
				map: "#map-${escape(HTML_ID)}-{fieldelements.ID}",
				location: # IF fieldelements.C_COORDONATES #[{fieldelements.LATITUDE}, {fieldelements.LONGITUDE}]# ELSE #address# ENDIF #,
				types: ["geocode", "establishment"],
				markerOptions: {
					draggable: true# IF NOT fieldelements.C_ADDRESS #,
					visible: false# ENDIF #
				},
				mapOptions: {
					scrollwheel: true# IF fieldelements.C_ZOOM #,
					zoom: {fieldelements.ZOOM}# ENDIF #
				}
			});

			jQuery("#${escape(HTML_ID)}-{fieldelements.ID}").bind("geocode:dragged", function(event, latLng){
				jQuery("input[name=latitude-${escape(HTML_ID)}-{fieldelements.ID}]").val(latLng.lat());
				jQuery("input[name=longitude-${escape(HTML_ID)}-{fieldelements.ID}]").val(latLng.lng());
			});

			jQuery("#${escape(HTML_ID)}-{fieldelements.ID}").bind("geocode:idle", function(event, latLng){
				jQuery("input[name=latitude-${escape(HTML_ID)}-{fieldelements.ID}]").val(latLng.lat());
				jQuery("input[name=longitude-${escape(HTML_ID)}-{fieldelements.ID}]").val(latLng.lng());
			});

			jQuery("#${escape(HTML_ID)}-{fieldelements.ID}").bind("geocode:zoom", function(event, value){
				jQuery("input[name=zoom-${escape(HTML_ID)}-{fieldelements.ID}]").val(value);
			});
		});
		-->
		</script>
	</div>
# END fieldelements #
</div>
<a href="javascript:GoogleMapsFormFieldMultipleMarkers.add();" id="add-${escape(HTML_ID)}" class="btn btn-success" title="${LangLoader::get_message('add', 'common')}"><i class="fa fa-plus"></i></a>

# IF C_INCLUDE_API #
<script src="//maps.googleapis.com/maps/api/js?key={API_KEY}&amp;libraries=places"></script>
<script src="{PATH_TO_ROOT}/GoogleMaps/templates/js/jquery.geocomplete.js"></script>
# ENDIF #
