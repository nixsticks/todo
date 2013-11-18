require './dog'

describe Dog do
  let(:dog) {Dog.new}

  describe "#initialize" do
    it "should create a new Dog object" do
      expect(dog).to be_an_instance_of(Dog)
    end
  end

  describe "#age_in_years" do
    it "should return the dog's age" do
      expect(dog.age).to be_a_kind_of(Integer)
    end
  end

  describe "#age_in_days" do
    it "should return the dog's age in days" do
      expect(dog.age_in_days % 365).to eq(0)
    end
  end

  describe "#age_in_dog_years" do
    it "should return the dog's age in dog years" do
      expect(dog.age_in_dog_years % 7).to eq(0)
    end
  end
end