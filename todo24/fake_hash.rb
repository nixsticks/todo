class FakeHashWrapper
  attr_accessor :elements
  def initialize
    @elements = {}
  end

  def []=(key, value)
    elements[key] = value
  end

  def [](key)
    elements[key.to_sym] || elements[key.to_s]
  end

  def keys
    elements.keys.sort.reverse
  end

  def first_letter(letter)
    elements.values.select {|value| (elements.key(value))[0] == letter}
  end
end