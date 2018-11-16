# Given an integral number, determine if it's a square number:


def is_square(x)
    return false if x < 0
    x ** 0.5 == (x ** 0.5).floor
end



p is_square(4) #,    true
p is_square(26) #,   false