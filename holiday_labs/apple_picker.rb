def apple_picker(array)
  apples = []
  array.each {|item| apples << item if item == "apple"}
  apples
end

def apple_picker_collect(array)
  apples = array.collect{|item| item == "apple" ? item : next}.compact!
end

def apple_picker_select(array)
  apples = array.select {|item| item == "apple"}
end

# 'Collect' returns a new array made up of the result of each item of the original array being passed to the block.
# 'Select', on the other hand, returns a new array made up of each item for which the block returns true.
# Which is why I had to call compact on apples in the apple_picker_collect version.