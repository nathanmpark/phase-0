 // JavaScript Olympics

// I paired [by myself, with: Lauren Jin] on this challenge.

// This challenge took me [1 hour and 10 minutes] hours.

// Bulk Up
// Pseudocode
// Take in a hash of (names: events) for a collection of athletes.
// Create a "win" property to assign to each athlete.

function add_win(athlete) {
  for (var index = 0; index < athlete.length; index++) {
    athlete[index].win = athlete[index].name + ' won ' + athlete[index].event;
    console.log(athlete[index].win);
  }
}

add_win([{name:"GK",event:"Ladies Singles"}, {name:"ZK",event:"Tennis"}, {name:"TK",event:"Basketball"}, {name:"AK",event:"Polo"}]);

// Jumble your words

// Pseudocode
// take string as argument
// string to array,
// reverse that array
// rejoin array
// return string

function reverseString(string){
  console.log(string.split('').reverse().join(''));
}

reverseString("hello my name is Lauren");

// 2,4,6,8
// Pseudocode
// Take array of integer as argument
// Initialize answer array
// Iterate through each element in array
// Check if number is even
// If number is even, push element into answer array
// Return answer

function evenNumber(array){
  var answer = [];
  for(var index = 0; index < array.length; index++){
    if (array[index] % 2 === 0){
      answer.push(array[index]);
    }
  }
  console.log(answer);
}

evenNumber([1,2,3,4,5,6,7,8,9,9,0,7,56,4,5,3,6,4,52,345,6,5,3,0])

// "We built this city"

function Athlete(name,age,sport,quote){
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

// Reflection

// What JavaScript knowledge did you solidify in this challenge?
// I was able to solidify my knowledge of constructor functions, adding object properties, and how to loop in JavaScript.

// What are constructor functions?
// Constructor functions are effectively like Ruby classes. They act as ways to instantiate new objects using the function to create properties of the instance. You can create new instances using the new keyword, and the constructor functions require a capital letter name.

// How are constructors different from Ruby classes (in your research)?
// The main differences I have found is in the way objects are created. Ruby creates objects via instances of the class that is created. Thus, there is a level of inheritance that occurs from the class object. In addition, there is data encapsulation which exists within a Ruby class. You can make certain methods private and also methods are restricted to the classes from which the objects are created. In comparison, the JavaScript constructor function can create an object and draws its inheritance fromt he function itself. In addition, there is less of a level of data encapsulation within these constructor classes.