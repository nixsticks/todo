def count(array)
  count = Hash.new(0)
  array.each do |element|
    count[element] += 1
  end
  count
end