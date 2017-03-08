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

//Driver Code to test longest word finding method
var array1 = ["hello", "hi", "what is good"];
var array2 = ["pink", "red", "blue", "yellow"];
var x = findLongWord(array1);
var y = findLongWord(array2);
console.log(x);
console.log(y);

