#Magic 8-Ball

##Objective
#Use methods to keep our code DRY.

##Instructions
#Build a ruby program that when run will ask the user if they want to shake the eight ball.
#If the user answers yes, have it give a random message.
#If the user says no, have it end.

class MagicEightBall
  attr_accessor :messages, :answer

  def initialize
    @messages = [
      "ASK AGAIN TOMORROW", 
      "ALL SIGNS POINT TO YES",
      "WITHOUT A DOUBT",
      "YES, DEFINITELY",
      "YOU MAY RELY ON IT",
      "AS I SEE IT, YES",
      "MOST LIKELY",
      "OUTLOOK GOOD",
      "IT IS DECIDEDLY SO",
      "IT IS CERTAIN",
      "CONCENTRATE AND ASK AGAIN",
      "DON'T COUNT ON IT",
      "MY SOURCES SAY NO",
      "OUTLOOK NOT SO GOOD",
      "VERY DOUBTFUL",
      "MY REPLY IS NO"
    ]
    @answer
  end

  def shake
    image
    puts "Would you like to shake the Magic Eight-Ball?"
    get_answer
  end

  def message
    puts "\nThink hard about what you would like to ask..."
    sleep(4)
    puts "And the answer is..."
    sleep(2)
    puts messages.sample
    puts
    shake_again
  end

  def get_answer
    @answer = gets.chomp.downcase
    ensure_yes_no_answer
    case @answer
    when "yes", "y"
      message
    when "no", "n"
      puts "\nGOODBYE\n"
      exit
    end
    blank_line
  end

  def ensure_yes_no_answer
    while ["yes", "no", "y", "n"].include?(@answer) == false
      puts "Please answer yes or no."
      get_answer
    end
  end

  def shake_again
    puts "Would you like to shake again?"
    get_answer
  end

  def image
    print "              _......._
           .-:::::::::::-.
         .:::::::::::::::::.
        ::::::: .-...  :::::::
       :::::::  :   :  :::::::
      ::::::::  :   :  ::::::::
      :::::::::._`-'_.:::::::::
      :::::::::' .-. `:::::::::
      ::::::::  :   :  ::::::::
       :::::::  :   :  :::::::
        :::::::._`-'_.:::::::
         `:::::::::::::::::'
           `-:::::::::::::`
              `'''''''``\"\n"
  end
end

ball = MagicEightBall.new
ball.shake