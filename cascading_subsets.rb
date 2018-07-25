# Create a method each_cons that accepts a list and a number n, and returns cascading subsets of the list of size n, like so:


def each_cons list, n
  # your solution here
  arr = []
  list.each_cons(n) { |set| arr << set } 

  arr
end



list = [3, 5, 8, 13]

p each_cons(list, 2) #, [[3,5],[5,8],[8,13]]