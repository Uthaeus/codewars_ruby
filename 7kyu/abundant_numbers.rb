# An abundant number or excessive number is a number for which the sum of its proper divisors is greater than the number itself.

# The integer 12 is the first abundant number. Its proper divisors are 1, 2, 3, 4 and 6 for a total of 16 (> 12).

# Derive function abundantNumber(num)/abundant_number(num) which returns true/True/.true. if num is abundant, false/False/.false. if not.



def abundant_number?(num)
  # your code here
  range = (1..(num / 2)).to_a
  result_arr = range.select { |i| num % i == 0 } 
  result_arr.reduce(:+) > num 


end



p abundant_number?(37) #, false
p abundant_number?(77) #, false
p abundant_number?(5830) #, true