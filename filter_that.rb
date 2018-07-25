# Create a method select that accepts a list and a block, and returns a new array of elements for which the given block returns true.


def select list, &block
  # your solution here
  list.select &block
end



list = [0,1,2,3,5,8,13]

p select(list){|item| item.even?} #, [0,2,8]