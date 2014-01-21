def separate_with_comma(n)
  number = n.to_s
  i = number.length / 3
  regex = ["(\\d{3})$"]
  (i-1).times {regex.unshift("(\\d{3})")}
  match = Regexp.new(regex.join).match(number)
  start = number[0..number.length % 3 - 1]
  match.to_a.size.times do |i|
    start << "," << match[i] unless i == 0
  end
  start
end