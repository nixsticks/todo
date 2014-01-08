def longest_palindrome(string)
  if string.length % 2 == 0
    counter = string.length
  else
    counter = string.length - 1
  end

  split = string.split("")
  palindromes = []

  while counter > 0
    array = split.each_cons(counter).to_a
    array.each do |inner_array|
      i = inner_array.size
      j = inner_array.size/2
      return inner_array.join if inner_array[0..(j-1)] == inner_array[j..i].reverse
    end
    counter -= 2
  end
end

#each_cons even sizes. each slice half. see if half