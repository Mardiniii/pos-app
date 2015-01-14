$(function(){
    $(window).scroll(function(){
        if ($(this).scrollTop() > 300){
            $('.navbar-default').addClass('navbar-maple');
        }
        else{
            $('.navbar-default').removeClass('navbar-maple');
        }
    });
});