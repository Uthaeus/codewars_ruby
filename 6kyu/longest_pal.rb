# For this Kata you need to write a function that takes a string of characters and returns the length, as an integer value, of longest alphanumeric palindrome that could be made by combining the characters in any order but using each character only once. The function should not be case sensitive.


def longest_palindrome(s)
    result = 0
    s = s.downcase.tr('^a-z0-9', '')
    uniqs = s.split('').uniq 

    uniqs.each do |u|
        count = s.count(u)
        if count >= 2
            temp = count.even? ? count : count - 1 
            result += temp 
        end
    end
    s.length > result ? result + 1 : result 
end



p longest_palindrome("xyz__a_/b0110//a_zyx")# , 13
p longest_palindrome("$aaabbbccddd_!jJpqlQx_.///yYabababhii_") #, 25
p longest_palindrome("Hannah") #, 6
p longest_palindrome("") #, 0
p longest_palindrome("A") #, 1