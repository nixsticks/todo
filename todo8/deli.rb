# Create a class called Deli that has one instance variable: line.
 
# In our deli, we should be able to call "take a number" that takes a customer's name, appends their number to their name and adds them to the line.
 
# The line could look like this: ["1. Ashley", "2. Steve", "3. Blake"] 
 
# Additionally we should be able to call a method called "now_serving" that removes the customer who is first in line and returns their name.
 
# Write a test and then write the class.

class Deli
  attr_accessor :line
  def initialize
    @line = []
  end

  def take_a_number(customer)
    number = line.length + 1
    line << "#{number}. #{customer}"
  end

  def now_serving
    current_customer = line.first[3..line.first.length]
    line.delete_at(0)
    current_customer
  end
end