# Given a list of numbers and a positive integer k, find the minimum and maximum possible product of k elements taken from the list.


def find_min_max_product(arr, k)
  # your code here
  if k > arr.length
    return nil
  end
  sorted = arr.sort 
  min = 0
  max = 0
  min_arr = []
  max_arr = []
  negs = []
  pos = []

  

end

arr = [1, -2, -3, 4, 6, 7]

p find_min_max_product(arr, 1)
#, [-3, 7])