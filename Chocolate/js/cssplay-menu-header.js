$(document).ready(function () {
	menuWidth = $('.cssplay_responsive').attr('data-mobile');
	mini = false;
	hidden = true;

$(window).resize(function() {
	winWidth = $(window).width();
	if ((menuWidth >= winWidth) && !mini) {
		$('.cssplay_responsive').removeClass('cssplay_menu').addClass('cssplay_menu_mini').removeAttr('style'); 
		mini=true;
	}
	if ((menuWidth < winWidth) && mini) {
		$('.cssplay_responsive').removeClass('cssplay_menu_mini').addClass('cssplay_menu').removeAttr('style');
		$('html').removeAttr('style');
		$('.cssplay_overlay').hide();
		$('body').off('touchmove');
		mini=false;
	}
}).resize();

$('.cssplay_toggle').click(function(){
	$('html').css({overflow:'hidden'});
	$('body').on('touchmove', function (e) {
		if (!$('.cssplay_responsive').has($(e.target)).length) e.preventDefault();});
	$('.cssplay_responsive').animate({left:0},500);
	$('.cssplay_overlay').fadeIn();
});
$('.return').click(function(){
	$('body').off('touchmove');
	$('html').css({overflow:'auto'});
	$('.cssplay_responsive').animate({left:-300},500);
	$('.cssplay_overlay').fadeOut();
});
$('.cssplay_overlay').click(function(){
	$('body').off('touchmove');
	$('html').css({overflow:'auto'});
	$('.cssplay_responsive').animate({left:-300},500);
	$(this).fadeOut();
});

/* close an open mobile menu if back button is used to return to this page */
$(window).on("pageshow", function() {
	if (mini) {
		$('body').off('touchmove');
		$('html').css({overflow:'auto'});
		$('.cssplay_responsive').css({left:-300});
		$('.cssplay_overlay').fadeOut();
	}
});

});
