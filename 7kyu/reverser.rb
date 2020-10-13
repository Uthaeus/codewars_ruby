# Impliment the reverse function, which takes in input n and reverses it. For instance, reverse(123) should return 321. You should do this without converting the inputted number into a string.


def reverser(number)
    number.to_s.split('').reverse.join('').to_i
end


p reverser(1234) #, 4321