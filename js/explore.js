// 7.1 Syntax

// Release 4: Write a JavaScript Program

// In phase-0-tracks/js, create a file called explore.js.
// Ruby has lots of handy functions like .reverse, but in JavaScript, we mostly have to write our own.
// In comments, pseudocode a function that takes a string as a parameter and reverses the string.
// reverse("hello"), for example, should return "olleh". This isn't a task specific to JavaScript
// -- your pseudocode should be in plain English and use phrases like "for each" instead of JavaScript-specific terms.
// Remember that you can add strings in JavaScript, so '' + 'a' would result in the string 'a'. Take your time.
// This is the most valuable skill in programming: being able to think through a problem logically.
// Under your commented pseudocode, implement your function in JavaScript. Test it with driver code if you like.
// Anytime you'd like to run your code, you can run node explore.js from the js folder in your terminal, similar to how you run Ruby programs.
// Add driver code that calls the function in order to reverse a string of your choice (as long as it's not a palindrome!),
// and stores the result of the function in a variable.
// Add driver code that prints the variable if some condition is true. The condition can be a silly one, like 1 == 1.

// Pseudocode
// input the string that you want to reverse
// declare a variable as the string
// break the string into individual letters or an array
// reverse the letters
// add each letter back into a string
// print the result
// =======================================
// ======With built in methods============

// function reverseString(string) {
//   var reverseString = string.split('').reverse().join('')
//   if (1 == 1) {
//     console.log(reverseString)
//   }
//
//   else {
//     console.log ("Error!")
//   }
// }
//
// reverseString("Hello JavaScript")

// =================================================
  var string = "JavaScript"
  var reversedstring = ""
  for ( i = string.length-1; i >= 0; i--) {
    reversedstring += string[i]
 }
      console.log(reversedstring)

// Driver code

 function reverseString(string) {
  var reversedstring = ""

   for ( i = string.length-1; i >= 0; i--) {

      reversedstring += string[i];
 }
        return reversedstring
 }

var someString = reverseString("hi");
var someString = reverseString("DevBootcamp");

 if ( 1 == 1){
   console.log(someString);
 }
 else {
   console.log("Error!")
 }
 
