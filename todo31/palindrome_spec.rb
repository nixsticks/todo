require './palindrome'

describe '#longest_palindrome' do
  it 'should return the longest palindrome in a given string' do
    expect(longest_palindrome("afbbbfjdjklgdfdhfdkjfffhhfffjkdfhdhkyejejfjkd")).to eq("dhfdkjfffhhfffjkdfhd")
  end
end