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

  $("#campus_icon").one('mouseover', function(){
      $("#notes_p").html(($("#campus_icon").data("note")));
  });

  $("#dorms_icon").one('mouseover', function(){
      $("#notes_p").html(($("#dorms_icon").data("note")));
  });

  $("#library_icon").one('mouseover', function(){
      $("#notes_p").html(($("#library_icon").data("note")));
  });

  $("#majors_icon").one('mouseover', function(){
      $("#notes_p").html(($("#majors_icon").data("note")));
  });

  $("#students_icon").one('mouseover', function(){
      $("#notes_p").html(($("#students_icon").data("note")));
  });

  $("#classrooms_icon").one('mouseover', function(){
      $("#notes_p").html(($("#classrooms_icon").data("note")));
  });

  $("#student_center_icon").one('mouseover', function(){
      $("#notes_p").html(($("#student_center_icon").data("note")));
  });

  $("#food_campus_icon").one('mouseover', function(){
      $("#notes_p").html(($("#food_campus_icon").data("note")));
  });

  $("#food_off_campus_icon").one('mouseover', function(){
      $("#notes_p").html(($("#food_off_campus_icon").data("note")));
  });

  $("#town_icon").one('mouseover', function(){
      $("#notes_p").html(($("#town_icon").data("note")));
  });

  $("#intramural_icon").one('mouseover', function(){
      $("#notes_p").html(($("#intramural_icon").data("note")));
  });

  $("#other_activities_icon").one('mouseover', function(){
      $("#notes_p").html(($("#other_activities_icon").data("note")));
  });
});

