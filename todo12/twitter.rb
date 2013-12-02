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

tweets = [
  "Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!",
  "OMG you guys, you won't believe how sweet my kitten is. My kitten is like super cuddly and too cute to be believed right?",
  "I'm running out of example tweets for you guys, which is weird, because I'm a writer and this is just writing and I tweet all day. For real, you guys. For real.",
  "GUISEEEEE this is so fun! I'm tweeting for you guys and this tweet is SOOOO long it's gonna be way more than you would think twitter can handle, so shorten it up you know what I mean? I just can never tell how long to keep typing!"]

puts shorten_all_tweets(tweets)