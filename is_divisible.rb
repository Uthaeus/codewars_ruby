# Create a function isDivisible(n, x, y) that checks if a number n is divisible by two numbers x AND y. All inputs are positive, non-zero digits.



def is_divisible(n,x,y)
  #your code here
  n % x == 0 && n % y == 0
end



p is_divisible(12,3,4) #,true
p is_divisible(8,3,4) #,false