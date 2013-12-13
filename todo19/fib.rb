# prereqs: arrays, methods, conditional logic
# create a method that returns the nth number of the fibonacci sequence
# fib sequence = 0,1,1,2,3,5,8,13 etc, assume the 1st element is 0 (the first number), the 2nd element is 1, the third element is 1
def fibo_finder(n)
  start = [0,1]
  n.times do |i|
    start[i + 2] = start[i] + start[i + 1]
  end
  start[n]
end
