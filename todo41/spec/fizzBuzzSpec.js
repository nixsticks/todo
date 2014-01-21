describe( "#fizzBuzz", function() {
  it("should say fizz for numbers divisible by 3, buzz for numbers divisible by 5, and fizzbuzz for numbers divisible by 3 and 5", function() {
    expect(fizzBuzz(15)).toEqual([1, 2, "fizz", 4, "buzz", "fizz", 7, 8, "fizz", "buzz", 11, "fizz", 13, 14, "fizzbuzz"]);
  });
});