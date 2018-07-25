# Create a method reject that accepts a list and a block, and returns a list of elements for which the block returns false.


def reject list, &block
  # your solution here
  list.reject &block
end



list = [0,1,2,3,5,8,13]

p reject(list){|item| item.even?} #, [1, 3, 5, 13]