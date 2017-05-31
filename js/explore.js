// Create an empty string where we will store the reversed string. Iterate through each character of the hello string using index, starting at last character. Iterate through the string, adding each resulting character to our new string.

var str = "hello";
var reversedStr = "";

for (var i = str.length - 1; i >= 0; i-=1) {
  reversedStr = reversedStr + str[i];
}