# Create a method first that accepts a list and an optional parameter n. If n is unspecified, it returns just the first element of the list. If n is specified, it returns up to that number of elements from the beginning of the list.


def first list, n=nil
  # your solution here
  n == nil ? list[0] : list.first(n)
end



list = [0,1,2,3,5,8,13]

p first(list) #, 0, "returns the first element")
p first(list, 3) #, [0,1,2]