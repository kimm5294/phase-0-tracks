//PSEUDOCODE
//Method that returns the longest word/phrase of an array
//Input: an array of words/phrases
//Method:
//Define function with array of words/phrases as input
//Define a variable that will store the longest word/phrase
//Loop through words in the array
//IF current word is longer than the word stored in the variable, set 
//variable equal to the current word
//ELSE do nothing 
//Return the variable that stores the longest word
//Output: Longest word/phrase of the array

function findLongWord(arrayOfWords) {
  var longestWord = "a";
  for (var i = 0; i < arrayOfWords.length; i++) {
    if (arrayOfWords[i].length > longestWord.length) {
      longestWord = arrayOfWords[i];
    }
  }
  return longestWord;
}


//Method that returns true or false if two objects have the same key-value pair
//Input: two objects with key-value pairs
//Method:
//Define a function that takes two objects as input
//Do two levels of loops to loop through each objects keys and compare
//IF objects have the same key then return true if the values of those keys are also the same
//ELSE return false
//Output: boolean

function matchKeyValue(object1, object2) {

  
}




//DRIVER CODE

//Driver Code to test longest word finding method
var array1 = ["hello", "hi", "what is good"];
var array2 = ["pink", "red", "blue", "yellow"];
var x = findLongWord(array1);
var y = findLongWord(array2);
console.log(x);
console.log(y);


