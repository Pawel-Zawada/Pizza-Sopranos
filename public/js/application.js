$(document).ready(function(){
	$('.menubar').slideDown(1000);
	$('.menu1').slideDown(2000);
	$(".pizza").altCheckbox();	
	$(".drink").altCheckbox();	
	$(".special").altCheckbox();	
	$('.pizzadiv li').on({
		mouseenter: function() {
			$(this).css('background-color', '#D4D4D4');
		}, mouseleave: function() {
			$(this).css('background-color', 'white');
		},
	});
	$('.pizzaspan a').on('click', function(){
		$('.menu3').slideUp(1000);
		$('.menu2').slideUp(1000);
		$('.menu1').slideDown(1000);
	});
	$('.drankspan a').on('click', function(){
		$('.menu1').slideUp(1000);
		$('.menu3').slideUp(1000);
		$('.menu2').slideDown(1000);
	});
	$('.specialspan a').on('click', function(){
		$('.menu2').slideUp(1000);
		$('.menu1').slideUp(1000);
		$('.menu3').slideDown(1000);
	});
	$('.menubar ul li a').on("mouseenter", function(){
		$(this).css('background-color', 'orange');
	});
	$('.menubar ul li a').on("mouseleave", function(){
		$(this).css('background-color', '');
	});
	$('.menubar ul li label').on("mouseenter", function(){
		$(this).css({'background-color': 'green'});
	});
	$('.menubar ul li label').on("mouseleave", function(){
		$(this).css('background-color', '');
	});
});