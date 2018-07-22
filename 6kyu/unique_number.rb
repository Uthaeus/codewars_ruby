# Write a function called findUnique which returns the only unique number from an array.

# All numbers in the unsorted array are present twice, except the one you have to find. The numbers are always valid integer values between 1 and 2147483647, so no need for type and error checking. The array contains at least one number and may contain millions of numbers. So make sure your solution is optimized for speed.



def find_unique(numbers)
  # Code here
  result = []
  temp_hash = {}

  numbers.each do |n|
    if temp_hash[n]
      temp_hash[n] += 1
    else
      temp_hash[n] = 1
    end
  end

  temp_hash.key(1)
end


p find_unique([1, 8, 4, 4, 6, 1, 8]) #, 6