# Implement the function unique_in_order which takes as argument a sequence and returns a list of items without any elements with the same value next to each other and preserving the original order of elements.



def unique_in_order(iterable)
  #your code here
  x = 0
  result = []

  while x < iterable.length do 
    result << iterable[x] if iterable[x] != iterable[x + 1]
    x += 1
  end
  result
end




p unique_in_order('AAAABBBCCDAABBB') #, ['A','B','C','D','A','B']