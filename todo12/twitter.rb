SUBSTITUTES = {
  "to" => "2",
  "two" => "2",
  "too" => "2",
  "for" => "4",
  "four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"
}

class String
  def shorten
    if too_long?
      words = self.split(/(?=\b)/)
      words.map do |word|
        word = SUBSTITUTES[word] || word
      end.join.truncate
    else
      self
    end
  end

  def too_long?
    length > 140
  end

  def truncate
    self[0..139]
  end
end

def shorten_all_tweets(array)
  array.map {|tweet| tweet.shorten}
end