# Create a method find_index that accepts a list and a block, and returns index of the first item for which the block returns true. If no item in the list matches, return nil.


def find_index list, &block
  # your solution here
  list.find_index &block
end



list = [0,1,2,3,5,8,13]
p find_index(list){|item| item == 8} #, 5