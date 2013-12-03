class Array
  def version_sort
    each do |element|
      element.singleton_class.send(:attr_accessor, :num1, :num2, :letter, :decimals)

      number = /\-(?<first_number>\d+)\.?(?<second_number>[\d\.]+)?(?<letter_version>[a-z])?\.[a-z]/.match(element)
      decimals = element.split("").select {|letter| letter == "."}.size

      element.send(:num1=, number[:first_number].to_i)

      number[:second_number] ? element.send(:num2=, number[:second_number].to_f) : element.send(:num2=, 0.0)

      number[:letter_version] ? element.send(:letter=, number[:letter_version]) : element.send(:letter=, "0")

      element.send(:decimals=, decimals)
    end

    sort! do |a,b|
      [a.send(:num1), a.send(:num2), a.send(:decimals), a.send(:letter)] <=> [b.send(:num1), b.send(:num2), b.send(:decimals), b.send(:letter)]
    end
  end
end

# SIMPLER METHOD BUT MONKEYPATCHES STRING CLASS SOMEWHAT:

# class Array
#   def version_sort
#     String.send(:attr_accessor, :num1, :num2, :letter, :decimals)
#     each do |element|
#       number = /\-(?<first_number>\d+)\.?(?<second_number>[\d\.]+)?(?<letter_version>[a-z])?\.[a-z]/.match(element)
#       decimals = element.split("").select {|letter| letter == "."}.size

#       element.num1 = number[:first_number].to_i

#       number[:second_number] ? element.num2 = number[:second_number].to_f : element.num2 = 0.0

#       number[:letter_version] ? element.letter = number[:letter_version] : element.letter = "0"

#       element.decimals = decimals
#     end

#     sort! do |a,b|
#       [a.num1, a.num2, a.decimals, a.letter] <=> [b.num1, b.num2, b.decimals, b.letter]
#     end
#   end
# end