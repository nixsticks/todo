require './array_count'

describe '#count' do
  it 'should return a hash with keys of the elements of an array and the values of the amount of times they occur' do
    test = ['cat', 'dog', 'fish', 'fish']
    expected = { 'cat' => 1, 'dog' => 1, 'fish' => 2 }
    expect(count(test)).to eq(expected)
  end
end