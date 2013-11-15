#Blackjack!

##Objective
#Practice contional logic including nested conditionals. 
#Use methods to keep our code DRY.

##Instructions
#We are going to build a command line blackjack game.  A player gets dealt two cards which have values between 1-11.  After they get dealt two cards you should show them the total score of their cards and ask them if they want to hit or stay. A player is allowed to "hit" up to two times.  After each hit you should ask if they want to hit or stay and display the total value of their cards. If they don't want to hit, and they are not at 21 they lose.  Your program should tell them they lose and exit.

#Note:  To take input from the person "playing" the game your program will have to use the Ruby method "gets".

##Challenge
#After successfully completing the previous game (there should be a commit with a working version of this game), alter the game so that a player can "hit" as many times as they want.


class Blackjack
  
  attr_accessor :deck, :no_of_decks, :card, :answer, :counter, :turns, :game_end

  def initialize
    @no_of_decks = 0
    @counter = 0
    @turns = 0
    @game_end = false
  end

  def welcome
    puts "\nWelcome to my casino! \nWould you like to play a game of Blackjack?"
  end

  def get_input_string
    @answer = gets.chomp.downcase
  end

  def get_input_integer
    @answer = gets.chomp.to_i
  end

  def enter_yes_or_no
    while ["yes", "y", "no", "n"].include?(answer) == false
      puts "Please enter yes or no."
      get_input_string
    end
  end

  def enter_positive_integer
    while @answer <= 0
      puts "Please enter a positive integer."
      get_input_integer
    end
  end

  def start_game
    get_input_string
    enter_yes_or_no
    case answer
      when "yes", "y"
        puts "\nHave a seat!\n\nDrawing up a chair...\n\n"
        sleep(1)
      when "no", "n"
        puts "\nTerrible choice."
        Kernel.exit
    end
  end

  def no_of_decks
    puts "How many decks would you like to use?"
    get_input_integer
    enter_positive_integer
    no_of_decks = answer
    @deck = Deck.new(no_of_decks)
    puts
  end

  def deal
    @card = deck.cards.sample
    deck.cards.delete(card)
    @turns += 1
    puts card
  end

  def pick_a_card
    if @turns == 2 then hit_or_stay
    elsif @turns == 3 
    else
      puts "Press enter to receive a card."
      answer = gets
      deal if answer == "\n"
      evaluate_card
    end
  end 

  def evaluate_card
    if ["K", "Q", "J", "1"].include? card[0]
      @counter += 10
    elsif card[0] == "A"
      counter > 11 ? @counter += 1 : @counter += 11
    else
      @counter += card[0].to_i
    end
    puts "Your total is #{counter}.\n\n"
  end

  def hit_or_stay
    puts "Hit or stay?"
    case get_input_string
    when "hit", "h"
      pick_a_card
      evaluate_card
    when "stay", "s"
      win_or_lose
    end
  end

  def win_or_lose
    if @counter == 21
      puts "BLACKJACK!"
    elsif @counter != 21
      puts "Sorry, you lose."
    end
    play_again_message
  end

  def play_again_message
    puts "\nWould you like to play again?"
    get_input_string
    enter_yes_or_no
    play_again
  end

  def play_again
    case answer
      when "yes", "y"
        reset
        puts
        pick_a_card
      when "no", "n"
        puts "Goodbye! Thank you for playing."
        exit
    end
  end

  def reset
    @turns = 0
    @counter = 0
    @game_end = false
  end

  def run
    welcome
    start_game
    no_of_decks
    pick_a_card
  end

end

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

game = Blackjack.new
game.run