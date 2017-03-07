//Pseudocode for reversing a string

//Put string in as input for a newly defined function
//Loop through string and return the last letter of the string first and then the second to last and so on
//Add each letter together 
//Print to console

//Define the function reverse to reverse the string that is the input
function reverse(string) {
  var reversedString = ""
  for (var i = 1; i <= string.length; i++) {
    reversedString += string[string.length-i]
  }
  return reversedString
}

//Define a variable to equal the reversed string 
var x = reverse("hello")

//Print the reversed string if statements are true

if (1 == 1 && 2 ==2) {
  console.log(x)
} else {
  console.log("Too bad...")
}