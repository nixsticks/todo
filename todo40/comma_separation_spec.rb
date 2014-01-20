require './comma_separation'

describe '#separate_with_comma' do
  it 'should separate thousands units with commas' do
    expect(separate_with_comma(1)).to eq("1")
    expect(separate_with_comma(1000)).to eq("1,000")
    expect(separate_with_comma(10000)).to eq("10,000")
    expect(separate_with_comma(1000000)).to eq("1,000,000")
  end
end