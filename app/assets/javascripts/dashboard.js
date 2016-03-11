var setupDashboardPage = function() {
  
  if($('#potential_client_useless').is(':checked')){
    $('#potential_inputs').toggle();
  }else{
    $('#comment_input').toggle();
  }

  $('#potential_client_useless').on('change', function(){
    $('#comment_input').toggle();
    $('#potential_inputs').toggle();
  });
};

$(document).on('page:load ready', setupDashboardPage);
