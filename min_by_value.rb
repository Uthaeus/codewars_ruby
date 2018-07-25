# Create a method min_by that accepts a list and a block, runs the block for each item in the list, and returns the item with the lowest block return value.


def min_by list, &block
  # your solution here
  list.min_by &block
end



list = [0,1,2,3,5,8,13]
p min_by(list){|item| item} #, 0