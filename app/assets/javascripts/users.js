var change_class = function (select) {
  var $this = $(select);
  if ($this.val())
    $this.addClass('used');
  else
    $this.removeClass('used');
}
$(window, document, undefined).ready(function() {

  $('.group > input').blur(function() {
    change_class($(this));
  });

  $('.group > input').change(function(){
    change_class();
  });

  $('.group > input').focusout(function(){
    change_class();
  });
});
