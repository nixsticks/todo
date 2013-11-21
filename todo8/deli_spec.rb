require './deli.rb'

describe Deli do

  let(:deli) {Deli.new}
    before do
      deli.line = ["1. Nikki", "2. Anisha"]
    end

  describe '#take_a_number' do
    # In our deli, we should be able to call "take a number" that takes a customer's name, appends their number to their name and adds them to the line.
    it 'should take a customer name, append their number to the name, and add it to the line' do
      deli.take_a_number("Derek")
      expect(deli.line).to eq(["1. Nikki", "2. Anisha", "3. Derek"])
    end
  end

  describe '#now_serving' do
    it 'should return the name of the customer being served and remove their name from the line' do
      expect(deli.now_serving).to eq("Nikki")
      expect(deli.line).to eq(["2. Anisha"])
    end
  end
end