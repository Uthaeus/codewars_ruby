# Given an integer as input, can you round it to the next (meaning, "higher") 5?


def round_to_next_5(n)
  # your solution goes here
  # if n % 5 == 0
  #   return n 
  # else
  #   diff = 5 - n % 5
  #   return n + diff
  # end

  n % 5 == 0 ? n : n + (5 - n % 5)
end




p round_to_next_5(6) #, 10
p round_to_next_5(9) #, 10