class Array
  def version_sort
    String.send(:attr_accessor, :num1, :num2, :letter, :decimals)

    each do |element|
      number = /\-(?<first_number>\d+)\.?(?<second_number>[\d\.]+)?(?<letter_version>[a-z])?\.[a-z]/.match(element)
      decimals = element.split("").select {|letter| letter == "."}.size

      element.num1 = number[:first_number].to_i

      number[:second_number] ? element.num2 = number[:second_number].to_f : element.num2 = 0.0

      number[:letter_version] ? element.letter = number[:letter_version] : element.letter = "0"

      element.decimals = decimals
    end

    sort! do |a,b|
      [a.num1, a.num2, a.decimals, a.letter] <=> [b.num1, b.num2, b.decimals, b.letter]
    end
  end
end


filenames = [
  "foo-1.10.2.ext",
  "foo-1.11.ext",
  "foo-1.3.ext",
  "foo-1.50.ext",
  "foo-1.8.7.ext",
  "foo-1.9.3.ext",
  "foo-1.ext",
  "foo-10.1.ext",
  "foo-10.ext",
  "foo-100.ext",
  "foo-13.ext",
  "foo-2.0.0.ext",
  "foo-2.0.1.ext",
  "foo-2.0.ext",
  "foo-2.007.ext",
  "foo-2.01.ext",
  "foo-2.012b.ext",
  "foo-2.01a.ext",
  "foo-2.0a.ext",
  "foo-2.0b.ext",
  "foo-2.1.ext",
  "foo-25.ext",
  "foo-6.ext",
]
version_sorted_filenames = [
  "foo-1.ext",
  "foo-1.3.ext",
  "foo-1.8.7.ext",
  "foo-1.9.3.ext",
  "foo-1.10.2.ext",
  "foo-1.11.ext",
  "foo-1.50.ext",
  "foo-2.0.ext",
  "foo-2.0a.ext",
  "foo-2.0b.ext",
  "foo-2.0.0.ext",
  "foo-2.0.1.ext",
  "foo-2.01.ext",
  "foo-2.1.ext",
  "foo-2.01a.ext",
  "foo-2.007.ext",
  "foo-2.012b.ext",
  "foo-6.ext",
  "foo-10.ext",
  "foo-10.1.ext",
  "foo-13.ext",
  "foo-25.ext",
  "foo-100.ext",
]

# p filenames.version_sort