require './magicball'

describe "Magic8" do
  let(:game) {Magic8.new}
  messages = ["Try again later", 
                  "My sources tell me good things are coming your way", 
                  "Who waketh the Kraken?", 
                  "Bleep Bloop I'm just a computer. Why are you asking me?",
                  "Things point towards yes",
                  "Nope. Sorry, not happenin'",
                  "STOP SHAKING ME, CALM DOWN!",
                  "Poop",
                  "Mayyyyyybeeee?"
                  ]

  describe "#greeting" do
    it "should ask me if I want to know my fortune" do
      game.should_receive(:puts).with("Want to know your fortune? Shake the magic eight ball! Shake you computer to play\n...I was kidding. Type 'yes' to play and 'no' to quit").and_call_original
      game.run 
    end
  end

  describe "#shake" do
    it "should give me a random message" do
      expect(messages).to include(game.shake("yes"))
    end
  end
end