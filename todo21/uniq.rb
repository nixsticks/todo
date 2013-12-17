# instructions: implement Array.uniq
 
class Array
  def uniq
    array = []
    self.each {|element| array << element if array.include?(element) == false}
    array
  end
end