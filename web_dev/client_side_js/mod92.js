//Print hello to console to test link to html file
console.log("Hello");

//Declare two variables for header and text to be added to header
var newHeading = document.createElement('h1');
var headerText = document.createTextNode('Local News');

//Add header text to the header
newHeading.appendChild(headerText);

//Declare variable that finds the id of the section we want to add header to
var newSection = document.getElementById("newSection");

//Connect the header to the section so that it actually prints 
newSection.appendChild(newHeading);