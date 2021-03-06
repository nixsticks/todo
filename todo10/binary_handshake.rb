# # Binary Secret Handshake
 
# > There are 10 types of people in the world: Those who understand binary, and those who don't.
 
# You and your fellow flatirons are of those in the "know" when it comes to binary decide to come up with a secret "handshake".
 
# ```
# 1 = wink
# 10 = double blink
# 100 = close your eyes
# 1000 = jump
 
 
# 10000 = Reverse the order of the operations in the secret handshake.
# ```
 
# Write a program that will convert a binary number, represented as a string (i.e. "101010"), and convert it to the appropriate sequence of events for a secret handshake.
 
 
# ```
# handshake = SecretHandshake.new "1001"
# handshake.commands # => ["wink","jump"]
 
# handshake = SecretHandshake.new "11001"
# handshake.commands # => ["jump","wink"]
# ```
 
# The program should consider strings specifying an invalid binary as the value 0.

class SecretHandshake
  attr_accessor :number

  HANDSHAKE = {
    0b1 => "wink",
    0b10 => "double blink",
    0b100 => "close your eyes",
    0b1000 => "jump",
    0b10000 => "reverse"
  }
  
  def initialize(bin)
    @number = bin.to_i(2)
  end

  def commands
    array = []
    HANDSHAKE.each do |bin, action|
      array << action if bin & number == bin
    end
    reverse(array)
  end

  def reverse(array)
    if array.include?("reverse")
      array.delete("reverse")
      array.reverse!
    else
      array
    end
  end
end