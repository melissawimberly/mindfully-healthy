$( document ).ready(function() {
    $('.recipe-img').on('click', function(e){
    	// console.log($(e.currentTarget).find('.like-img'));
    	$('.like-img').css('opacity', 0.5);
     });	
});