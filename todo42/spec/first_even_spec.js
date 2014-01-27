describe( "#first_even", function() {
  it("should return the first even element in an array of integers", function() {
    expect(first_even([15, 12, 18])).toBe(12);
  });      

  // it("should throw an error if the array contains non-integers", function() {
  //   expect(first_even(["hello", 2])).toThrow(new Error("Function requires an array of integers"));
  // });
});
