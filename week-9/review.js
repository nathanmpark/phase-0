// FizzBuzz Super Edition in JavaScript

// PseudoCode
// takes in an input of an array of numbers
// 1. Multiples of 3 should be replaced with Fizz
// 2. Multiples of 5 should be replaced with FizzBuzz
// 3. Multiples of 15 should be replaced with the string FizzBuzz
// split the array into individual items
// iterate through each item
// if the item is multiple of 3 replace value with Fizz
// if the item is multiple of 5 replace with Buzz
// if the item is multiple of 15 replace with FizzBuzz
// recombine array back
// return result

// Initial Solution

// function super_fizzbuzz(array){
//   for(var i = 0; i < array.length; i++){
//     if(array[i] % 15 == 0){
//       array[i] = "FizzBuzz";
//     }
//     else if(array[i] % 5 == 0){
//       array[i] = "Buzz";
//     }
//     else if(array[i] % 3 == 0){
//       array[i] = "Fizz";
//     }
//   };
//   console.log(array);
// };

// super_fizzbuzz([1,2,3,4,5,6,7,8,9,10,15,20,30,100,200])

// Refactor

function super_fizzbuzz(array){
  for(var i = 0; i < array.length; i++){
    (array[i] % 15 == 0) ? array[i] = "FizzBuzz" : (array[i] % 5 == 0) ? array[i] = "Buzz" : (array[i] % 3 == 0) ? array[i] = "Fizz" : array[i]
  };
  console.log(array);
};

super_fizzbuzz([1,2,3,4,5,6,7,8,9,10,15,20,21,23,35,37,88,97,45,34,778,12,30,100,200])

// Reflection
// What concepts did you solidify in working on this challenge?
// I was able to go over iterating through arrays and working with ternary operators.

// What was the most difficult part of this challenge?
// The most difficult part of translating it to ternary operators in the refactor.

// Did you solve the problem in a new way this time?
// I actually approached a brand new problem from the Ruby Review Section.

// Was your pseudocode different from the Ruby version? What was the same and what was different?
// My pseudocode was original since I chose a brand new challenge.