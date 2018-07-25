# Create a method sort_by that accepts a list and a block, and returns a new list sorted by the return values of the block.


def sort_by list, &block
  # your solution here
  list.sort_by &block
end



list = [3,8,5,13]
p sort_by(list){|item| item.to_s} #, [13,3,5,8]