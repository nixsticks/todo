class Array
  def my_transpose
    return self if self.empty?
    transpose = []
    first.each_index do |i|
      transpose << each_with_object([]) {|inner, container| container << inner[i]}
    end
    transpose
  end
end