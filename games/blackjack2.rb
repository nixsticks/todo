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
  attr_accessor :counter, :turns, :answer

  def initialize
    @counter = 0
    @turns = 0
    @answer
  end

  def blank_line
    puts
    puts
  end

  def start_game
    puts "\nWelcome to my casino! \nWould you like to play a game of Blackjack?"
    play
  end

  def get_input_string
    answer = gets.chomp.downcase
  end

  def get_input_integer
    answer = gets.chomp.to_i
  end

  def play
    case get_input_string
    when "yes", "y"
      puts "\nHave a seat!\n\nDrawing up a chair...\n\n"
      sleep(1)
    when "no", "n"
      puts "\nTerrible choice."
      Kernel.exit
    else
      puts "Please enter yes or no."
      get_input_string
    end
  end 

  def how_many_decks
    get_input_integer
    while @answer <= 0
      puts "Please enter a positive integer."
      get_input_integer
    end
  end

  def no_of_decks
    puts "How many decks would you like to use?"
    how_many_decks
    @deck = Deck.new(answer)
    blank_line
  end

  def deal
    @card = deck.cards.sample
    deck.cards.delete(card)
    @turns += 1
    puts card
  end

  def hit_or_stay
    if @turns == 2
      puts "Hit or stay?"
      case get_input_string
      when "hit"
        break
      when "stay"
        @turns = 3
        win_or_lose
      else "Please say hit or stay."
        hit_or_stay
      end
    end
  end

  def pick_a_card
    while @turns < 3
      hit_or_stay
      puts "Press enter to receive a card."
      deal if gets == "\n"
      score
      win_or_lose
    end
    play_again_message
  end 

  def score
    if ["K", "Q", "J", "1"].include? card[0]
      @counter += 10
    elsif card[0] == "A"
      counter > 11 ? @counter += 1 : @counter += 11
    else
      @counter += card[0].to_i
    end
    puts "Your total is #{counter}.\n\n"
  end

  def win_or_lose
    if @counter == 21
      puts "BLACKJACK!"
      @game_end == true
    elsif @turns == 3
      puts "Sorry, you lose."
      @game_end == true
    # else 
    #   pick_a_card
    end
    play_again_message
  end

  def play_again_message
    if @game_end == true
      puts "\nWould you like to play again?"
      get_input_string
      play_again
    end
  end

  def play_again
    case answer
      when "yes", "y"
        reset
        blank_line
        pick_a_card
      when "no", "n"
        puts "Goodbye! Thank you for playing."
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