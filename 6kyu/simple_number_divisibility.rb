# In this Kata, you will be given a number and your task will be rearrange the number so that it is divisible by 25, but without leading zeros. Return the minimum number of digit moves that are needed to make this possible. If impossible, return -1.



def solve n 
  #..

  if n < 25
    return -1
  elsif n % 25 == 0
    return 0
  end

  str_arr = n.to_s.split('')
  num_arr = str_arr.map { |i| i.to_i }

  p num_arr
end



p solve(75733989998) #,17
#p solve(2992127830) #,-1
