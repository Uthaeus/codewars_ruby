# Your task is very simple. Just write a function isAlphabetic(s), which takes an input string s in lowercase and returns true/false depending on whether the string is in alphabetical order or not.

# For example, isAlphabetic('kata') is False as 'a' comes after 'k', but isAlphabetic('ant') is True.



def alphabetic(s)
    # pass
    s == s.split('').sort.join('')
end



p alphabetic('codewars') #, false
p alphabetic('cell') #, true