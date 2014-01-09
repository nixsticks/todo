def longest_palindrome(string)
  counter = string.length

  while counter > 0
    array = string.split("").each_cons(counter).to_a
    array.each {|inner| return inner.join if palindrome?(inner)}
    counter -= 1
  end
end

def string_to_array(string)
  string.split("")
end

def palindrome?(array)
  if array.size % 2 == 0
    array[0...array.size/2] == array[array.size/2..array.size].reverse
  else
    array[0...array.size/2] == array[(array.size/2) + 1..array.size].reverse
  end
end