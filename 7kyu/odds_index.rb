# You are given an array with several "even" words, and only one "odd" word, along with some numbers mixed in.

# Determine if any of the numbers in the array is the index of the "odd" word.

# If so, return true, if not, false.



def oddball x
  # code here
  #ind = x.index('odd')

  x.include?(x.index('odd'))
end



p oddball(["even",19,"odd",2,"even"]) #, true
p oddball(["even",63,"even",1,"even",88,"odd",3,"even"]) #, false