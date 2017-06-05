// Pseudocode Release 0
// Write a function that takes an array of phrases as an argument, and then iterates through each phrase and takes the length. It can put the lengths into a new array of lengths, and then return the array item which is at the same index as the length item that is largest. Or... creates a hash of keys and values and returns the key with the highest number for value?

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

var x;
for (x in object1) {
  a = (x, object1[x]);
  b = (x, object2[x]);
}

function equality(objectA, objectB) {
  var x;
  for (x in objectA) {
    var a = (x, objectA[x]);
    var b = (x, objectB[x]);
    if (a == b) {
      return true
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
function randomInt(min, max) {
  min = Math.ceil(min);
  max = Math.floor(max);
  return Math.floor(Math.random() * (max - min))
}

function generateString()
{
  var text = "";
  var possible = "abcdefghijklmnopqrstuvwxyz";

  for( var i=0; i < (randomInt(1, 11)); i++)
    text = text + possible.charAt(Math.floor(Math.random() * possible.length));
  return text;
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

// if ((equality(object1, object2)) == true) {
//   console.log(true)
// }
// console.log(equality(object3, object4))

// -----Release 2
// console.log(generateArray(4))