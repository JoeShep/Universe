// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready(function(){
  $("#ok").click(function(){
    $("#visit_details").slideDown();
    $("#visit_save").slideDown();
    $("#name_date").slideUp();
    $("#add_details_h2").slideDown();
    $("#add_school_h2").slideUp();
    $("#ok").hide();
  });


});

