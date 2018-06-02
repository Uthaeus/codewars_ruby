# Given Two intgers a , b , find The sum of them , BUT You are not allowed to use the operators + and -
require 'datetime'


def add(x,y)
  while y != 0 do 
    carry = x & y 
    x = x ^ y 
    y = carry << 1
  end
  return x 
end




p add(1, 2) #, 3
p add(5,19) #, 24
p add(-27,18) #, -9