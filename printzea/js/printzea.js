var leftMenu = jQuery('#menu-left');

if(window.matchMedia('(max-width: 768px)').matches)
    jQuery('#global-container').prepend(leftMenu);
else
    jQuery('#header-overlay').append(leftMenu);

jQuery(window).on('resize', function() {
    if(window.matchMedia('(max-width: 768px)').matches)
        jQuery('#global-container').prepend(leftMenu);
    else
        jQuery('#header-overlay').append(leftMenu);
});

jQuery('#menu-left .cssmenu').each(function(){
    jQuery(this).removeClass('cssmenu-vertical cssmenu-left cssmenu-with-submenu');
});
