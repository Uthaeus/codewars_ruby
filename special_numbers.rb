# A number is a Special Number if it’s digits only consist 0, 1, 2, 3, 4 or 5


def special_number(n)
  #your code here
  nums = n.to_s.split('').map {|i| i.to_i}
  special = [0, 1, 2, 3, 4, 5]
  
  result = nums - special

  p result
  if result.length == 0
    return "Special!!"
  else
    return "NOT!!"
  end
end



p special_number(2)
p special_number(25432) # => Special!!
p special_number(2783) # => NOT!!