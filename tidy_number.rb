# Definition
# A Tidy number is a number whose digits are in non-decreasing order.

# Task
# Given a number, Find if it is Tidy or not .


def tidy_number(n)
  #your code here
  result  = true
  x = 0

  nums = n.to_s.split('').map {|i| i.to_i }

  while x < nums.length - 1 do 
    if nums[x + 1] < nums[x]
      return false
    end
    x += 1
  end
  result
end



p tidy_number(2789) # ,true
p tidy_number(9672) #,false