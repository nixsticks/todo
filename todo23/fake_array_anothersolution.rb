class FakeArray
  attr_accessor :elements

  def initialize(*args)
    @elements = args
  end

  def each(&block)
    block ? elements.each {|element| yield element} : elements.to_enum
  end
 
  def first
    elements.first
  end
 
  def [](i)
    elements[i]
  end
end