require './blackjack.rb'

describe "Blackjack" do
  let(:game) {Blackjack.new}
  describe "#start_game" do
    it "should welcome the user to the casino" do
      game.should_receive(:puts).with("\nWelcome to my casino! \nWould you like to play a game of Blackjack?").and_call_original
      game.run
    end
  end
end