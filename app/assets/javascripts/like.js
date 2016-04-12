$( document ).ready(
	function () {
    $('.recipe-img-lg').on('click', function likeRecipe (e){
    	var heart = $(e.currentTarget).closest('.recipe-post').find('.like-img');
    	// console.log($(e.currentTarget).find('.like-img'));
    	console.log('clicked the damn thing');
    	heart.show().css("opacity", "1");
	    
	    function blink(e){
	    	heart.css("opacity", "0")
	    };	
	    setTimeout(blink, 1000);
     });
});