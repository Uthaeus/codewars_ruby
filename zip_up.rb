# Create a method zip that accepts two lists of the same length, and combines their result into a single array, like so:


def zip first, second
  # your solution here
  first.zip(second).flatten
end



first = ['a', 'c', 'e']
second = ['b', 'd', 'f']

p zip(first,second) #, ['a', 'b', 'c', 'd', 'e', 'f']