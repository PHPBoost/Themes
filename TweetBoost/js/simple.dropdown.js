// fonction revu le 29/05/2017 par EDN

var main = function () {
  $('.dropdownWrapper').click(function() {

    $(this).children('.dropdownPanel').fadeToggle(200);
  });
  
};

$(document).ready(main);