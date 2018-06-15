# Are the numbers in order?
# In this Kata, your function receives an array of positive integers as input. Your task is to determine whether the numbers are in ascending order.

# For the purposes of this Kata, you may assume that all inputs are valid (i.e. arrays containing only positive integers with a length of at least 2).



def is_asc_order (arr)
  #..
  x = 0
  while x < arr.length - 1 do 
    if arr[x] > arr[x + 1]
      return false
    end
    x += 1
  end

  true
end




p is_asc_order([1,6,10,18,2,4,20]) #,false
p is_asc_order([1,2,3,4,5]) #,true
p is_asc_order([9,8,7,6,5,4,3,2,1]) #,false