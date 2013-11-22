require './anagram'

describe Anagram do
  describe '#initialize' do
  end

  describe '#match' do
    let(:anagram_checker) {Anagram.new("nowhere")}

    it 'should return an empty array if there are no anagrams' do
      expect(anagram_checker.match(['samuel', 'butler'])).to eq([])
    end

    it 'should return a single match' do
      expect(anagram_checker.match(['erewhon', 'bicycle', 'fish'])).to eq(['erewhon'])
    end

    it 'should return multiple matches' do
      expect(anagram_checker.match(['erewhon', 'herenow', 'orange'])).to eq(['erewhon', 'herenow'])
    end
    
    it 'should return anagrams regardless of case' do
      expect(anagram_checker.match(['Erewhon', 'herenow'])).to eq(['Erewhon', 'herenow'])
    end
  end
end