# Create a method minmax that accepts a list and a block. The block itself should compare two elements, so the method can sort the elements and return the minimum and maximum as a 2-element array.


def minmax list, &block
  # your solution here
  list.minmax &block
end



list = [13,2,5,4]

p minmax(list){|a,b| a <=> b} #, [2,13],