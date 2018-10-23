# Write a program that calculates the number of grains of wheat on a chessboard given that the number on each square is double the previous one.


def square(number)
    2 ** (number - 1)
end



p square(4) #, 8
p square(16) # 32768