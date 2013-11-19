require_relative "./first_even"

describe "first even" do
  it "should return the first even number in an array" do
    first_even([30, 17, 77, 102]).should eq(30)
  end

  it "should return the first even number in an array" do
    first_even([5, 11, 50]).should eq(50)
  end

  it "should return the first even number in an array" do
    first_even([3, 5, 15, 16, 23, 42]).should eq(16)
  end

  it "should return the first even number in an array" do
    first_even([300, 22, 1, 55, 42]).should eq(300)
  end

end