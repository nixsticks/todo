require './collect_select.rb'

describe Array do
  describe '#my_collect' do
    it 'should return an enumerator if no block is given' do
      expect([1,2,3,4].my_collect).to be_a_kind_of(Enumerator)
    end

    it 'should return an array of the results of a block' do
      expect([1,2,3,4].my_collect {|num| num + 1}).to eq([2,3,4,5])
    end
  end

  describe '#my_select' do
    it 'should return an enumerator if no block is given' do
      expect([1,2,3,4].my_select).to be_a_kind_of(Enumerator)
    end

    it 'should return a new array of all the elements for which the block returns true' do
      expect([4,4,5,7,9].my_select {|num| num == 4}).to eq([4,4])
      expect(["hello", "apple", "orange"].my_select {|word| word == "orange"}).to eq(["orange"])
    end
  end
end