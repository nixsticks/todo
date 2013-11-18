require './yahtzee'

describe Yahtzee do
  let(:yahtzee) {Yahtzee.new}

  describe "#roll_dice" do
    it "should return an array of 5 random numbers" do
      expect(yahtzee.roll_dice).to be_an(Array)
      expect(yahtzee.roll_dice.size).to be(5)
    end

    it "should return an array of numbers between 1 and 6" do
      expect(yahtzee.roll_dice.reduce(:+)).to be <= 30
      expect(yahtzee.roll_dice.reduce(:+)).to be >= 5
      expect(yahtzee.roll_dice.sample).to be <=6
      expect(yahtzee.roll_dice.sample).to be >=1
    end
  end

  describe "#win?" do
    it "should return true if you roll five of the same numbers" do
      yahtzee.stub(:roll_dice) { [5,5,5,5,5] }
      expect(yahtzee.win?(yahtzee.roll_dice)).to be(true)
      # or expect(yahtzee.win?([5,5,5,5,5])).to be(true)
    end

    it "should return false if you do not roll five of the same number" do
      yahtzee.stub(:roll_dice) { [1,5,3,2,6] }
      expect(yahtzee.win?(yahtzee.roll_dice)).to be(false)
    end
  end
end