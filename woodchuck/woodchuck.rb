class Woodchuck
  attr_accessor :chuck_count
 
  @@woodchuck_count = 0
  WOODCHUCKS = []
 
  def initialize
    @chuck_count = 0
    @@woodchuck_count += 1
    WOODCHUCKS << self
  end
 
  def chuck_wood
    @chuck_count += 1
  end
 
  def self.woodchuck_count
    @@woodchuck_count
  end

  # def self.create_random_woodchucks
  #   rand(10).times{ Woodchuck.new }
  # end

  # def self.all_chuck_wood
  #   WOODCHUCKS.each do |woodchuck|
  #     rand(10).times {woodchuck.chuck_wood}
  #   end
  # end

  # def self.all_wood_chucked
  #   count = 0
  #   WOODCHUCKS.each {|woodchuck| count += woodchuck.chuck_count}
  #   count
  # end
end

def create_random_woodchucks
  rand(1..10).times{ Woodchuck.new }
end

def all_chuck_wood
  Woodchuck::WOODCHUCKS.each do |woodchuck|
      rand(1..10).times {woodchuck.chuck_wood}
    end
end

def all_wood_chucked
  count = 0
  Woodchuck::WOODCHUCKS.each {|woodchuck| count += woodchuck.chuck_count}
  count
end

create_random_woodchucks
all_chuck_wood
puts all_wood_chucked


# Woodchuck.create_random_woodchucks
# Woodchuck.all_chuck_wood
# puts Woodchuck.all_wood_chucked

# using this class:
# - create a random number of woodchucks
# - have each woodchuck chuck a random amount of wood
# - give a total of how much wood was chucked
