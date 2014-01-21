function fizzBuzz() {
  for (var i = 0; i < 101; i++) {
    if (i % 15 == 0) {
      return "fizzbuzz";
    }
    else if (i % 5 == 0) {
      return "buzz";
    }
    else if (i % 3 == 0) {
      return "fizz";
    }
    else {
      return i;
    }
  }
}