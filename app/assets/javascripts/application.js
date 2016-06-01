// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
function scroll(y) {
	$('html, body').animate({scrollTop: y }, 'slow');
}

$( document ).ready(function(){
	$('.header_btn').on('click', function(){
		scroll(0);
	})
})

$( document ).ready(function(){
	$('.about_btn').on('click', function(){
		scroll(500)
	})
})

$( document ).ready(function(){
	$('.education_btn').on('click', function(){
		scroll(1300)
	})
})

$( document ).ready(function(){
	$('.workexperience_btn').on('click', function(){
		scroll(2100)
	})
})

$( document ).ready(function(){
	$('.skills_btn').on('click', function(){
		scroll(2900)
	})
})


$(window).scroll(function() {
    if($(this).scrollTop() > 480 && $(this).scrollTop() < 1300 ) {
        $('.about_btn').addClass('opaque');
        $('.about_btn').focus();
    } else {
        $('.about_btn').removeClass('opaque');
    }
});

$(window).scroll(function() {
    if($(this).scrollTop() > 1300 && $(this).scrollTop() < 2100 ) {
        $('.education_btn').addClass('opaque');
        $('.education_btn').focus();
    } else {
        $('.education_btn').removeClass('opaque');
    }
});

$(window).scroll(function() {
    if($(this).scrollTop() > 2100 && $(this).scrollTop() < 2900 ) {
        $('.workexperience_btn').addClass('opaque');
        $('.workexperience_btn').focus();
    } else {
        $('.workexperience_btn').removeClass('opaque');
    }
});

$(window).scroll(function() {
    if($(this).scrollTop() > 2900 && $(this).scrollTop() < 3400 ) {
        $('.skills_btn').addClass('opaque');
        $('.skills_btn').focus();
    } else {
        $('.skills_btn').removeClass('opaque');
    }
});

$(window).scroll(function() {
    if($(this).scrollTop() < 100) {
        $('.header_btn').addClass('opaque');
        $('.header_btn').focus();
    } else {
        $('.header_btn').removeClass('opaque');
    }
});
