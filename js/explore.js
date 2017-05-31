// Create a function that reverses a string. First establish an empty string where we will store the reversed string. Iterate through each character of the hello string using index, starting at last character, adding each resulting character to our new string.

function reverse(str) {
  var reversedStr = "";
  for (var i = str.length - 1; i >= 0; i-=1) { reversedStr = reversedStr + str[i];
  }
  return reversedStr;
}

# DRIVER CODE
reverse("hello")