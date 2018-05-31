# write me a function stringy that takes a size and returns a string of alternating '1s' and '0s'.

# the string should start with a 1.

# a string with size 6 should return :'101010'.

# with size 4 should return : '1010'.

# with size 12 should return : '101010101010'.



def stringy(size)
  # Your code here
  x = 0
  result = ''
  while x < size do 
    if x % 2 == 0
      result += '1'
    else
      result += '0'
    end
    x += 1
  end
  result
end




