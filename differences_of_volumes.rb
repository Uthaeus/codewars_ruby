# In this simple exercise, you will create a program that will take two lists of integers, a and b. Each list will consist of 3 positive integers above 0, representing the dimensions of cuboids a and b. You must find the difference of the cuboids' volumes regardless of which is bigger.

# For example, if the parameters passed are ([2, 2, 3], [5, 4, 1]), the volume of a is 12 and the volume of b is 20. Therefore, the function should return 8.

# Your function will be tested with pre-made examples as well as random ones.



def find_difference(a, b)
  # your code here
  num1 = a.reduce(:*)
  num2 = b.reduce(:*)
  num1 > num2 ? num1 - num2 : num2 - num1
end



p find_difference([9, 7, 2], [5, 2, 2]) #, 106
p find_difference([3, 2, 5], [1, 4, 4]) #, 14