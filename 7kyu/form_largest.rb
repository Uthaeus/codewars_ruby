# Task
# Given a number , Return The Maximum number could be formed from the digits of the number given .



def max_number(n)
  #your code here
  num_arr = n.to_s.split('').map { |i| i.to_i }
  result = num_arr.sort { |a, b| b <=> a }
  result.join('').to_i
end



p max_number(7389) #, 9873
p max_number(566797) #, 977665
p max_number(1000000) #, 1000000