# In this Kata, you will be trained on array indexing and basic prime number operations. Array indices are zero-based; this means that the first element of an array is at index 0.

# You will be given an integer array and your task is to return the sum of elements occupying prime-numbered indices.

# To make this interesting, array lengths in random tests will have up to 5000 elements.

def is_prime?(num)
  return if num <= 1
  (2..Math.sqrt(num)).none? { |i| (num % i).zero? }
end



def total(arr)
#..
  result_arr = []
  arr.each_with_index do |i, ind|
    if is_prime?(ind)
      result_arr << i 
    end
  end
  result_arr.empty? ? 0 : result_arr.reduce(:+)
end



p total([1,2,3,4,5,6,7,8,9,10,11]) #,21
p total([]) #,0