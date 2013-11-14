puts "Tell me the date of your birthday!"
birthday = Date.parse(gets.chomp).strftime("%m%d")
puts Date.today.strftime("%m%d") == birthday ? "Happy birthday!" : "Oh."