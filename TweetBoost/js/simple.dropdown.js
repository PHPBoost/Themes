$(document).on('ready', function(){
  var $dropdown = $('div.dropdownWrapper'),
      $drpBtn   = $dropdown.find('div.dropdownLabel');
  $drpBtn.on('click', function(e){
    e.stopPropagation();
    var $element = $(this).parent();
    $element.find('.dropdownPanel').fadeToggle(200);
  });
  $("body").click(function(){
    $('.dropdownPanel').hide(200);
  });

});
