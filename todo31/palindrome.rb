def longest_palindrome(string)
  i = counter(string.length)

  while i > 0
    array = string.split("").each_cons(i).to_a
    array.each {|inner| return inner.join if palindrome?(inner)}
    i -= 2
  end
end

def counter(i)
  i % 2 == 0 ? i : (i - 1)
end

def string_to_array(string)
  string.split("")
end

def palindrome?(array)
  array[0...array.size/2] == array[array.size/2..array.size].reverse
end