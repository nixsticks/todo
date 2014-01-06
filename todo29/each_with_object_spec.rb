require './each_with_object'

describe '#even_sum' do
  it 'should return an array containing one reversed string for each even string' do
    expected = ["drib", "hsif"]
    expect(even_sum(["cat", "dog", "bird", "fish"])).to eq(expected)
  end
end