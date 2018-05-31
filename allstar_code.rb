# Create a function called that accepts 2 string arguments and returns an integer of the count of occurrences the 2nd argument is found in the first one.

# If no occurrences can be found, a count of 0 should be returned.


def str_count(word, letter)
  # Code here
  word.count(letter)
end



p str_count('Hello', 'l') # , 2