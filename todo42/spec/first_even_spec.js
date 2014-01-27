describe( "#first_even", function() {
  it("should return the first even element in an array of integers", function() {
    expect(first_even([15, 12, 18])).toBe(12);
  });

  it("should return null if there are no even elements", function() {
    expect(first_even([15, 1, 3, 13])).toBe(null);
  }); 
});
