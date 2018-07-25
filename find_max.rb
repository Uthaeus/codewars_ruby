# Create a method max that accepts a list and a block, and returns the item that is the maximum using the block as the comparator.


def max list, &block
  # your solution here
  list.max &block
end



list = [0,1,2,3,5,8,13]
p max(list){|a, b| a <=> b} #, 13