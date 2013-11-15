fizzbuzzes = (1..100).map do |i|
  if i % 15 == 0 then "fizzbuzz"
  elsif i % 3 == 0 then "fizz"
  elsif i % 5 == 0 then "buzz"
  else i
  end
end

puts fizzbuzzes