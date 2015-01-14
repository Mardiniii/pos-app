$(function(){
    $(window).scroll(function(){
        if ($(this).scrollTop() > 75){
            $('.navbar-default').addClass('navbar-maple');
        }
        else{
            $('.navbar-default').removeClass('navbar-maple');
        }
    });
});