##Challenge
#After successfully completing the previous game (there should be a commit with a working version of this game), alter the game so that a player can "hit" as many times as they want.

class Deck
  attr_accessor :cards

  SUITS = %w{ Clubs Diamonds Hearts Spades }
  RANKS = %w{ 2 3 4 5 6 7 8 9 10 Jack Queen King Ace }

  def initialize(n=1)
    @cards = []
    SUITS.cycle(n) do |s|
      RANKS.each do |r|
        @cards << "#{r} of #{s}"
      end
    end
  end
end

class Blackjack
  attr_accessor :counter, :turns, :deck, :card

  def initialize
    @counter = 0
    @turns = 0
  end

  def blank_line
    puts
  end

  def display(message)
    puts message
  end

  def start_game
    display "\nWelcome to my casino! \nWould you like to play a game of Blackjack?"
    play
  end

  def yes
    while true
      case gets.chomp
      when /^y(es)?$/i
        return true
      when /^no?$/i
        return false
      end
      display "Please enter yes or no."
    end
  end

  def play
    if yes
      display "\nHave a seat!\n\nDrawing up a chair...\n\n"
      sleep(2)
    else
      display "\nTerrible choice."
      exit
    end
  end 

  def deck_number
    number = gets.chomp.to_i
    if number <= 0
      display "Please enter a positive integer."
      deck_number
    elsif number > 10
      display "I don't have that many cards. Pick a smaller number."
      deck_number
    else
      number
    end
  end

  def no_of_decks
    display "How many decks would you like to use?"
    @deck = Deck.new(deck_number)
    blank_line
  end

  def deal
    @card = deck.cards.sample
    deck.cards.delete(card)
    @turns += 1
    display card
  end

  def hit_or_stay
    if @turns >= 2
      display "Hit or stay?"
      case gets.chomp
      when /^h(it)?$/i
        blank_line
        deal
      when /^s(tay)?$/i
        @turns = 3
        blank_line
        win_or_lose
      else
        display "Please say hit or stay."
        hit_or_stay
      end
    else
      display "Press enter to receive a card."
      deal if gets == "\n"
    end
  end

  def pick_a_card
    while @turns < 3
      hit_or_stay
      score
      win_or_lose
    end
  end 

  def score
    if /^[KQJ1]/.match(card[0])
      @counter += 10
    elsif card[0] == "A"
      counter > 11 ? @counter += 1 : @counter += 11
    else
      @counter += card[0].to_i
    end
    display "Your total is #{counter}.\n\n"
  end

  def win_or_lose
    if @counter == 21
      display "BLACKJACK!\n"
    elsif @turns == 3
      display "Sorry, you lose.\n"
    else 
      pick_a_card
    end
    play_again_message
  end

  def play_again_message
    display "\nWould you like to play again?"
    play_again
  end

  def play_again
    if yes
      reset
      blank_line
      pick_a_card
    else
      display "Goodbye! Thank you for playing."
      exit
    end
  end

  def reset
    @turns = 0
    @counter = 0
  end

  def run
    start_game
    no_of_decks
    pick_a_card
  end
end

# game = Blackjack.new
# game.run