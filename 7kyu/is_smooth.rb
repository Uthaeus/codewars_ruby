# An array is called smooth if its first and its last elements are equal to one another and to the middle. Given an array arr, determine if it is smooth or not.


def is_smooth(arr)
    #coding and coding..
  if arr[0] != arr[-1]
    return false
  end
  middle = nil
  middle_ind = (arr.length / 2).floor

  if arr.length.even?
    middle = arr[middle_ind] + arr[middle_ind - 1]
  else
    middle = arr[middle_ind]
  end

  p middle

  arr[0] == middle
end



p is_smooth([7, 2, 2, 5, 10, 7]) #, true