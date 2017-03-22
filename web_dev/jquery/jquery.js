$(document).ready(function() {

  //The first parentheses tell which tag to affect, the .html changes the html in element
  $("#title").html("New News");

  //Make items toggle out of sight with a click of the button
  $("#fade").click(function() {
    $("h1").fadeToggle();
  });

}); 