require './each_with_object'

describe '#even_sum' do
  it 'should return an array containing one reversed string for each even string' do
    expect(even_sum(["cat", "dog", "bird", "fish"])).to eq(["drib", "hsif"])
    expect(even_sum(["hello", "goodbye", "nikki"])).to eq([])
    expect(even_sum(["oh", "my", "goodness"])).to eq(["ho", "ym", "ssendoog"])
  end
end