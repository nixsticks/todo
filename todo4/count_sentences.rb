# Write a method on String called `count_sentences` that returns the number of
# sentences in the string it is called on

class String
  def count_sentences
    split(/[.?!]/).size
  end
end