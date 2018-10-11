# Your job is to write a function which increments a string, to create a new string. If the string already ends with a number, the number should be incremented by 1. If the string does not end with a number the number 1 should be appended to the new string.


def increment_string(input)
    arr = input.split('')
    num = []
    return '1' if arr.empty? 
    while arr[-1] != nil && arr[-1].ord >= 48 && arr[-1].ord <= 57 do 
        num.unshift(arr.pop)
    end
    
    if num.empty?
        new_num = ['1']
    else 
        new_num = (num.join('').to_i + 1).to_s.split('')
        while new_num.length < num.length do 
            new_num.unshift '0'
        end
    end
    arr.join('') + new_num.join('')
end



p increment_string("foobar00") #, "foobar01"
p increment_string("") #, "1"