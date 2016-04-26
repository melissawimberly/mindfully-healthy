// $("#top-recipes .carousel-inner .item").

function init_carousel(){
    rightHeight = window.innerHeight; // or $('.carousel-inner') as you want ...
    $('.img-responsive').css('height',rightHeight+'px');
}
init_carousel();