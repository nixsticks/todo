// simple version, no test.

// function fizzBuzz() {
//   for (var i = 1; i < 101; i++) {
//     if (i % 15 === 0) {
//       console.log("fizzbuzz");
//     }
//     else if (i % 5 === 0) {
//       console.log("buzz");
//     }
//     else if (i % 3 === 0) {
//       console.log("fizz");
//     }
//     else {
//       console.log(i);
//     }
//   }
// }

function fizzBuzz(n) {
  var array = [];

  for (var i = 1; i <= n; i++) {
    if (i % 15 === 0) {
      array.push("fizzbuzz");
    }
    else if (i % 5 === 0) {
      array.push("buzz");
    }
    else if (i % 3 === 0) {
      array.push("fizz");
    }
    else {
      array.push(i);
    }
  }

  return array;
}

function print(array) {
  array.forEach(function(element) {
    console.log(element);
  });
}