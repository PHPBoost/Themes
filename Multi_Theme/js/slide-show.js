/*---------------------------------------------------------
 * Theme    : Multi_Theme
 * Par      : Sakura
 * Porté en V5.0.XX  :  01/04/2016
 * Site web :  http://news-manga.com | http://easy-design.net/
 * Commentaire ou autre de l'auteur
 # Merci de ne pas toucher au entête des fichiers CSS.
 *---------------------------------------------------------
 * Théme non compatible avec deux menus (droite et gauche)
					le choix reste possible sur un menu
 *----------------------------------------------------------*/

// base : https://codepen.io/SitePoint/pen/YqmjRj/


var currentIndex = 0,
    items = jQuery('.slide-item'),
    itemAmt = items.length;

function cycleItems() {
    var item = jQuery('.slide-item').eq(currentIndex);
    items.hide();
    item.css('display','block');
}

var autoSlide = setInterval(function() {
    currentIndex += 1;
    if (currentIndex > itemAmt - 1)
        currentIndex = 0;
    cycleItems();
}, 3000);

jQuery('.slide-next').on('click', function(e) {
    e.preventDefault();
    clearInterval(autoSlide);
    currentIndex += 1;
    if (currentIndex > itemAmt - 1)
        currentIndex = 0;
    cycleItems();
});

jQuery('.slide-prev').on('click', function(e) {
    e.preventDefault();
    clearInterval(autoSlide);
    currentIndex -= 1;
    if (currentIndex < 0)
        currentIndex = itemAmt - 1;
    cycleItems();
});
