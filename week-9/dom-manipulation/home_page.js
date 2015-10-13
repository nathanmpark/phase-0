// DOM Manipulation Challenge

// I worked on this challenge [by myself, with: Julian Lesse].

// Release 1:
document.getElementById("release-0").className = "done";

// Release 2:
document.getElementById("release-1").style.display = "none";

// Release 3:
document.getElementsByTagName("h1")[0].innerHTML = "I completed release 2.";

// Release 4:
document.getElementById("release-3").style.backgroundColor = "#955251";

// Release 5:
var nodes = document.getElementsByClassName("release-4");

for(var i = 0; i < nodes.length; i++){
  nodes[i].style.fontSize = "2em";
};

var temp = document.getElementById('hidden');
document.body.appendChild(temp.content.cloneNode(true));

// Reflection:
// What did you learn about the DOM?
// I learned a lot about DOM today, and I still have more reading to do.
// Today's challenge was very informative in part because my pair had already had some experience navigating it.
// Ultimately you can use JavaScript to alter, select, insert, or remove content within the HTML file. In addition, you can make the same types of changes to the existing CSS.

// What are some useful methods to use to manipulate the DOM?
// I learned about the use of getElementById, getElementsByClassName, and getElementsByTagName.
// In addition, I leared about how to incorporate looping within the JavaScript for the DOM.