// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with Jenna Anderson.
// This challenge took me [3.5] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...

  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }

*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode

// 1. Create a function that iterates over the votes object and pushes vote count tally into voteCount object
//   a. Include a nested loop that will iterate over each object property in order to pass tests
// 2. Create a second function that iterates over voteCount nested objects and finds the max numbers of votes for each object property and returns those names
// 3. (winnning) names are assigned to officers object properties


// __________________________________________
// Initial Solution

// for (var voters in votes){
//   voteCount.president[votes[voters].president]=0;
//   voteCount.vicePresident[votes[voters].vicePresident]=0;
//   voteCount.secretary[votes[voters].secretary]=0;
//   voteCount.treasurer[votes[voters].treasurer]=0;
// }

// for (var count in votes){
//   voteCount.president[votes[count].president]+=1;
//   voteCount.vicePresident[votes[count].vicePresident]+=1;
//   voteCount.secretary[votes[count].secretary]+=1;
//   voteCount.treasurer[votes[count].treasurer]+=1;
// }

// for(var property in voteCount){
// // set variables inside first for loop, but outside second.  If outside it only compares largest value overall (Fred will repeat).
//   var leader = 0;
//   for(var value in voteCount[property]){
//     if (voteCount[property][value] > leader){
//       leader = voteCount[property][value];
//       winner = value;
//     };
//   };
//   officers[property] = winner;
// };

// __________________________________________
// Refactored Solution

for (var keys in votes){
  voteCount.president[keys]=0;
  voteCount.vicePresident[keys]=0;
  voteCount.secretary[keys]=0;
  voteCount.treasurer[keys]=0;
}

for (var keys in votes){
  voteCount.president[votes[keys].president]+=1;
  voteCount.vicePresident[votes[keys].vicePresident]+=1;
  voteCount.secretary[votes[keys].secretary]+=1;
  voteCount.treasurer[votes[keys].treasurer]+=1;
}

for(var property in voteCount){
// set variables inside first for loop, but outside second.  If outside it only compares largest value overall (Fred will repeat).
  var leader = 0;
  for(var value in voteCount[property]){
    if (voteCount[property][value] > leader){
      leader = voteCount[property][value];
      winner = value;
    };
  };
  officers[property] = winner;
};

// __________________________________________
// Reflection

// What did you learn about iterating over nested objects in JavaScript?
// I learned a lot about the for..in loop and also banged my head longer than I care to admit trying to solve this challenge.
// One important aspect is that you need to initialize first no matter what.

// Were you able to find useful methods to help you with this?
// the for..in loop was very useful, and also it was useful to know when to use bracket versus dot notation.

// What concepts were solidified in the process of working through this challenge?
// It was tough switching between Ruby and JavaScript this week, but the importance of intializing variables was thoroughly ingrained in me this week.
// Props to Jupiter Baudot, for we looked at his code to illuminate our problems.

// __________________________________________
// Test Code:  Do not alter code below this line.

function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)
