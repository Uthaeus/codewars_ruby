# Your task is to write a function that does just what the title suggests (so, fair warning, be aware that you are not getting out of it just throwing a lame bas sorting method there) with an array/list/vector of integers and the expected number n of smallest elements to return.

# Also:

# the number of elements to be returned cannot be higher than the array/list/vector length;
# elements can be duplicated;
# in case of duplicates, just return them according to the original order (see third example for more clarity).



def first_n_smallest(arr, n)
  #your code here
  result = []
  sorted = arr.sort { |a, b| a <=> b }.first(n)
  p arr 
  p sorted 
  arr.each do |i|
    if sorted.include?(i)
      sorted.delete_at(sorted.index(i))
      result << i 
    end
  end
  result
end



p first_n_smallest([7, 4, -8, 7, 1, -2, -3, -10, 7, 6, -5, 10], 9)
      # [7, 4, -8, 1, -2, -3, -10, 6, -5]