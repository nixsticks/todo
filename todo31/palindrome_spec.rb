require './palindrome'

describe '#longest_palindrome' do
  it 'should return the longest palindrome in a given string' do
    expect(longest_palindrome("afbbbfjdjklgdfdhfdkjfffhhfffjkdfhdhkyejejfjkd")).to eq("dhfdkjfffhhfffjkdfhd")
    expect(longest_palindrome("abbobsdfa")).to eq("bob")
  end
end