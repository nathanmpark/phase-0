// Person 1: Test to Users Stories

// As a user, I want to have three different functions which calculate the sum, mean, and median for a collection of numbers.
// As a user, I want all three functions to work regardless of there being even or odd number of elements within the collection of numbers.
// As a user, I want all three mathematical functions to use decimals, and not round any numbers.
// As a user, I want all three functions to handle collections of numbers with repeated elements.

// As a user, I want the first function to be called "sum".
// As a user, I want the "sum" function to return the sum of all elements within the collection of numbers.

// As a user, I want the second function to be called "mean".
// As a user, I want the "mean" function to return the average of all the elements within the collection of numbers.

// As a user, I was the third function to be called "median".
// As a user, I want the "median" function to return the median or middle value of all the elements in the collection of numbers.

// Person 2: PSEUDOCODE
// CALCULATE THE SUM, MEAN, AND MEDIUM FOR COLLECTION OF NUMBERS


// Define the “sum” function and allow it to take two arguments (even and odd numbered arrays).
// Create a sum variable and set it to 0
// Use a loop (either “for” or “while”) that takes the variable in the array (“i” is popular default in JS) and increases in value if conditions are met
// Return both arrays

// Define the “mean” function and allow it to take two arguments
// Create a variable and set it to 0
// Use a loop (either “for” or “while”) that takes the variable in the array (“i” is popular default in JS) and increases if conditions are met
// Return both arrays

// Define the “median” and allow it to take two arguments
// Sort numbers from lowest to highest
// Use conditional statements
// If length is odd (perhaps use %), return median. Else, length is even
// Return median

// Person 3 & 4
// PSEUDOCODE
// CALCULATE THE SUM, MEAN, AND MEDIUM FOR COLLECTION OF NUMBERS


// Define the “sum” function and allow it to take two arguments (even and odd numbered arrays).
// Create a sum variable and set it to 0
// Use a loop (either “for” or “while”) that takes the variable in the array (“i” is popular default in JS) and increases in value if conditions are met
// Return both arrays

function sum(a, b) {
  var counter = 0;
  for (var i = 0; i < a.length; i++) {
    counter += a[i]
  };
  for (var j = 0; j < b.length; j++) {
    counter += b[j]
  }
  return counter
}
console.log(sum([6,7,8], [5,4,3]))


// Define the “mean” function and allow it to take two arguments
// Create a variable and set it to 0
// Use a loop (either “for” or “while”) that takes the variable in the array (“i” is popular default in JS) and increases if conditions are met
// Return both arrays

function mean(a, b) {
  var counter = 0;
  for (var i = 0; i < a.length; i++) {
    counter += a[i]
  };
  for (var j = 0; j < b.length; j++) {
    counter += b[j]
  }
  return counter / (a.length + b.length)
}

console.log(mean([2], [2]))
console.log(mean([10, 5, 7], [12, 2]))

// Define the “median” and allow it to take two arguments
// Sort numbers from lowest to highest
// Use conditional statements
// If length is odd (perhaps use %), return median. Else, length is even
// Return median

function median(a, b) {
  var sorted = (a.concat(b)).sort(function(x,y) {return x-y});
  if (sorted.length % 2 !== 0) {
    return sorted[Math.floor(sorted.length/2)];
  }
  else {
   return ((sorted[sorted.length/2] + sorted[sorted.length/2 - 1]) /2);
  };
}
 var x = [4, 5, 6]
 var y = [5, 4]

 var c = [9, 8, 7]
 var d = [5, 4, 2, 2, 2, 2, 2]
console.log(median(x, y))

console.log(median(c,d))

// Add the finished solution here when you receive it.
// __________________________________________
// Tests:  Do not alter code below this line.


oddLengthArray  = [1, 2, 3, 4, 5, 5, 7]
evenLengthArray = [4, 4, 5, 5, 6, 6, 6, 7]


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

// tests for sum
assert(
  (sum instanceof Function),
  "sum should be a Function.",
  "1. "
)

assert(
  sum(oddLengthArray) === 27,
  "sum should return the sum of all elements in an array with an odd length.",
  "2. "
)

assert(
  sum(evenLengthArray) === 43,
  "sum should return the sum of all elements in an array with an even length.",
  "3. "
)

// tests for mean
assert(
  (mean instanceof Function),
  "mean should be a Function.",
  "4. "
)

assert(
  mean(oddLengthArray) === 3.857142857142857,
  "mean should return the average of all elements in an array with an odd length.",
  "5. "
)

assert(
  mean(evenLengthArray) === 5.375,
  "mean should return the average of all elements in an array with an even length.",
  "6. "
)

// tests for median
assert(
  (median instanceof Function),
  "median should be a Function.",
  "7. "
)

assert(
  median(oddLengthArray) === 4,
  "median should return the median value of all elements in an array with an odd length.",
  "8. "
)

assert(
  median(evenLengthArray) === 5.5,
  "median should return the median value of all elements in an array with an even length.",
  "9. "
)