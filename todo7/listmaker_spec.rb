require './listmaker'

describe 'Array' do
  describe '#make_list' do
    it 'should return an array of strings in a numbered list' do
      expect(["hello", "my", "name", "is", "nikki"].make_list).to eq(["1. hello", "2. my", "3. name", "4. is", "5. nikki"])
    end
  end
end