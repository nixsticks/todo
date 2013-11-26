require "./min_value"

describe '#key_for_min_value' do
  it 'should return the key of the minimum value' do
    key_for_min_value({:centurion => 30, :raider => 50, :basestar => 1}).should eq(:basestar)
    key_for_min_value({:sharon => 8, :six => 6, :leoben => 2, :d_anna => 3}).should eq(:leoben)
  end

  it 'should return nil for an empty hash' do
    key_for_min_value({}).should eq(nil)
  end
end