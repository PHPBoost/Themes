// source : http://snook.ca/archives/javascript/simplest-jquery-slideshow
$(function(){
	$('.fadein img:gt(0)').hide();
	setInterval(function(){$('.fadein :first-child').fadeOut("slow").next('img').fadeIn( "slow" ).end( "slow" ).appendTo('.fadein');}, 4000);
});
