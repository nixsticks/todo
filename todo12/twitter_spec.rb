require_relative 'twitter'

describe String do
  describe '#shorten' do
    it 'should search a tweet for substitutable words and return a shortened string' do
      tweet = "Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!"
      expected = "Hey guys, can anyone teach me how 2 b cool? I really want 2 b the best @ everything, u know what I mean? Tweeting is super fun u guys!!!!"
      expect(tweet.shorten).to eq(expected)
    end

    it 'should only shorten tweets that are too long' do
      tweet = "Hey guys I love you all"
      expected = "Hey guys I love you all"
      expect(tweet.shorten).to eq(expected)
    end

    it 'should truncate a tweet to 140 characters if it is too long after substitution' do
      tweet = "Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!!!!"
      expected = "Hey guys, can anyone teach me how 2 b cool? I really want 2 b the best @ everything, u know what I mean? Tweeting is super fun u guys!!!!!!!"
       expect(tweet.shorten).to eq(expected)
    end

    it 'should work correctly with punctuation' do
      tweet = "OMG you guys, you won't believe how sweet my kitten is. My kitten is like super cuddly and too cute to be believed right? you!!!!!!!!!!!!!!!!!"
      expected = "OMG u guys, u won't believe how sweet my kitten is. My kitten is like super cuddly & 2 cute 2 b believed right? u!!!!!!!!!!!!!!!!!"
      expect(tweet.shorten).to eq(expected)
    end
  end
end

describe '#shorten_all_tweets' do
  it 'should iterate over all tweets and shorten them' do
    tweets = [
    "Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!",
    "OMG you guys, you won't believe how sweet my kitten is. My kitten is like super cuddly and too cute to be believed right?",
    "I'm running out of example tweets for you guys, which is weird, because I'm a writer and this is just writing and I tweet all day. For real, you guys. For real.",
    "GUISEEEEE this is so fun! I'm tweeting for you guys and this tweet is SOOOO long it's gonna be way more than you would think twitter can handle, so shorten it up you know what I mean? I just can never tell how long to keep typing!"]

    expected = [
    "Hey guys, can anyone teach me how 2 b cool? I really want 2 b the best @ everything, u know what I mean? Tweeting is super fun u guys!!!!",
    "OMG you guys, you won't believe how sweet my kitten is. My kitten is like super cuddly and too cute to be believed right?",
    "I'm running out of example tweets 4 u guys, which is weird, because I'm a writer & this is just writing & I tweet all day. For real, u guys.",
    "GUISEEEEE this is so fun! I'm tweeting 4 u guys & this tweet is SOOOO long it's gonna b way more than u would think twitter can handle, so s"
    ]

    expect(shorten_all_tweets(tweets)).to eq(expected)
  end
end