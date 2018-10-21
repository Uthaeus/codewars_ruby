# Given an array of numbers, return an array, with each member of input array rounded to a nearest number, divisible by 5.


def round_to_five(numbers)
    result = []

    numbers.each do |n|
        upper = up(n)
        lower = down(n)
        upper - n < n - lower ? result.push(upper) : result.push(lower)
    end
    result 
end

def up(n)
    num = n.ceil
    num % 5 == 0 ? num : up(num + 1)
end

def down(n)
    num = n.to_i 
    num % 5 == 0 ? num : down(num - 1)
end



p round_to_five([1,5,87,45,8,8])
# [0, 5, 85, 45, 10, 10]