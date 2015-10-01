// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var name = "Nathan";
console.log(name);

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

for (i = 1; i < 101; i++) {
  if (i % 3 === 0 && i % 5 === 0) {
    console.log("FizzBuzz");
  }
  else if (i % 3 === 0) {
    console.log("Fizz");
  }
  else if (i % 5 === 0) {
    console.log("Buzz");
  }
  else {
    console.log(i);
  }
}

// Functions

// Complete the `minimum` exercise.

function min(val1,val2) {
  if (val1 < val2) {
    return val1;
  }
  else if (val2 < val1) {
    return val2;
  }
  else {
    return val1;
  }
}

console.log(min(0, 10));
// → 0
console.log(min(0, -10));
// → -10


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
  name: "Nathan Park",
  age: 25,
  favorite_foods: "Lasagna",
  quirk: "I prefer to sleep on flat pillows."
}

console.log(me);

// Introduction:

// Did you learn anything new about JavaScript or programming in general?
// It was nice to learn about the history of JavaScript and especially the strange nature of how it go it's name. Also, about the flexible nature of the language.

// Are there any concepts you feel uncomfortable with?
// I am curious to learn about the syntatical differences between JavaScript and Ruby.


// Chp. 1:Values, Types,and Operators

// Identify two similarities and two differences between JavaScript and Ruby syntax with regard to numbers, arithmetic, strings, booleans, and various operators.
// JavaScript and Ruby share many common functionalities, such as the way number, strings, and booleans are treated with their respective operators and comparisons ( +,-,/,==,<,etc.). In addition, they both have th  "\" for escaping characters.
// Two differences exist in the way they handle undefined values and automatic type conversion. While Ruby uses nil as its main undefined value, JavaScript has null and undefined. In addition, while Ruby does not have any kind of automatic type conversion, JavaScript will try and convert number and strings based on internal conversion rules, making it easy to run almost any kind fo code.


// Chp. 2:Program Structure

// What is an expression?
// A fragment of code that produces a value.

// What is the purpose of semicolons in JavaScript? Are they always required?
// Semicolons are used to end a statement. Expressions followed by a semicolon signal JavaScript when to move onto the next statement. Semicolons are not always required, but it is good practice to end statements as such. By leaving them out, you can cause confusion when the program is parsing the syntax.

// What causes a variable to return undefined?
// A variable will return undefined when it is defined without a value.

// What does console.log do and when would you use it? What Ruby method(s) is this similar to?
// console.log prints out to the console, this is similar to the ruby print command.

// Describe while and for loops
// While looks and for loops are used for control flow. While loops will cause you to repeat a block of code, "while" a given condition holds true. Most commonly a counter is used until an upper limit or threshold is met. The for loop is simply a simpler construct which mimics the while loop and "for" a given condition will repeat a block of code until a threshold is met by some counter or index.

// What other similarities or differences between Ruby and JavaScript did you notice in this section?
// The most interesting differences were the "switch" construct for flow control, and also prompt, alert, and confirm. You can see how these would be an intergral part of JavaScript as the language of the web.


// Chp. 3:Functions

// What are the differences between local and global variables in JavaScript?
// Local variables are limited to the scope of the function within which they reside. Meanwhile, global variables reside outside of functions, yet can be referenced or changed within functions.

// When should you use functions?
// You should use a function when creating a given functionality or block of code which re-creates the same returned value or produces the same result. You want functions to be value-producing without any side effects, which can stand alone.

// What is a function declaration?
// A function declaration is when you write a function into the program. It is most often followed by the keyword "function" and has a given functio name with optional parameters which can be passed to it.


// Chp. 4:Data Structures: Objects and Arrays

// What is the difference between using a dot and a bracket to look up a property? Ex. array.max vs array["max"]
// The dot notation requires that whatever is after the dot be a valid variable name or property. Meanwhile, the bracket notation will try and evaluate the expression within the bracket and uses the result as the property name.

// What is a JavaScript object with a name and value property similar to in Ruby?
// The JavaScript object with a name and value property is similar to the hash in Ruby, which carries the key and value pair.


// Reflections:

// What are the biggest similarities and differences between JavaScript and Ruby?
// There are similarities which exist between many programming languages, notable the assignment of variables, booleans, numbers, variables, conditional statements, control flow, and functions/methods. I would say that JavaScript differs the most in terms of how it parses the code, introduces type conversion, how it takes care of extra parameters, how it treats global variables in comparison to functions and also the way in which it creates objects with properties.

// Was some of your Ruby knowledge solidified by learning another language? If so, which concepts?
// Yes there was a good amount of repetition in the concepts of control flow, the basics of variable assignments within functions/methods and outside of them, and lastly how to loop in different languages gave me a better understanding of how to understand the different data structures.

// How do you feel about diving into JavaScript after reading these chapters?
// I think reading these chapters were beneficial to coding. They provide a solid foundation and additional bits of knowledge in terms of the JavaScript parses code and small quirks to watch out for.