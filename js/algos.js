// Pseudocode Release 0
// Write a function that takes an array of phrases as an argument. First, the function should create a variable 'longest' and set it equal to "". Then, it should iterate through each phrase and takes the length. If the phrase length is greater than the length of the empty variable longest, then it sets the variable longest equal to the phrase in question. So in the end, the phrase with the greatest length will be equal to the variable longest. The function will then return the value of longest (i.e. the longest phrase).

// ---------------------Release 0---------------------

function longestPhrase(Array){
  var longest = "";
  for(i = 0; i < Array.length; i++){
   if (Array[i].length > longest.length) {
    longest = Array[i];
   }
  }
    console.log(longest);
}

// ---------------------Release 1---------------------
// Pseudocode
// Create a method that takes 2 objects as arguments. It then takes a key that exists in the first object, and prints the value associated with this key, for both objects. It then compares them, if the same, returns true. If not, continues loop with the next key in the first object, prints the value associated with this key for both objects. Compares them, if the same, returns true. If not, returns false.


function equality(objectA, objectB) {
  var x;
  for (x in objectA) {
    // sets value of X to be a key in objectA
    var a = objectA[x];
    // 1st loop thru- a = value from key X for objectA
    // 2nd loop thru - a = resets X to be the second key. value from new key X for objectA
    var b = objectB[x];
    // 1st loop thru- b = value from key X for objectB
    // 2nd loop thru - b = value from new key X pair for objectB
    if (a == b) {
      return true
    // 1st lopo thru - is a = b? in this case, it's looking at the key name, a = Steven, b = Tamir. no, they don't match.
    // 2nd loop thru - is a = b? in this case, it's looking at the key age, a = 54, b = 54, so yes, true.
    }
  }
}

var object1 = {name: "Steven", age: 54};
var object2 = {name: "Tamir", age: 54};
var object3 = {animal: "Dog", legs: 4};
var object4 = {animal: "Dog", legs: 3};

// for (var key in someObjects) {
//   if (someObjects.hasOwnProperty(key)) {
//     console.log(key + " -> " + someObjects[key]);
//   }
// }

// -------------------Release 2---------------------
// Pseudocode
// First function - takes 2 numbers as arguments, generates a random integer from a range, using the number arguments as minimum and maximum values. The function will be used to determine the length of each random word in the array.
// Second function, takes no argument. Sets value text to equal "". We will be adding individual characters to this string. Establishes possible characters to be used (i.e. the alphabet) to generate the string. Uses the First function to generate a random integer, and iterates over the string of possible characters, and generates a random character, that number of times, adding the resulting character to the string. Returns the string.
// Third function, takes an integer as an argument. This integer determines the number of items in an array of randomly generated strings. Sets array to equal an empty array, and then runs the second function and adds the generated string to the array to be returned. Runs the second function n times as indicatd by the integer in the argument.

function randomInt(min, max) {
  min = Math.ceil(min);
  max = Math.floor(max);
  return Math.floor(Math.random() * (max - min))
}

function generateString1()
{
  var text = "";
  var possible = "abcdefghijklmnopqrstuvwxyz";
  var number = randomInt(1, 11);
  for( var i=0; i < number; i++)
    text = text + possible.charAt(Math.floor(Math.random() * possible.length));
  return text
}

function generateArray(int)
{
  var array = [];
  var i = 0;
  for( var i=0; i < int; i++)
    array.push(generateString1())
  return array
}

// --------------------Driver Code-------------

// -----Release 0
// var phraseArray = ["Hello, sir", "Good day, sir", "Good afternoon, my fine sir."]

// console.log(longestPhrase(phraseArray))

// -----Release 1

if ((equality(object1, object2)) == true) {
  console.log(true)
}
console.log(equality(object3, object4))

// -----Release 2
// console.log(generateArray(4))