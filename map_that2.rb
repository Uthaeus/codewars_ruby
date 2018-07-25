# Create a method map that accepts a list and a block, runs the block for each item in the list, and returns a new array with the block return values.


def map list, &block
  # your solution here
  list.map &block
end



list = [3,5,8,13]
p map(list){|item| item} #, [3,5,8,13]