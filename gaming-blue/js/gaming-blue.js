jQuery('<div/>', {class : 'unslider'}).appendTo('#' + 'extra');
jQuery('<ul/>').appendTo('.unslider');

jQuery('<li/>', {class : 'img-shadow'}).appendTo('#extra ul');
jQuery('<li/>', {class : 'img-shadow'}).appendTo('#extra ul');
jQuery('<li/>', {class : 'img-shadow'}).appendTo('#extra ul');
jQuery('<li/>', {class : 'img-shadow'}).appendTo('#extra ul');

let li_id = 0;
jQuery('.img-shadow').each(function() {
    jQuery(this).attr('id', li_id);
    jQuery(this).html('<img src="' + PATH_TO_ROOT + '/templates/' + THEME + '/slider/' + (li_id + 1) + '.jpg">')
    li_id++;
});

jQuery('.unslider').unslider();
