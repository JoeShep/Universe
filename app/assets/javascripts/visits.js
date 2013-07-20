// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready(function(){

  $(".notice").delay(2000).fadeOut('slow');

  $("#next").click(function(){
    $("#visit_details").slideDown();
    $(".rank_btn").slideDown();
    $("#name_date").slideUp();
    $("#add_details_h2").slideDown();
    $("#add_school_h2").slideUp();
    $("#next").hide();
  });

  $(".rank_btn").click(function(){
    $("#visit_save").slideDown();
  });


  $("#campus_icon").hover(
   function(){
    $("#notes_p").html(($("#campus_icon").data("note")));
   },
   function(){
    $("#notes_p").html("");
   }
  );

  $("#dorms_icon").hover(
   function(){
    $("#notes_p").html(($("#dorms_icon").data("note")));
   },
   function(){
    $("#notes_p").html("");
   }
  );

  $("#library_icon").hover(
   function(){
    $("#notes_p").html(($("#library_icon").data("note")));
   },
   function(){
    $("#notes_p").html("");
   }
  );

  $("#majors_icon").hover(
   function(){
    $("#notes_p").html(($("#majors_icon").data("note")));
   },
   function(){
    $("#notes_p").html("");
   }
  );

  $("#students_icon").hover(
   function(){
    $("#notes_p").html(($("#students_icon").data("note")));
   },
   function(){
    $("#notes_p").html("");
   }
  );

  $("#classrooms_icon").hover(
   function(){
    $("#notes_p").html(($("#classrooms_icon").data("note")));
   },
   function(){
    $("#notes_p").html("");
   }
  );

  $("#student_center_icon").hover(
   function(){
    $("#notes_p").html(($("#student_center_icon").data("note")));
   },
   function(){
    $("#notes_p").html("");
   }
  );

  $("#food_campus_icon").hover(
   function(){
    $("#notes_p").html(($("#food_campus_icon").data("note")));
   },
   function(){
    $("#notes_p").html("");
   }
  );

  $("#food_off_campus_icon").hover(
   function(){
    $("#notes_p").html(($("#food_off_campus_icon").data("note")));
   },
   function(){
    $("#notes_p").html("");
   }
  );

  $("#town_icon").hover(
   function(){
    $("#notes_p").html(($("#town_icon").data("note")));
   },
   function(){
    $("#notes_p").html("");
   }
  );

  $("#intramural_icon").hover(
   function(){
    $("#notes_p").html(($("#intramural_icon").data("note")));
   },
   function(){
    $("#notes_p").html("");
   }
  );

  $("#other_activities_icon").hover(
   function(){
    $("#notes_p").html(($("#other_activities_icon").data("note")));
   },
   function(){
    $("#notes_p").html("");
   }
  );

}); //end ready

