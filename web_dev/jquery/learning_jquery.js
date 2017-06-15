console.log("This works!")

$(document).ready(function(){
  var right = 0;
  $(".colors").each(function(i,val){
    $(this).animate({
      right: right,
      opacity: .8
    }, 1500 ); // speed
    right += 150; // Distance from right. Starts with 0 and increases by 150px with each item index. So, the pink square is 0px away from the right, yellow square is 150px away, green is 300px away, blue is 450px away.
  });
});

// Move the squares left towards left and fade them out a little
$(document).ready(function(){
  var left = 0;
  $(".colors").each(function(i, val){
    $(this).animate({
      left: left,
      opacity: .6
    }, 1800 ); // speed
    left += 100; // Distance from left. Starts with 0 and increases by 100px for each item index. So, the pink square is 0px away from the left, yellow square is 100px away, green is 200px away, etc.
  });
});

// Move the squares down
$(document).ready(function(){
 var top = 300;
 $(".colors").each(function(i, val){
  $(this).animate({
    top: top,
    opacity: .6
  }, 1500);
  top -= 100;
});
});

// Fade out the squares
$(document).ready(function(){
  $(".colors").fadeTo('slow', 0.2);
  });
