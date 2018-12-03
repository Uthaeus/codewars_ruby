# Create a function called convertCF()/convert_c_f() (depending on language) that accepts 2 arguments, an integer of the temperature, and a string of length 1 ("c" or "f") denoting which scale the integer should be converted to (Celsius and Fahrenheit, respectively). The function should return a number, which is the conversion from one scale to the other.
# to c (f - 32) * (5 / 9)  to f (c * (9 / 5) + 32)


def convert_c_f(num, scale = 'c')
    result = nil
    if scale == 'c'
        result = (num - 32) * (5.to_f / 9)
    elsif scale == 'f'
        result = (num * (9.to_f / 5) + 32)
    else
        raise "Incorrect scale"
    end
    result.round(1)
end



p convert_c_f(60, "f") #, 140
p convert_c_f(-84, 'c') # -64.4