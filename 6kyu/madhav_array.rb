# A Madhav array has the following property:

# a[0] = a[1] + a[2] = a[3] + a[4] + a[5] = a[6] + a[7] + a[8] + a[9] = ...

# Complete the function/method that returns true if the given array is a Madhav array, otherwise it returns false.

# Edge cases: An array of length 0 or 1 should not be considered a Madhav array as there is nothing to compare.



def is_madhav_array(arr) 
  #..
  if arr.length < 2 
    return false
  end
  result_arr = []
  x = 1
  while arr.length >= x do 
    temp = arr.shift(x)
    p temp
    result_arr << temp
    x += 1
  end
  if arr.length > 0
    return false
  end
  new_arr = result_arr.map do |i|
    i.reduce(:+)
  end

  new_arr.uniq.length == 1 
end



# p is_madhav_array([2, 1, 1, 4, -1, -1]) #, true
# p is_madhav_array([2, 1, 1]) #, true
p is_madhav_array([3, 1, 2, 3, 0])


# t1 = [2, 1, 1, 4, -1, -1]

# arr = [t1.shift(2)]


# p t1
# p arr