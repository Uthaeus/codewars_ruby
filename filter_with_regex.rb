# Create a method grep that accepts a list and a regexp pattern, and returns a list of elements which match the pattern.


def grep list, regexp
  # your solution here
  list.grep regexp
end



list = ["mouse", "cat", "dog", "moose"]

p grep(list, /^[a-z]{3}$/) #, ['cat', 'dog']