########################
# NYC PIGEON ORGANIZER #
########################

# Start with the collected data on NYC pigeons.

# Iterate over the hash above collecting each pigeon by name and insert it
# as the key of a new hash where each name holds the attributes for that bird. 
# Your output should match the hash below:

# pigeon_list = {
#   "Theo" => {
#     :color => ["purple", "grey"],
#     :gender => "male",
#     :lives => "Subway"
#   },
#   "Peter Jr." => {
#     :color => ["purple", "grey"],
#     :gender => "male",
#     :lives => "Library"
#   },
#   "Lucky" => {
#     :color => ["purple"],
#     :gender => "male",
#     :lives => "City Hall"
#   },
#   "Ms .K" => {
#     :color => ["grey", "white"],
#     :gender => "female",
#     :lives => "Central Park"
#   },
#   "Queenie" => {
#     :color => ["white", "brown"],
#     :gender => "female",
#     :lives => "Subway"
#   },
#   "Andrew" => {
#     :color => ["white"],
#     :gender => "male",
#     :lives => "Central Park"
#   },
#   "Alex" => {
#     :color => ["white", "brown"],
#     :gender => "male",
#     :lives => "Central Park"
#   }
# }

class Pigeon
  attr_accessor :name, :color, :gender, :lives

  def initialize(name)
    @name = name
    @color = []
    @gender
    @lives
  end
end

pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms .K"],
    :white => ["Queenie", "Andrew", "Ms .K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms .K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms .K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

pigeons = []

pigeon_data.each do |symbol, hash|
  hash.each do |symbol2, array|
    array.each do |name| 
      pigeon = Pigeon.new(name)
      pigeons << pigeon
    end
  end
end

pigeons.each do |pigeon|
  pigeon_data[:color].each do |color, names|
    pigeon.color << color.to_s if names.include?(pigeon.name)
  end
  pigeon_data[:gender].each do |gender, names|
    pigeon.gender = gender.to_s if names.include?(pigeon.name)
  end
  pigeon_data[:lives].each do |home, names|
    pigeon.lives = home.to_s if names.include?(pigeon.name)
  end
end

pigeon_list = {}

pigeons.each do |pigeon|
  pigeon_list[pigeon.name] = {}
  pigeon_list[pigeon.name][:color] = pigeon.color
  pigeon_list[pigeon.name][:gender] = pigeon.gender
  pigeon_list[pigeon.name][:lives] = pigeon.lives
end

puts pigeon_list