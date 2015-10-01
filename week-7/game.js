 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Skate through town to collect all the tokens
// Goals: Collect all the tokens
// Characters: Rodney Mullen
// Objects: Skater, tokens
// Functions: Collect tokens, token count

// Pseudocode:
// Create object skater, with name, token count
// create object tokens
// create function collect token, which adds tokens to skater object
// create function token count to see how many tokens the skater currently has

// Initial Code

// var skater = {
//   name: "Rodney Mullen",
//   token: 0,
// };

// var token = 1;

// function tokenCount(skater) {
//   console.log(skater.token);
// };

// function collectToken(skater) {
//   skater.token += token;
// };

// console.log(skater);
// collectToken(skater);
// tokenCount(skater);

// Refactored Code

var Rodney = {
  name: "Rodney Mullen",
  token: 0,
  board: "World Industries",
  speed: 1,
  jump: 1,
};

var Bam = {
  name: "Bam Margera",
  token: 0,
  board: "Element",
  speed: 1,
  jump: 1,
}

var Tony = {
  name: "Tony Hawk",
  token: 0,
  board: "Flip",
  speed: 1,
  jump: 1,
}

var skaterList = [Rodney, Bam, Tony];

var token = 1;

var skater = chooseCharacter();

function chooseCharacter(name) {
  if (name == null) {
    return skaterList[Math.floor(Math.random()*(skaterList.length-1))];
  }
  else {
    return name
  }
};

function tokenCount(skater) {
  if (skater.token == 1) {
    console.log(skater.name + " has " + skater.token + " token.");
  }
  else {
    console.log(skater.name + " has " + skater.token + " tokens.");
  }
};

function collectToken(skater, tokens) {
  if (tokens == null) {
    skater.token += token;
  }
  else {
    skater.token += tokens;
  }
};

function increaseSpeed(skater) {
  if (skater.token > 9) {
    skater.token -= 10;
    skater.speed += 1;
  }
  console.log(skater.name + " has increased speed!");
  console.log(skater.name + " has a new speed of " + skater.speed);
};

function increaseJump(skater) {
  if (skater.token > 9) {
    skater.token -= 10;
    skater.jump += 1;
  }
  console.log(skater.name + " has increased jump!");
  console.log(skater.name + " has a new jump of " + skater.jump)
};

console.log("Your skater is " + skater.name);
collectToken(skater);
collectToken(skater);
collectToken(skater);
collectToken(skater,10);
tokenCount(skater);
increaseSpeed(skater);
tokenCount(skater);

// Reflection:
// What was the most difficult part of this challenge?
// The most difficult part was coming up with a game idea that would have basic level objects and functions. Also, it took me forever to figure out that JavaScript requires explicit returns as opposed to Ruby which does not.

// What did you learn about creating objects and functions that interact with one another?
// I learned about how to incorporate the objects within the functions, and have them print out the desired outputs.

// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
// I was able to incorporate optional parameters, so that if there is no explcit second parameter it would only collect 1 token when called.

// How can you access and manipulate properties of objects?
// You can access the properties of the objects via dot notation and reassign or add to their given values.