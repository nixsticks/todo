  # def version_sort
  #   regex = /(?<first_number>\d+)\.?(?<second_number>\d+)\.?(?<third_number>\d+)\.?(?<letter>\w)/
  #   first = sort_by{|element| regex.match(element)[:first_number]}
  #   second = first.sort_by {|element| regex.match(element)[:second_number]}
  #   third = second.sort_by {|element| regex.match(element)[:third_number]}
  #   letter = third.sort_by {|element| regex.match(element)[:letter]}
  #   letter
  # end

  # def version_sort
  #   array = []
  #   each do |element|
  #     match = /(\w)\./.match(element)
  #     array = sort_by{|element| match[1]}
  #     # match = /(\d+)/.match(element)
  #     # match.size.times do |i|
  #     #   array = self.sort_by {|element| match[i+1]}
  #     # end
  #   end
  #   array
  #   # capture each number before the ., then sort by that.
  # end

  # def version_sort
  #   each do |element|
  #     array = element.split(/[-\.]/)
  #     array.collect do |element|
  #       match = /(\d+.?)/.match(element)
  #       match.each do |i|
  #         instance_variable_set(i.to_sym, match[i])
  #         debugger
  #       end
  #     end
  #   end
  # end

  # def version_sort
  #   array = []
  #   each do |element| 
  #     array << element.split(/\-|\./)
  #   end
  #   array.sort_by{|other_array| other_array[1].to_f}
  #   array.map {|other_array| other_array.join}
  # end

  # def version_sort
  #   # array = sort_by {|element| /([\d\.]+)/.match(element)[1].to_f}
  #   array = sort_by {|element| /\-(\d)/.match(element)[1]}
  #   array = array.sort_by {|element| /\.(\d)\d*\.|\-(\d+)$/.match(element)[1]}
  # end

  # def version_sort
  #   array = map do |element|
  #     split = element.split(/(?=\b)|(?<=\d)(?=[a-z])|(?<=\d)(?=\d)/i)
  #     # split.map {|element| /\d/.match(element) ? element.to_i : element}
  #   end

  #   array.sort do |a, b|

  #   end

    # array = array.sort
    # array = array.sort_by do |other_array|
    #   other_array.collect {|element| /\d/.match(element)}
    # end

    # array.map {|other_array| other_array.join}
  # end