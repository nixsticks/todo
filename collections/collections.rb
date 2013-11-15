# Collections Practice
array = ["blake", "ashley", "scott"]

# 1. sort the following array in ascending order
array.sort

# 2. sort the following array in descending order
array.sort.reverse

# 3. put the following array in reverse order
array.reverse

# 4. grab the second element in the array
array[1]

# 5. print each element of the array to the console
array.each {|name| puts name}

# 6. create a new array in the following order
  # ["blake", "ashley", "scott"] 
  # should transform into
  # ["blake", "scott", "ashley"]

second_array = ["blake", "ashley", "scott"]
second_array[1] = "scott"
second_array[2] = "ashley"

# 7. using the following array create a hash where the elements in the array are the keys and the values of the hash are those elements with the 3rd character changed to a dollar sign.
hash = {}

second_array.each do |name|
  name[2] = '$'
  hash[name] = name
end

# Technically I changed the array too, but since we never use it again I figure it doesn't matter :)

# 8. create a hash with two keys, "greater_than_10", "less_than_10" and their values will be an array of any numbers greater than 10 or less than 10 in the following array
num_hash = {
  :greater_than_10 => [],
  :less_than_10 => []
}

[100, 1000, 5, 2, 3, 15, 1, 1, 100 ].each do |number| 
  number > 10 ? num_hash[:greater_than_10] << number : num_hash[:less_than_10] << number
end

# 9. find all the winners and put them in an array
winners =[]

{:blake => "winner", :ashley => "loser", :caroline => "loser", :carlos => "winner"}.each do |name, value|
  value == "winner" ? winners << name : next
end

# 10. add the following arrays
[1,2,3].concat([5,9,4])

# 11. find all words that begin with "a" in the following array
words_beginning_with_a = []

["apple", "orange", "pear", "avis", "arlo", "ascot" ].each {|word| word[0] == "a" ? words_beginning_with_a << word : next}

# 11. sum all the numbers in the following array
[11,4,7,8,9,100,134].inject(0) {|sum, number| sum + number}

# 12. Add an "s" to each word in the array except for the 2nd element in the array
["hand","feet", "knee", "table"].map {|word| word == "feet" ? word : word += "s"}


# CHALLENGE
 
# word count
my_story = "The summer of tenth grade was the best summer of my life.  I went to the beach everyday and we had amazing weather.  The weather didnt really vary much and was always pretty hot although sometimes at night it would rain.  I didnt mind the rain because it would cool everything down and allow us to sleep peacefully.  Its amazing how much the weather affects your mood.  Who would have thought that I could write a whole essay just about the weather in tenth grade.  Its kind of amazing right?  Youd think for such an interesting person I might have more to say but you would be wrong".split

# Count how many times each word appears in my story.
# Tip: You'll need to use Hash.new(0) to do this rather than creating a hash using literal syntax like {}.
 
my_story.map! {|word| word.gsub(/[.,!?]/, "") }

word_count = Hash.new(0)
my_story.each {|word| word_count[word] += 1}


# song library
 
# convert the following array of song titles
  
song_titles = ["dave matthews band - tripping billies", "dave matthews band - #41", "calvin harris - some techno song", "avicii - some other dance song", "oasis - wonderwall", "oasis - champagne supernova"]
 
# to a nested hash of the form
# {:artist1 => :songs => [], :artist2 => :songs => []}
# []

song_titles.map! {|song| song.split(" - ")}

song_library = Hash.new([])
song_titles.each do |array|
  song_library[array[0]] = array[1]
end