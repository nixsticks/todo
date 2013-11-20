# Implement your own versions of collect and select
 
# def my_collect(array)
# #code goes here
# end
 
# def my_select(array)
# #
# end
 
# CHALLENGE:
# Implement these methods as instance methods on the array class.

class Array
  def my_collect
    return self.to_enum unless block_given?
    n = 0
    new_array = []
    while n < self.length # this is because the last index is length - 1
      item = yield self[n]
      new_array << item
      n += 1
    end
    new_array
  end

  def my_select
    return self.to_enum unless block_given?
    n = 0
    new_array = []
    while n < self.length
      new_array << self[n] if yield(self[n])
      n += 1
    end
    new_array
  end
end