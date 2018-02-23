$(document).ready(function() {

  $("#switch").click(function() {
  if($( "#switchboard" ).css( "background-color" ) == "rgb(255, 0, 0)") {
    $('#switch').hide(0).delay(3000).show(0);
    $("#switchboard").css("background-color","gray");
    $("#status").html("Switch is OFF");
    $("#list").attr('class', 'asending');
    $("#demo").hide();
  }
  else {
    $("#switchboard").css("background-color","red");
    $("#status").html("Switch is On");
    $("#list").attr('class', 'desending');
    $("#demo").show();
  }
  });

  $("#capture").click(function() {
      if ($(this).is(':checked')) {
        $("#switch").css("background-color","green");
      }
      else {
        $( "#switch" ).css("background-color","yellow" );
      }
  });
})
