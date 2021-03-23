$(document).ready(function(){


	$('ul.pc-menu a').addClass('button');
	$('ul.pc-menu > li.hasSub > a').append('<span class="fa fa-angle-down"></span>');
	$('ul.sub-menu > li.hasSub > a').append('<span class="fa fa-angle-right"></span>');

	$('a.animated').hover(function(){
		$(this).addClass('bounce');
	}, function(){
		$(this).removeClass('bounce');
	});

	$('.introSlider').slick({
		dots: true,
		fade: true,
		autoplay: true,
		speed: 3000,
		autoplaySpeed: 2000,
		pauseOnHover: false,
		pauseOnDotsHover: false,
		prevArrow: '<a class="sliderNav slick-prev">prev</a>',
		nextArrow: '<a class="sliderNav slick-next">next</a>',
	});

	// MixItUp
	$('#drFilterContainer').mixItUp();

	//datepicker
	$( "#datepicker" ).datepicker({
		inline: true
	});
});