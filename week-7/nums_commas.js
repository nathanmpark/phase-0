// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge for 1.5 hours with: Jupiter Baudot.

// Pseudocode
// return the final number as string, with commas
// If the number is < 1000 print the number
// If the number is > 1000,
// Reverse the number
// Break down the number into chunks of 3
// insert a comma at the end of each chunk, when joining them together
// reverse the number back to original order
// return number as a string


// Initial Solution
// function separateComma(number) {
//   if (number < 1000) {
//     return number;
//   }
//   else {
//     var number = number.toString().split('').reverse();
//     var answer = [], size = 3;

//     while (number.length > 0)
//       answer.push(number.splice(0, size),',');

//     answer = number.concat.apply(number,answer).reverse();
//     answer.shift();
//     answer = answer.join('');
//     console.log(answer);
//   }

// }


// Refactored Solution
function separateComma(number) {
  if (number < 1000) {
    return number;
  }
  else {
    var number = number.toString().split('').reverse();
    var answer = [];

    while (number.length > 0)
      answer.push(number.splice(0, 3).join(''));

    answer = answer.join(',').split('').reverse().join('');
    console.log(answer);
  }

}

// Your Own Tests (OPTIONAL)

separateComma(123456);
separateComma(123456789);
separateComma(1234567890000000000000);

// Reflection

// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
// Yes, it was interesting approaching the same problem while exploring the differences in methods and syntax of JavaScript. It was also challenging to debug Javascript as the error messages were hard to decipher.

// What did you learn about iterating over arrays in JavaScript?
// There does not exist so many enumerables in JavaScript as can be found in Ruby. Also, there is a stark difference between destructive and non-destructive methods.

// What was different about solving this problem in JavaScript?
// There were differences in the way the varibles were intialized and the flow control was written out. In addition, the syntax for writing the method and the while loop dont require end.

// What built-in methods did you find to incorporate in your refactored solution?
// My pair and I were able to incorporate the toString, join, splice, split, and reverse methods. They were very helpful in shortening down the method.