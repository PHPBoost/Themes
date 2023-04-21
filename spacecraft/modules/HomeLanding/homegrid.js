// grid constructor
jQuery.fn.homeGrid = function(options) {

    var settings = jQuery.extend({
		smallBreakpoint: 768,
		smallColumns: 2,
		mediumBreakpoint: 1366,
		mediumColumns: 3,
		largeBreakpoint: 1440,
		largeColumns: 3,
		gap: '1.618em'
    }, options);

	var $this = jQuery(this), columns, hasGap;

	$this.css({
		'display': 'flex',
		'flex-wrap': 'wrap',
	});

	if (jQuery(window).innerWidth() >= settings.largeBreakpoint)
		columns = settings.largeColumns;
	else if (jQuery(window).innerWidth() >= settings.mediumBreakpoint)
		columns = settings.mediumColumns;
	else if (jQuery(window).innerWidth() >= settings.smallBreakpoint)
		columns = settings.smallColumns;
	else
		columns = 1;

	if (jQuery(window).innerWidth() < settings.smallBreakpoint)
	{
		$this.css('margin', 0);
		$this.children().each(function(){
			jQuery(this).css({
				'width': '100%',
				'margin': '0 0 ' + settings.gap
			});
		});
	}
	else
	{
		$this.css('margin', '0 -' + settings.gap + ' -' + settings.gap + ' 0');
		$this.children().each(function(){
			jQuery(this).css({
				'width': 'calc(100% / ' + columns + ' - ' + settings.gap + ')',
				'margin': '0 ' + settings.gap + ' ' + settings.gap + ' 0'
			});
		});
	}

	jQuery(window).on('resize', function(){
		if (jQuery(window).innerWidth() >= settings.largeBreakpoint)
			columns = settings.largeColumns;
		else if (jQuery(window).innerWidth() >= settings.mediumBreakpoint)
			columns = settings.mediumColumns;
		else if (jQuery(window).innerWidth() >= settings.smallBreakpoint)
			columns = settings.smallColumns;
		else
			columns = 1;

		if (jQuery(window).innerWidth() < settings.smallBreakpoint)
		{
			$this.css('margin', 0);
			$this.children().each(function(){
				jQuery(this).css({
					'width': '100%',
					'margin': '0 0 ' + settings.gap
				});
			});
		}
		else
		{
			$this.css('margin', '0 -' + settings.gap + ' -' + settings.gap + ' 0');
			$this.children().each(function(){
				jQuery(this).css({
					'width': 'calc(100% / ' + columns + ' - ' + settings.gap + ')',
					'margin': '0 ' + settings.gap + ' ' + settings.gap + ' 0'
				});
			});
		}
	});
};

// grid animation
    var $animation_elements = jQuery('.animate');
	var $window = jQuery(window);

	function check_if_in_view() {
	  var window_height = $window.height();
	  var window_top_position = $window.scrollTop();
	  var window_bottom_position = (window_top_position + window_height);

	  jQuery.each($animation_elements, function(i) {
	    var $element = jQuery(this);
	    var element_height = $element.outerHeight();
	    var element_top_position = $element.offset().top;
	    var element_bottom_position = (element_top_position + element_height);

	    //check to see if this current container is within viewport
	    if ((element_bottom_position >= window_top_position) && (element_top_position <= window_bottom_position)) {
	     	$element.addClass('in-view');
	    }
	  });
	}
    setTimeout(function () {
    	$window.on('scroll resize', check_if_in_view);
    	$window.trigger('scroll');
    }, 1500);
