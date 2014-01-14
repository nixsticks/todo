class Array
  def my_transpose
    array = []
    return self if self.empty?
    self.first.size.times do |i|
      array << each_with_object([]) do |inner_array, container|
        container << inner_array[i]
      end
    end
    array
  end
end