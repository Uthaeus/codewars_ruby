# In this kata you are required to, given a string, replace every letter with its position in the alphabet.
# 96 - 126

def alphabet_position(text)
    result = []
    text.downcase.chars do |c|
        if c.ord >= 96 && c.ord <= 126
            result << c.ord - 96
        end
    end
    result.join(' ')
end



p alphabet_position("The sunset sets at twelve o' clock.")
#, "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11"

p alphabet_position("~`5$76o(4WE7lKk`\"dFA_QS8tjZQNP}")
# "30 0 15 23 5 12 11 11 0 4 6 1 17 19 20 10 26 17 14 16 29"
# "30 0 15 23 5 12 11 11 0 4 6 1 17 19 20 10 26 17 14 16 29"