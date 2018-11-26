# Task
#   In this simple Kata your task is to create a function that turns a string into a Mexican Wave. You will be passed a string and you must return that string in an array where an uppercase letter is a person standing up.
# Rules
#   1.  The input string will always be lower case but maybe empty.

# 2.  If the character in the string is whitespace then pass over it as if it was an empty seat.
# Example
# wave("hello") => ["Hello", "hEllo", "heLlo", "helLo", "hellO"]



def wave(str)
  # Code here
  x = 0
  result = []

  if str.empty?
    return result
  end

  while x < str.length do 
    my_str = str.split('')

    if my_str[x] != ' '
      my_str[x] = my_str[x].upcase 

      result << my_str.join('')
    end

    
    x += 1
  end
  result 
end



p wave("hello") #["Hello", "hEllo", "heLlo", "helLo", "hellO"]
p wave("two words") #["Two words", "tWo words", "twO words", "two Words", "two wOrds", "two woRds", "two worDs", "two wordS"]