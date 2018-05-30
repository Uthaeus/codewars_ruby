# Task
# Given a Divisor and a Bound , Find the largest integer N , Such That ,

# Conditions :
# N is divisible by divisor

# N is less than or equal to bound

# N is greater than 0.

# Notes
# The parameters (divisor, bound) passed to the function are only positve values .
# It's guaranteed that a divisor is Found .


def max_multiple(divisor, bound)
  #your code here
  x = bound 
  result = nil

  while result == nil do 
    if x % divisor == 0
      result = x 
    end
    x -= 1
  end
  return result
end



p max_multiple(37,200) #,185
p max_multiple(7,100) #,98)
p max_multiple(1,13) #,13)