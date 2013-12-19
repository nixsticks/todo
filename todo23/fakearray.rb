To explore the confusion around the results object we get back from queries using the mysql2 gem...
 
Create an object that behaves like an array but is NOT an array. Define the each, first and indexing methods on it.
 
I should get the same result if i do
 
container = []
[1,2,3].each do |element|
  container << element + 1
end
 
as if i use your class like so...
 
fakearray = FakeArray.new
container = []
fakearray.each do |element|
  container << element + 1
end
 
Note: I've intentionally omitted a step here where you'd have to somehow tell your class that were using an array of 1,2,3
 
class FakeArray
 
  def each
    
  end
 
  def first
    
  end
 
  def []()
    
  end
 