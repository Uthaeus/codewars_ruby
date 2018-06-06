# In your class, you have started lessons about arithmetic progression. Since you are also a programmer, you have decided to write a function that will return the first n elements of the sequence with the given common difference d and first element a. Note that the difference may be zero!

# The result should be a string of numbers, separated by comma and space


def arithmetic_sequence_elements(a,r,n)
  #your code here
  result = []
  n.times do 
    result << a 
    a += r 
  end
  result.join(', ')
end



p arithmetic_sequence_elements(1, 2, 5) #, "1, 3, 5, 7, 9"
p arithmetic_sequence_elements(100, -10, 10) #, "100, 90, 80, 70, 60, 50, 40, 30, 20, 10"