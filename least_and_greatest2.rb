# Create a method minmax_by that accepts a list and a block. The method should return an array containing the min and max list elements, based on their return values from the block


def minmax_by list, &block
  # your solution here
  my_list = list.map &block

  [my_list.min, my_list.max]
end



list = [13,2,5,4]

p minmax_by(list){|item| item} #, [2,13],