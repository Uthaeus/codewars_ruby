# Given two strings, the first being a random string and the second being the same as the first, but with three added characters somewhere in the string (three same characters),

# Write a function that returns the added character



def added_char(s1, s2) 
  #..
  r1 = s2.split('') - s1.split('')
  if r1.empty?
    x = 0
    while x < s2.length do
      if s1.count(s2[x]) != s2.count(s2[x])
        result = s2[x]
      end
      x += 1
    end
  else
    result = r1[0]
  end
  result

end



p added_char("aabbcc","aacccbbcc") #,'c'
p added_char("abcde","2db2a2ec") #,'2'