# Write a function that takes a positive integer n, sums all the cubed values from 1 to n, and returns that sum.


def sum_cubes(n)
  sum = 0

  for a in 1..n do 
    sum += a ** 3  
  end
  
  sum 
end



p sum_cubes(1)