# Define a function that removes duplicates from an array of numbers and returns it as a result.

# The order of the sequence has to stay the same.



def distinct(seq)
  # your code here
  seq.uniq
end



p distinct([1, 1, 1, 2, 3, 4, 5]) #, [1, 2, 3, 4, 5])