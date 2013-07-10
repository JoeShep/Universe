// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready(function(){
  $("#ranking_campus").change(function(){
    $(".rank_comment_box").slideUp();
    $("#campus_comments").slideDown();
  });

  $("#ranking_dorms").change(function(){
    $(".rank_comment_box").slideUp();
    $("#dorms_comments").slideDown();
  });

  $("#ranking_library").change(function(){
    $(".rank_comment_box").slideUp();
    $("#library_comments").slideDown();
  });

  $("#ranking_majors").change(function(){
    $(".rank_comment_box").slideUp();
    $("#majors_comments").slideDown();
  });

  $("#ranking_students").change(function(){
    $(".rank_comment_box").slideUp();
    $("#students_comments").slideDown();
  });

  $("#ranking_student_center").change(function(){
    $(".rank_comment_box").slideUp();
    $("#student_center_comments").slideDown();
  });

  $("#ranking_food_campus").change(function(){
    $(".rank_comment_box").slideUp();
    $("#food_campus_comments").slideDown();
  });

  $("#ranking_food_off_campus").change(function(){
    $(".rank_comment_box").slideUp();
    $("#food_off_campus_comments").slideDown();
  });

  $("#ranking_classrooms").change(function(){
    $(".rank_comment_box").slideUp();
    $("#classrooms_comments").slideDown();
  });

  $("#ranking_town").change(function(){
    $(".rank_comment_box").slideUp();
    $("#town_comments").slideDown();
  });

   $("#ranking_intramural_sports").change(function(){
    $(".rank_comment_box").slideUp();
    $("#intramural_sports_comments").slideDown();
  });

   $("#ranking_other_activities").change(function(){
    $(".rank_comment_box").slideUp();
    $("#other_activities_comments").slideDown();
  });

  $(".close_comment_btn").click(function(){
    $(".rank_comment_box").slideUp();
  });

});



