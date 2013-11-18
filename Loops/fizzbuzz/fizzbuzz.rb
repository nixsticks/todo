fizzbuzzes = (1..100).map do |i|
  if i % 15 == 0 then "fizzbuzz"
  elsif i % 3 == 0 then "fizz"
  elsif i % 5 == 0 then "buzz"
  else i
  end
end

def fizzbuzz(num)
  if num.is_a?(Integer) == false
    raise TypeError, "Please pass in an integer."
  end

  if num % 15 == 0 then "fizzbuzz"
  elsif num % 3 == 0 then "fizz"
  elsif num % 5 == 0 then "buzz"
  else num
  end
end