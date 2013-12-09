class Array
  def version_sort
    sort! do |a, b|
      a.split(/\W|(?<=[a-z])(?=\d)/) <=> b.split(/\W|(?<=[a-z])(?=\d)/)
    end
  end
end