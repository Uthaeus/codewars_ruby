# Task:
# Your job here is to write a function (keepOrder in JS/CoffeeScript, keep_order in Ruby/Crystal/Python, keeporder in Julia), which takes a sorted array ary and a value val, and returns the lowest index where you could insert val to maintain the sorted-ness of the array. The input array will always be sorted in ascending order. It may contain duplicates.



def keep_order(ary, val)
  # your code here
  x = 0
  result = nil
  if ary.length < 1
    return 0
  end
  while result == nil do 
    if ary[x] >= val
      result = x 
      return result
    elsif x == ary.length - 1
      result = x + 1
      return result
    end
    x += 1
  end
end



p keep_order([1, 1, 2, 2, 2], 2) #, 2)
p keep_order([1, 2, 3, 4], 5) #, 4)