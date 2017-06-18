// Create a simple project that uses JavaScript to manipulate the DOM. This can be as simple as a script that changes the style of an element, or something much more complicated if you feel like delving deeper. (Example: A stretch goal might be figuring out how to create new HTML elements with JavaScript and add them to your page, or how to loop through a collection of nodes of a certain class and apply the same effect to all of them.) You don't have to do anything special to delay the DOM manipulation -- it can run right away.


console.log("this works!")

var photo = document.getElementById("photo");
  photo.hidden = false;
  console.log(photo);
  photo.style.border = "3px solid green";

var header = document.getElementsByTagName("h1");
  header[0].style.color = "pink";

// Add an event listener to your client_side_js project that delays the execution of some snippet of code until the user clicks or takes some other action. Keep it simple with a console.log call, or get fancy by dramatically revealing an animated GIF -- it's up to you.

function change_border(event) {
  console.log(event);
  event.target.style.border = "15px solid red";
}

function change_color(event) {
  console.log(event);
  event.target.style.color = "pink";
}

var link = document.getElementsByTagName("a");
  console.log(link[3]);
  link[3].addEventListener("click", change_color);


photo.addEventListener("click", change_border);




