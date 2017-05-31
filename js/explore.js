// Iterate through each character of the string and index. Use a counter to count down or up, changing the index of each character. Then print the new string.

var str = "hello";

for (var i = str.length - 1; i >= 0; i-=1) {
  console.log(str[i]);
}