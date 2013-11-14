(1..100).each do |i|
  if i % 3 == 0 && i % 5 == 0
    puts "fizzbuzz"; next
  elsif i % 3 == 0
    puts "fizz"; next
    next
  elsif i % 5 == 0
    puts "buzz"; next
  end
  puts i
end