# Given a string, you have to return a string in which each character (case-sensitive) is repeated once.


def double_char(str)
    arr = str.split('')
    result = ''

    arr.each do |i|
        result += i * 2 unless i == ' '
    end
    result 
end



p double_char("illuminati") #, "iilllluummiinnaattii"