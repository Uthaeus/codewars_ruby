# Given an array of numbers, your task is to return a new array where each index (new_array[i]) is equal to the product of the original array, except for the number at that index (array[i]).


def product_sans_n(nums)
  #because the output is so huge, output is hidden for the medium and big random tests
  result = []
  x = 0 

  while x < nums.count do
    temp_arr = []
    y = 0 

    while y < nums.count do 
      temp_arr << nums[y] unless y == x
      y += 1
    end

    result << temp_arr.reduce(:*)
    x += 1
  end
  result
end



p product_sans_n([9,0,-2]) #, [0, -18, 0]