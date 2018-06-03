# Given a list of numbers (possibly including duplicates) and a positive integer k, find the minimum and maximum possible product of k elements taken from the list.

# If you cannot take enough elements from the list (k > list size), return None/nil



def find_min_max_product(arr, k)
  return nil if k > arr.size
  
  prods = arr.combination(k).map { |nums| nums.reduce(:*) }
  [prods.min, prods.max]
end

arr = [1, -2, -3, 4, 6, 7]

p find_min_max_product(arr, 3) #, [-126, 168]
p find_min_max_product(arr, 2) #, [-21, 42]