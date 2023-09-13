// Header position
    let $window = jQuery(window);
    let $header = jQuery('#site-infos');

    function checkWidth() {
        let windowsize = $window.width();
        if (windowsize > 769) 
        {
            if (jQuery('#menu-left').length || jQuery('#menu-right').length)
            {
                $header.addClass('is-sided');
            }
            if (jQuery('#menu-left').length)
            {
                $header.prependTo('#menu-left');
            }
            else if (jQuery('#menu-right').length)
            {
                $header.prependTo('#menu-right');
            }
            else
            {
                $header.prependTo('#inner-header-container');
            }
        }
        if (windowsize < 769) 
        {
            $header.prependTo('#inner-header-container');
        }
    }
    checkWidth();
    jQuery(window).resize(checkWidth);

 // Random background
    let image = new Array ();
    image[0] = "000.jpg";
    image[1] = "001.jpg";
    image[2] = "002.jpg";
    image[3] = "003.jpg";
    image[4] = "004.jpg";
    image[5] = "005.jpg";

    let hasard = Math.floor(Math.random() * image.length);

    jQuery('.body-wrapper').css({'background-image': 'url(' + PATH_TO_ROOT + '/templates/' + THEME + '/theme/images/bg/' + image[hasard] + ')'});

// header padding
    let innerHeader = jQuery('#inner-header-content').length;
    if (!innerHeader)
    {
        jQuery('#inner-header').css('padding', '0');
        jQuery('#sub-header').css('padding', '0.618em 0 0')
    }