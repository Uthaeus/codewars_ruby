# Create a method drop that accepts a list, and a number n, and returns a copy of the list that skips the first n elements.


def drop list, n
  # your solution here\
  list.drop(n)
end



list = [0, 1, 2, 3, 5, 8, 13]
p drop(list, 3) #, [3, 5, 8, 13]