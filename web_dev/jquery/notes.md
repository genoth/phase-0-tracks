## 9.3 JQuery Learning Plan
* Find and review general summary of JQuery, what it does generally and why programmers use it - check Wikipedia, Mozilla Developer Network
* Search for and try out an introductory JQuery lesson (or a few, depending) - check Codeacademy, W3 Schools, https://github.com/jquery/jquery
* Learn basic syntax and take notes
* Check out cheatsheets, identify items that I recognize and try using some commands listed
  * https://makeawebsitehub.com/jquery-mega-cheat-sheet/
  * https://oscarotero.com/jquery/
* Try some exercises

$(document).ready(function(){

   // jQuery methods go here...

});

The jQuery syntax is tailor-made for selecting HTML elements and performing some action on the element(s).

## Basic syntax is: $(selector).action()
    * A $ sign to define/access jQuery
    * A (selector) to "query (or find)" HTML elements
    * A jQuery action() to be performed on the element(s)

### Examples:
    $(this).hide() - hides the current element.

    $("p").hide() - hides all <p> elements.

    $(".test").hide() - hides all elements with class="test".

    $("#test").hide() - hides the element with id="test".