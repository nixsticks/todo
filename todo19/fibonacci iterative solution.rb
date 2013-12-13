
def fibo_finder(n)
  if n == 0
    return 0
  elsif n == 1
    return 1
  else
    sequence = [0,1]
    (n - 1).times do
      sequence << sequence[-1] + sequence[-2]
    end
  end
  return sequence.last
end