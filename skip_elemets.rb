# Create a method drop_while that accepts a list and a block, and returns a copy of the list that skips over elements from the left, for as long as the given block returns true.


def drop_while list, &block
  # your solution here
  list.drop_while &block
end



list = [0,1,2,3,5,8,13]

drop_while(list){|item| item < 3} #, [3, 5, 8, 13]