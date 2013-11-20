require './listmaker'

describe 'Array' do
  describe '#make_list' do
    it 'should return an array of strings in a numbered list' do
      expect(["hello", "my", "name", "is", "nikki"].make_list).to eq(["1. hello", "2. my", "3. name", "4. is", "5. nikki"])
      expect([99, 88, 77, 66].make_list).to eq(["1. 99", "2. 88", "3. 77", "4. 66"])
    end
  end
end