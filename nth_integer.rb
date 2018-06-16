# Given a list of integers, return the nth smallest integer in the list. Only distinct elements should be considered when calculating the answer. n will always be positive (n > 0)

# If the nth small integer doesn't exist, return -1 (C++) / None (Python) / nil (Ruby).


def nth_smallest(arr, n)
  # your code here
  arr.uniq.sort { |a, b| a <=> b}[n - 1]
  
end



l = [455555, 2222222, 3333333, 9879799, 79977979, 79977979, 79977979, 79977979, 79977979, 79977979, 79977979, 79977979]

p nth_smallest(l, 3) #, 3333333
p nth_smallest(l, 6) #, nil