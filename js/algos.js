// Pseudocode Release 0
// Write a function that takes an array of phrases as an argument, and then iterates through each phrase and takes the length. It can put the lengths into a new array of lengths, and then return the array item which is at the same index as the length item that is largest. Or... creates a hash of keys and values and returns the key with the highest number for value?


// function longestPhrase(Array) {
//   var lengthArray = [];
//   Array.forEach(function(item) {
//     lengthArray.push(item.length)
//   })
//   console.log(lengthArray)
// }

function longestPhrase(Array){
  var phraseLengths = {};
  for(i = 0; i < Array.length; i++){
   phraseLengths[Array[i]] = (Array[i]).length;
  }
  console.log(phraseLengths)
}

var phraseArray = ["Hello, sir", "Good day, sir", "Good afternoon, my fine sir."]

console.log(longestPhrase(phraseArray))