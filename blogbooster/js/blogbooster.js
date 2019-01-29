$.fn.swapMini = function() {
    jQuery(this).find('.module-mini-top').on('click',function() {
        jQuery(this).parent().toggleClass('opened');
        if(jQuery(this).parent().hasClass('opened')) {
            value = jQuery(this).parent().find('.module-mini-contents').innerHeight();
            openedHeight = (value + 60);
        } else {
            openedHeight = 60;
        }
        jQuery(this).parent().css('height', openedHeight+'px');
    });
};
