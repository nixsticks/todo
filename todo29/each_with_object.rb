def even_sum(arr)
  arr.each_with_object([]) {|string, array| array << string.reverse if string.length % 2 == 0 }
end