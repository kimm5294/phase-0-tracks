$(document).ready(function() {

  //The first parentheses tell which tag to affect, the .html changes the html in element
  $("#title").html("New News");

  //Make items toggle out of sight with a click of the button
  $("#fade").click(function() {
    $("img").fadeToggle();
  });

  //Hovering over button will turn title blue
  $("#fade").mouseenter(function() {
    $("#title").css("color", "blue");
  });  

  //Leaving hover over button will revert title to black color
  $("#fade").mouseleave(function() {
  $("#title").css("color", "black");
  }); 

  //More concise mouse hover event tracker
  $("h2").hover(function() {
  $("h2").css("color", "blue");
  },
  function(){
  $("h2").css("color", "black");
  });   

}); 