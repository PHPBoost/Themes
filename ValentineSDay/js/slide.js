// source : http://snook.ca/archives/javascript/simplest-jquery-slideshow
$(function(){
	$('.fadein img:gt(0)').hide();
	setInterval(function(){$('.fadein :first-child').fadeOut().next('img').fadeIn( ).end( ).appendTo('.fadein');}, 4000);
});
