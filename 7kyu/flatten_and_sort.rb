# Challenge:

# Given a two-dimensional array of integers, return the flattened version of the array with all the integers in the sorted (ascending) order.


def flatten_and_sort(array)
  #your code here
  array.flatten.sort 
end



p flatten_and_sort([[3, 2, 1], [7, 9, 8], [6, 4, 5]]) #, [1, 2, 3, 4, 5, 6, 7, 8, 9]