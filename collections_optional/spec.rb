require './collections_practice_2'

describe '#starts_with_r' do
  it 'should return true if every element begins with r' do
    expect(starts_with_r(["ruby","rspec","rails"])).to eq(true)
    expect(starts_with_r(["apple", "orange"])).to eq(false)
  end
end

describe '#contains_a' do
  it 'should return an array with all the elements that contain the letter a' do
    captain_planet = ["earth", "fire", "wind", "water", "heart"]
    expect(contains_a(captain_planet)).to eq(["earth", "water", "heart"])
  end
end

describe '#wa' do
  it 'should return the first element that begins with the letters "wa"' do
    stuff = ["candy", :pepper, "wall", :ball, "wacky"]
    expect(wa(stuff)).to eq("wall")
  end
end

describe '#all_wa' do
  it 'should return all elements beginning with "wa"' do
    stuff = ["candy", :pepper, "wall", :ball, "wacky"]
    expect(all_wa(stuff)).to eq(["wall", "wacky"])
  end
end

describe '#only_strings' do
  it 'should remove all non-strings from an array' do
    stuff = ["candy", :pepper, "wall", :ball, "wacky"]
    expect(only_strings(stuff)).to eq(["candy", "wall", "wacky"])
  end
end

describe '#third_letter' do
  it 'should change the third letter of all strings in an array' do
    stuff = ["candy", :pepper, "wall", :ball, "wacky"]
    expect(third_letter(stuff, "a")).to eq(["caady", "peaper", "waal", "baal", "waaky"])
  end
end

describe '#count_word' do
  it 'should return a hash with the word as key and count as value' do
    string = "the flatiron school is better than general assembly"
    expected = {
      "the" => 1,
      "flatiron" => 1,
      "school" => 1,
      "is" => 1,
      "better" => 1,
      "than" => 1,
      "general" => 1,
      "assembly" =>1
    }
    expect(count_word(string)).to eq(expected)
    expect(count_word("hello hello bear bear")).to eq({"hello" => 2, "bear" => 2})
  end
end

describe '#my_uniq' do
  it 'should remove duplicates and add a count key to each hash' do
    array = [{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}]
    expect(my_uniq(array)).to eq([{:name => "blake", :count => 2}, {:name => "ashley", :count => 1}])
  end
end

describe '#two_hashes' do
  it 'should return a new array of hashes with all information' do
    array1 = [
      {
        :first_name => "blake"
      },
      {
        :first_name => "ashley"
      }
    ]
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

    expected = [
           {
             :first_name => "blake",
            :awesomeness => 10,
                 :height => "74",
              :last_name => "johnson"
        },
           {
             :first_name => "ashley",
            :awesomeness => 9,
                 :height => 60,
              :last_name => "dubs"
        }
    ]

    expect(two_hashes(array1, array2)).to eq(expected)
  end
end

describe '#cool' do
  it 'should return all hashes with a value of cool for the temperature key' do
    temps = [
          {
                 :name => "ashley",
          :temperature => "sort of cool"
      },
          {
                 :name => "blake",
          :temperature => "cool"
      }
    ]

    expected = [{
                 :name => "blake",
          :temperature => "cool"
      }]

    expect(cool(temps)).to eq(expected)
  end
end

describe '#by_location' do
  it 'should organize the info by location' do
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

    expected = {"NYC"=>[{:price=>"free", :school=>"flatiron school bk"}, {:price=>"too much", :school=>"general assembly"}], "SF"=>[{:price=>"a million dollars", :school=>"dev boot camp"}, {:price=>"your soul", :school=>"some school in SF"}], "Chicago"=>[{:price=>"half a million dollars", :school=>"dev boot camp chicago"}]}

    expect(by_location(schools)).to eq(expected)
  end
end