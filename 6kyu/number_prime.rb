# Define a function isPrime/is_prime() that takes one integer argument and returns true/True or false/False depending on if the integer is a prime.
# Assumptions
# You can assume you will be given an integer input.
# You can not assume that the integer will be only positive. You may be given negative numbers as well (or 0).



def isPrime(num)
  # Your code here
  return false if num < 2 && num > -2
  if num < 0
    num *= -1
  end

  ((2..(Math.sqrt(num)))).each do |i|
    return false if num % i == 0
  end
  return true

end



p isPrime(-3) #, true

