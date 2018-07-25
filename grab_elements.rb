# Create a method take_while that accepts a list and a block, and returns a array of the first several elements from the list, for as long as the block returns true.

# Keep in mind, we don't want all the items for which the block returns true; once we get a false response, we want to stop looking.


def take_while list, &block
  # your solution here
  list.take_while &block
  
end



list = [0,1,2,3,5,8,13]

p take_while(list){|item| item.even?} #, [0]