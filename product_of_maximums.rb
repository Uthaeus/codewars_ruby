# Product Of Maximums Of Array

def max_product(numbers, size)
  #your code here
  sorted = numbers.sort
  tsize = size * -1
  arr = sorted[tsize..-1]
  
  arr.reduce(:*)
end


p max_product([4,3,5], 2) # => 20