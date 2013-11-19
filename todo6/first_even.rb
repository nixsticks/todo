# But this one is so much better!!!

# def first_even(items)
#   items.detect(&:even?)
# end

def first_even(items)
  items.each do |x|
    if x.even?
      return x
      exit
    end
  end
end