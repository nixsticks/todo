require './hash_keys'

describe Hash do
  describe '#keys_of' do
    it 'should return the keys of a hash whose values are equal to the given arguments' do
      expect({a: 1, b: 2, c: 3}.keys_of(1)).to eq([:a])
      expect({a: 1, b: 2, c: 3, d: 1}.keys_of(1)).to eq([:a, :d])
    end
  end
end