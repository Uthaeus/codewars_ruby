# Minimize Sum Of Array

def min_sum(arr)
  #your code here
  mid = ((arr.length - 1) / 2).floor
  x = 0
  y = -1
  sorted = arr.sort
  result = [] 

  while x <= mid do 
    temp = sorted[x] * sorted[y]
    result << temp
    x += 1
    y -= 1
  end
  result.reduce(:+)
end


p min_sum([5,4,2,3])