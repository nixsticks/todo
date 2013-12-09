def count(array)
  count = Hash.new(0)
  array.each {|element| count[element] += 1} 
  count
end