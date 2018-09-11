# Write an implementation to calculate the factorial of arbitrarily large numbers, without recursion.


def factorial(n)
  nums = (2..n).to_a
  nums.reduce(:*)
end



p factorial(5) #, 120