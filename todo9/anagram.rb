require 'ruby-debug'

class Anagram
  attr_reader :word

  def initialize(word)
    @word = word
  end

  def match(array)
    anagrams = []
    array.each do |anagram|
      anagrams << anagram if anagram.downcase.chars.sort.join == word.downcase.chars.sort.join
    end
    anagrams
  end
end