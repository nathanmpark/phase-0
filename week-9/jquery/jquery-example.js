// U3.W9:JQuery


// I worked on this challenge [by myself, with: ].
// This challenge took me [#] hours.

$(document).ready(function(){

// Release 1:
  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.
$('body').css({'background-color': 'pink'});

//RELEASE 2: Link your Code
  bodyElement = $('body');

//RELEASE 3: Selecting Elements with jQuery
$('h1').css({"color": "blue", "border" : "2px solid red", "visibility" : "visible" });

//Release 4: Modify Elements with jQuery
$("div.mascot").find("h1").html("BOBOLINKS");

//RELEASE 5: Event Handlers

 $('img').hover(function(e){
    e.preventDefault()
    $(this).attr('src', 'http://www.birdsgallery.net/gallery/bobolink/bobolink_2.jpg')
  }, function(e){
    e.preventDefault()
    $(this).attr('src', './dbc_logo.png')
  });

// Release 6: Have Some Fun

})  // end of the document.ready function: do not remove or write DOM manipulation below this.

// Reflection:
// What is jQuery?
// It is a JavaScript Library.

// What does jQuery do for you?
// It allows for easier HTML document manipulation,animation, and event handling.

// What did you learn about the DOM while working on this challenge?
// I learned about event handlers, and the different ways to go about accessing child nodes