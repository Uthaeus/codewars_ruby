# Create a method max_by that accepts a list and a block, runs the block for each item in the list, and returns the item with the highest block return value.


def max_by list, &block
  # your solution here
  list.max_by &block
end



list = [0,1,2,3,5,8,13]
p max_by(list){|item| item.to_s} #, 8