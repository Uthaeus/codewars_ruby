# You are given an array strarr of strings and an integer k. Your task is to return the first longest string consisting of k consecutive strings taken in the array.

# #Example: longest_consec(["zone", "abigail", "theta", "form", "libe", "zas", "theta", "abigail"], 2) --> "abigailtheta"

# n being the length of the string array, if n = 0 or k > n or k <= 0 return "".



def longest_consec(strarr, k)
    # your code
  if strarr.empty? || strarr.length < k || k < 1
    return ''
  end
  x = 0
  largest = 0
  start_ind = nil

  while x < strarr.length do
    y = x 
    temp_arr = []

    while temp_arr.length < k do 
      temp_arr << strarr[y]
      y += 1
    end

    if temp_arr.join('').length > largest
      largest = temp_arr.join('').length
      start_ind = x 
    end
    x += 1
  end
  strarr[start_ind...start_ind + k].join('')
end



p longest_consec(["it","wkppv","ixoyx", "3452", "zzzzzzzzzzzz"], 3) #, "ixoyx3452zzzzzzzzzzzz"