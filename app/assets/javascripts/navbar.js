$(document).ready(function() {
  
  $(window).scroll(function () {
      //if you hard code, then use console
      //.log to determine when you want the 
      //nav bar to stick.  
      console.log($(window).scrollTop())
    if ($(window).scrollTop() > 600) {
      $('#nav_bar').addClass('navbar-fixed');
      $('#nav_bar').removeClass('top_screen')
    }
    if ($(window).scrollTop() < 601) {
      $('#nav_bar').removeClass('navbar-fixed');
    }
  });
});