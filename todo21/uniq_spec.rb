require_relative 'uniq'

describe Array do
  describe '#uniq' do
    it 'should remove duplicate entries' do
      expect(["hello", "nikki", "hello"].uniq).to eq(["hello", "nikki"])
      expect(["is", "this", "a", "duplicate", "duplicate"].uniq).to eq(["is", "this", "a", "duplicate"])
      expect([1,2,3,3,1,5].uniq).to eq([1,2,3,5])
    end
  end
end