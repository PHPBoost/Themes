jQuery(document).ready( () => {
    jQuery(window).scroll( () => {
      let rupture = jQuery('#header').outerHeight() ;
      if( jQuery(window).scrollTop() > rupture ) {
           jQuery('#header-container').addClass('fixed-header');
      } else {
           jQuery('#header-container').removeClass('fixed-header');
      }
    });
});
jQuery('#menus-trigger').on('click', () => {
    jQuery('#header-container').toggleClass('active-menus');
    jQuery('#menus-trigger').toggleClass('fa-times error');
});

// top for sicky menu on scroll
let headerHeight = jQuery('#site-name').outerHeight();
jQuery('.sticky-menu').css('top', headerHeight + 'px');
