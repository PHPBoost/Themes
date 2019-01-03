
// Smooth scroll to div id "#" jQuery
// Source : http://www.codexworld.com/smooth-scroll-to-div-using-jquery/
// DEMO http://jsfiddle.net/dizel3d/1eamwt4e/

    $(function() {
        $('.js-scrollTo').click(function() {
            var target = $(this.hash);
            target = target.length ? target : $('[name=' + this.hash.substr(1) +']');
            if (target.length) {
				$('html,body').animate({
				  scrollTop: target.offset().top
				}, 1000);
				return false;
            }
        });
    });
