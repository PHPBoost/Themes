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
  items = $('.container div'),
  itemAmt = items.length;

function cycleItems() {
  var item = $('.container div').eq(currentIndex);
  items.hide();
  item.css('display','inline-block');
}

var autoSlide = setInterval(function() {
  currentIndex += 1;
  if (currentIndex > itemAmt - 1) {
    currentIndex = 0;
  }
  cycleItems();
}, 3000);

$('.next').click(function() {
  clearInterval(autoSlide);
  currentIndex += 1;
  if (currentIndex > itemAmt - 1) {
    currentIndex = 0;
  }
  cycleItems();
});

$('.prev').click(function() {
  clearInterval(autoSlide);
  currentIndex -= 1;
  if (currentIndex < 0) {
    currentIndex = itemAmt - 1;
  }
  cycleItems();
});
