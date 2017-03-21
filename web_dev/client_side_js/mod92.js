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

//Create variable to get all elements with h1 tag
var headers = document.getElementsByTagName("h1");

//Create loop that loops through h1 tags and turns the color blue
for (var i=0; i<headers.length; i++) {
  headers[i].style.color = "blue"; 
}