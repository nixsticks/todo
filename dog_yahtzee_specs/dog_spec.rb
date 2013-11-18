require './dog'

describe Dog do
  let(:dog) {Dog.new}

  describe "#initialize" do
    it "should create a new Dog object" do
      expect(dog).to be_an_instance_of(Dog)
    end

    it "should set the age to 1 or above" do
      expect(dog.age).to be >= 1 
    end

    it "should set the 14 or below" do
      expect(dog.age).to be <= 14
    end
  end

  describe "#age_in_years" do
    it "should return the dog's age" do
      expect(dog.age).to be_a_kind_of(Integer)
    end
  end

  describe "#age_in_days" do
    it "should return the dog's age in days" do
      expect(dog.age_in_days).to eq(dog.age * 365)
    end
  end

  describe "#age_in_dog_years" do
    it "should return the dog's age in dog years" do
      expect(dog.age_in_dog_years).to eq(dog.age * 7)
    end
  end
end