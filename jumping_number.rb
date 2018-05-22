

def jumping_number(n)
  #your code here
  if n < 10
    return "Jumping!!"
  end

  result = false
  x = 0
  nums = n.to_s.split('').map {|i| i.to_i}
  p nums

  while x < nums.length do 
    if nums[x + 1] == nums[x] + 1 || nums[x + 1] == nums[x] - 1 || nums[x + 1] == nil && nums[x - 1] == nums[x] + 1 || nums[x - 1] == nums[x] - 1 || nums[x - 1] == nil
      result = true
    else
      result = false
      break
    end
    p nums[x]
    x += 1
  end
  if result
    return "Jumping!!"
  else
    return "Not!!"
  end

end


p jumping_number(98)
p jumping_number(79)
p jumping_number(910406)
p jumping_number(14768)
p jumping_number(756)