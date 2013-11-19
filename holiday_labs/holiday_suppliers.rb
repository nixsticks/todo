holiday_supplies = {
  :winter => {
    :christmas => ["Lights", "Wreath"],
    :new_years => ["Party Hats"]
  },
  :summer => {
    :fourth_of_july => ["Fireworks", "BBQ"]
  },
  :fall => {
    :thanksgiving => ["Turkey"]
  },
  :spring => {
    :memorial_day => ["BBQ"]
  }
}

#1. How would you access the second supply for the fourth_of_july?

holiday_supplies[:summer][:fourth_of_july][1]

# 2. Add a supply to a Winter holiday.

holiday_supplies[:winter][:christmas] << "Tinsel"

# 3. Add a supply to memorial day.

holiday_supplies[:spring][:memorial_day] << "Fireworks"

# 4. Add a new holiday to any season with supplies.

holiday_supplies[:fall][:lantern_festival] = ["Lanterns", "Mooncakes"]

# 5. Write a method to collect all Winter supplies from all the winter holidays.

def winter_supplies(list)
  supplies = list[:winter].collect do |holiday|
    holiday.collect {|supplies| supplies}
  end

  supplies.flatten.select! {|entry| entry.is_a?(String) }
end

# 6. Write a loop to list out all the supplies you have for each holiday and the season.
# Winter:
#   Christmas: Lights and Wreath
#   New Years: Party Hats

# Sorry I know this is kind of ugly

holiday_supplies.each do |season, holidays|
  puts "\n" + season.to_s.capitalize + ":"
  holidays.each do |holiday, supplies|
    holiday = holiday.to_s.gsub(/_/, " ").gsub(/\w+/) {|word| word.capitalize}
    print "  ", holiday, ": "
    puts supplies.join(" and ")
  end
end

# 7. Write a method to collect all holidays with BBQ.

def bbq(list)
  bbq_days = []
  list.each do |season, holidays|
    holidays.each do |holiday, supplies|
      bbq_days << holiday.to_s.gsub(/_/, " ").gsub(/\w+/) {|word| word.capitalize} if supplies.include?("BBQ")
    end
  end
  bbq_days
end