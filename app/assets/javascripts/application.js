//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require_tree .

$(function() {
  $(document).ajaxComplete(function(event, xhr, settings) {

    $("#notif_results").html(xhr.responseText);
  // if ( settings.url == "ajax/test.html" ) {
  //   $( ".log" ).text( "Triggered ajaxSuccess handler. The Ajax response was: " +
  //     xhr.responseText );
  });
});
