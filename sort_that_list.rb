# Create a method sort that accepts a list and a block. The block should define how sort compares two items on the list. It should return a new, sorted version of the list.


def sort list, &block
  # your solution here
  list.sort &block
end



list = [3,5,8,13]
p sort(list){|a,b| a.to_s <=> b.to_s} #, [13,3,5,8]