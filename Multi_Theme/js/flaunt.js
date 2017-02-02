/*
	Flaunt.js v1.0.0
	by Todd Motto: http://www.toddmotto.com
	Latest version: https://github.com/toddmotto/flaunt-js
	
	Copyright 2013 Todd Motto
	Licensed under the MIT license
	http://www.opensource.org/licenses/mit-license.php

	Flaunt JS, stylish responsive navigations with nested click to reveal.
*/
;(function($) {

	// DOM ready
	$(function() {
		
		// Append the mobile icon nav
		$('.nav').append($('<div class="nav-mobile"></div>'));
		
		// Add a <span> to every .nav-item that has a <ul> inside
		$('.nav-item').has('ul').prepend('<span class="nav-click"><i class="nav-arrow"></i></span>');
		
		// Click to reveal the nav
		$('.nav-mobile').click(function(){
			$('.nav-list').toggle();
		});
	
		// Dynamic binding to on 'click'
		$('.nav-list').on('click', '.nav-click', function(){
		
			// Toggle the nested nav
			$(this).siblings('.nav-submenu').toggle();
			
			// Toggle the arrow using CSS3 transforms
			$(this).children('.nav-arrow').toggleClass('nav-rotate');
			
		});
	    
	});
	
	// DOM ready
	$(function() {
		
		// Append the mobile icon nav
		$('.MNnav').append($('<div class="MNnav-mobile"></div>'));
		
		// Add a <span> to every .nav-item that has a <ul> inside
		$('.MNnav-item').has('ul').prepend('<span class="MNnav-click"><i class="MNnav-arrow"></i></span>');
		
		// Click to reveal the nav
		$('.MNnav-mobile').click(function(){
			$('.MNnav-list').toggle();
		});
	
		// Dynamic binding to on 'click'
		$('.MNnav-list').on('click', '.MNnav-click', function(){
		
			// Toggle the nested nav
			$(this).siblings('.MNnav-submenu').toggle();
			
			// Toggle the arrow using CSS3 transforms
			$(this).children('.MNnav-arrow').toggleClass('MNnav-rotate');
			
		});
	    
	});
	
})(jQuery);