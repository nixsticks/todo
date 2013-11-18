require './fizzbuzz'

describe "#fizzbuzz" do
  it "should return fizzbuzz when number is evenly divisible by fifteen" do
    expect(fizzbuzz(75)).to eq("fizzbuzz")
  end

  it "should return buzz when number is evenly divisible by five" do
    expect(fizzbuzz(10)).to eq("buzz")
  end

  it "should return fizz when number is evenly divisible by three" do
    expect(fizzbuzz(18)).to eq("fizz")
  end

  it "should return the number itself when the number is not divisible by five or three" do
    expect(fizzbuzz(2)).to eq(2)
  end

  it "should raise an error if the argument given is not an integer" do
    expect {fizzbuzz("hello")}.to raise_error(TypeError, "Please pass in an integer.")
    expect {fizzbuzz(:hello)}.to raise_error(TypeError, "Please pass in an integer.")
    expect {fizzbuzz(10.4)}.to raise_error(TypeError, "Please pass in an integer.")
  end
end