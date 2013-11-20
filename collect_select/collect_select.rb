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
    n = 0
    while n < self.length
      if yield(self[n]) == true
        return self[n]
      end
      n += 1
    end
  end
end