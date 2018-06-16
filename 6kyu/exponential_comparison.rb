# Comparing two numbers written in index form like 2^11 and 3^7 is not difficult, as any calculator would confirm that 2^11 = 2048 < 3^7 = 2187.

# However, confirming that 632382^518061 > 519432^525806 would be much more difficult, as both numbers contain over three million digits.

# Your task is to write a function that takes two tuples (or two arrays in JavaScript and Ruby) in the form of (base, exponent) where base and exponent are positive integers, and return the largest of the two numbers.



def compare(number1, number2)
  base1, exp1 = *number1
  base2, exp2 = *number2
  # your code
end



p compare([3,5],[5,3]) #, [3,5]