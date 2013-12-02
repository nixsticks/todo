# Collections Practice

# Finish the first collections assignment if you haven't already.

# Wrap each of these problems in a method, you can also write a test for each method if you'd like to practice testing.  All solutions should be generic and work for any "case" but sometimes a sample case is given.

# These problems should get progressively more difficult.

# Return true if every element of the tools array starts with an "r" and false otherwise.
  tools = ["ruby", "rspec", "rails"]

  def starts_with_r(array)
    rs = array.select{|element| element[0] == "r"}.compact
    rs.size == array.size ? true : false
  end

# Create a new array from the captain_planet array with all the elements that contain the letter "a".  
  captain_planet = ["earth", "fire", "wind", "water", "heart"]

  def contains_a(array)
    array.select {|word| word.include?("a")}
  end

# Identify the first element in the stuff array that begins with the letters "wa".
  stuff = ["candy", :pepper, "wall", :ball, "wacky"]

  def wa(array)
    array.find {|word| word.to_s[0..1] == "wa"}
  end

# Identify all the elements in the stuff array that begins with the letters "wa".
  stuff = ["candy", :pepper, "wall", :ball, "wacky"]

  def all_wa(array)
    array.select {|word| word.to_s[0..1] == "wa"}
  end

# Remove anything that's not a string from an array.
# Hint: Use the method "class"  "blake".class

  def only_strings(array)
    array.delete_if {|element| element.is_a?(String) == false}
  end

# Change the third letter of all strings in an array.  Your solution should work for arrays that have mixed types of objects inside it.

  def third_letter(array, letter)
    array.map {|word| word.is_a?(String) ? word[0..1] + letter + word[3..word.length] : word}
  end

# Count the number of times each word appears in a string and store that data in a hash that has the word as the key and the count as the value.

  string = "the flatiron school is better than general assembly"

  def count_word(string)
    word_count = Hash.new(0)
    words = string.downcase.split
    words.each {|word| word_count[word] += 1}
    word_count
  end

# Count the number of times each hash appears in the array, remove any duplicates and add a :count key to each hash with the number of times it appears.
  [{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}]
  [{:name => "blake", :count => 2}, {:name => "ashley", :count => 1}]

  # def my_uniq(array)
  #   count_hash = {}

  #   array.each {|hash| count_hash[hash] = array.select{|other_hash| other_hash == hash}.size}

  #   array.uniq!.each do |hash|
  #     hash[:count] = count_hash[hash]
  #   end

  #   array
  # end

  def my_uniq(array)
    array.each do |hash|
      hash[:count] = array.select{|other_hash| other_hash == hash}.size
    end
    array.uniq {|hash| hash[:name]}
  end

# Take two arrays of hashes and merge the first names and last names into a new array of hashes where each hash has all information about itself.

array1 = [
       {
        :first_name => "blake"
    },
       {
        :first_name => "ashley"
    }
]
# and
array2 = [
       {
         "blake" => {
            :awesomeness => 10,
                 :height => "74",
              :last_name => "johnson"
        },
        "ashley" => {
            :awesomeness => 9,
                 :height => 60,
              :last_name => "dubs"
        }
    }
]

# becomes
# [
#        {
#          :first_name => "blake",
#         :awesomeness => 10,
#              :height => "74",
#           :last_name => "johnson"
#     },
#        {
#          :first_name => "ashley",
#         :awesomeness => 9,
#              :height => 60,
#           :last_name => "dubs"
#     }
# ]

  def two_hashes(array1, array2)
    array1.each do |first_name_hash|
      array2.each do |info_hash|
        info_hash.each {|name, info| first_name_hash.merge!(info) if first_name_hash.values.include?(name)}
      end
    end
    array1
  end

# Return all hashes that have a value of "cool" for the :temperature key.
# [
#         {
#                :name => "ashley",
#         :temperature => "sort of cool"
#     },
#         {
#                :name => "blake",
#         :temperature => "cool"
#     }
# ]

  def cool(array)
    array.select{|hash| hash[:temperature] == "cool"}
  end

# Convert the nested data structure from it's current structure

schools = {
  "flatiron school bk" => {
    :location => "NYC",
    :price => "free"
  },
  "dev boot camp" => {
    :location => "SF",
    :price => "a million dollars"
  },
  "dev boot camp chicago" => {
    :location => "Chicago",
    :price => "half a million dollars"
  },
  "general assembly" => {
    :location => "NYC",
    :price => "too much"
  },
  "some school in SF" => {
    :location => "SF",
    :price => "your soul"
  }
}
# to a structure that organizes the schools by location.

  def by_location(hash)
    new_hash = {}
    hash.each do |school, info|
      location = info.delete(:location)
      info[:school] = school
      new_hash[location].nil? ? new_hash[location] = [info] : new_hash[location] << info
    end
    new_hash
  end