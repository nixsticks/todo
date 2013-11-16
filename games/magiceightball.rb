#Magic 8-Ball

##Objective
#Use methods to keep our code DRY.

##Instructions
#Build a ruby program that when run will ask the user if they want to shake the eight ball.
#If the user answers yes, have it give a random message.
#If the user says no, have it end.

class MagicEightBall
  attr_accessor :messages

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
    puts messages.sample + "\n\n"
    shake_again
  end

  def get_answer
    case ask_yes_no
    when true
      message
    when false
      puts "\nGOODBYE\n"
      exit
    else
      ask_yes_no
    end
    puts
  end

  def ask_yes_no
    while true
      case gets.chomp
      when /^y(es)?$/i
        return true
      when /^no?$/i
        return false
      end
      puts "Please enter yes or no."
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