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
//Set a variable for the boolean equal to false
//Do two levels of loops to loop through each objects keys and compare
//IF objects have the same key then boolean = true if the values of those keys are also the same
//ELSE do nothing
//Output: boolean

function matchKeyValue(object1, object2) {
  var boolean = false;
  for (var key1 in object1) {
    for (var key2 in object2) {
      if (key1 == key2 && object1[key1] == object2[key2]) {
        boolean = true;
      }
    }
  }
  return boolean;
}


//Method that returns an array of random strings 1 to 10 letters in length
//Input: integer that determines length of array
//Method:
//Define a function that takes an integer as the length of the array
//Define a variable as an empty array
//Define another variable as the alphabet in string form
//Create a loop that will loop through as many times as the integer given was
//Define a word variable inside this loop but leave it as an empty string
//Create another loop inside the first loop that will create a word 1 to 10 letters long
//Randomly select a letter from the alphabet variable and push it into the word variable
//Push the new word to the array that was created initially
//Return the array
//Output: an array of random strings that are 1 to 10 letters long and the number is set by the input










//DRIVER CODE

//Driver Code to test longest word finding method
//var array1 = ["hello", "hi", "what is good"];
//var array2 = ["pink", "red", "blue", "yellow"];
//var x = findLongWord(array1);
//var y = findLongWord(array2);
//console.log(x);
//console.log(y);


//Driver Code to test second method that returns boolean for matching key-value pair
//var obj1 = {name: "MK", age: 3, boo: true};
//var obj2 = {name: "M", age: 3, boo: false};
//var obj3 = {name: "MK", age: 3, boo: true};
//var obj4 = {name: "M", age: 5, boo: false};
//var z = matchKeyValue(obj1, obj2);
//var a = matchKeyValue(obj3, obj4);
//console.log(z);
//console.log(a);


