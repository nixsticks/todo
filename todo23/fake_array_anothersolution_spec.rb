require_relative 'fake_array_anothersolution'

describe FakeArray do
  describe '#each' do
    it 'should yield each element to the block' do
      container = []
      fakearray = FakeArray.new(1,2,3)
      fakearray.each {|element| container << element + 1}
      expect(container).to eq([2,3,4])
    end
  end

  describe '#first' do
    it 'should return the first element' do
      fakearray = FakeArray.new("hello", "nikki")
      expect(fakearray.first).to eq("hello")
    end
  end

  describe '#[]' do
    it 'should return the nth element in the array' do
      fakearray = FakeArray.new(5,6,7,8)
      expect(fakearray[1]).to eq(6)
    end
  end
end