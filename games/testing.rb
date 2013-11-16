answer = "y"

case answer
when /y(es)?/i
  puts "it matches"
else
  puts "it doesn't match"
end