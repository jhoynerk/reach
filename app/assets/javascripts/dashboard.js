var setupDashboardPage = function() {
  
  if($('#potential_client_useless').is(':checked')){
    $('#potential_inputs').toggle();
  }else{
    $('#comment_input').toggle();
  }
  $(".dropdown-button").dropdown();

  $('#potential_client_useless').on('change', function(){
    $('#comment_input').toggle();
    $('#potential_inputs').toggle();
  });

  $('.datepicker').pickadate({
    selectMonths: true,
    selectYears: 1,
    hiddenName: true,
  });
  $('#export_data').submit(function(){
    if($('#date_start').val() != "" && $('#date_end').val() != ""){
      success_notification('Se exportaron los archivos')
    }else{
      alert_notification('Primero debe completar la fecha de inicio y fin de la exportación')
    }
  })  
  $("#search_data").submit(function(){
    if($('#date_start').val() != "" && $('#date_end').val() != ""){
      success_notification('Buscando resultado, por favor espere!!!')
    }else{
      alert_notification("Primero debe completar la fecha de inicio y fin de la exportación");
    } 
  });

  $('.button-collapse').sideNav({
      menuWidth: 300, // Default is 240
      edge: 'right', // Choose the horizontal origin
      closeOnClick: true // Closes side-nav on <a> clicks, useful for Angular/Meteor
    }
  );

  $('.dropdown-button').dropdown({
      inDuration: 300,
      outDuration: 225,
      constrain_width: false,
      hover: true,
      gutter: 0,
      belowOrigin: false,
      alignment: 'left'
    }
  );

  $('.collapsible').collapsible({
    accordion : false
  });
};

$(document).on('page:load ready', setupDashboardPage);
