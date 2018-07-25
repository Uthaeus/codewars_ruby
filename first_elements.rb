# Create a method take that accepts a list and a number n, and returns an array of the first n elements from the list.



def take list, n
  # your solution here
  list.first(n)
end



list = [0,1,2,3,5,8,13]

p take(list, 3) #, [0,1,2], "should return the first 3 items")