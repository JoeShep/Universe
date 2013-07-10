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

  $(".close_comment_btn").click(function(){
    $(".rank_comment_box").slideUp();
  });

});



