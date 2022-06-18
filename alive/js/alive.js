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
	jQuery('#menus-trigger').toggleClass('fa-times error');
});

jQuery('#menus-trigger').opensubmenu({
	osmTarget: '#header-container',
	osmCloseExcept: '#header-container *',
	osmClass: 'active-menus'
});

// top for sicky menu on scroll
let headerHeight = jQuery('#site-name').outerHeight();
jQuery('.sticky-menu').css('top', headerHeight + 'px');
