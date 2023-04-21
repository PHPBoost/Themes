jQuery('#main-inner-container').prepend(jQuery('#menu-left')).append(jQuery('#menu-right'));

jQuery('#main').prepend(jQuery('.section-header').first(), jQuery('.cat-description'));

jQuery('.section-header').addClass('content-wrapper').append(jQuery('.cssmenu-actionslinks'));

jQuery(window).bind('beforeunload', function() {
    jQuery('#preloader').animate({ width: '100%' }, 300);
    jQuery('#loader').delay(300).animate({ opacity: 1, width: "120px", height: "120px" }, 300);
    jQuery('#preloader').delay(8000).animate({ width: 0 }, 100);
    jQuery('#loader').delay(8000).animate({ opacity: 0, width: 0, height: 0 }, 300);
});

jQuery(window).on('load', function() {
    jQuery('#preloader').delay(300).animate({ width: 0 }, 300);
    jQuery('#loader').animate({ opacity: 0, width: 0, height: 0 }, 300);
});
