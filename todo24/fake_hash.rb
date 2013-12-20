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
    elements.keys.sort
  end

  def first_letter(letter)
    keys = elements.keys.select {|key| key[0] == letter}
    elements.values.select {|value| keys.include?(elements.key(value))}
  end
end