# Create a method reduce that accepts a list and a block, and returns an aggregate object for that list. See the tests for examples


def reduce list, &block
  # your solution here
  list.reduce &block
end



list = [0,1,2,3,5,8,13]
p reduce(list){|sum, item| sum + item} #, 32