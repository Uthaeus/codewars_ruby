# Find the length of the longest substring in the given string s that is the same in reverse.

# As an example, if the input was “I like racecars that go fast”, the substring (racecar) length would be 7.

# If the length of the input string is 0, the return value must be 0.


def longest_palindrome s
  #your code here
  if s.length < 1
    return 0
  elsif s.length == 1
    return 1
  end
  lengths = [1]
  x = 0

  while x < s.length do 
    y = s.length - 1
    while y > x do 
      temp = s[x..y]
      if temp == temp.reverse
        lengths << temp.length 
      end
      y -= 1
    end
    x += 1
  end
  lengths.max 
end



p longest_palindrome("baabcd") #, 4
p longest_palindrome("baablkj12345432133d") #, 9