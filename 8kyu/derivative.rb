# This function takes two numbers as parameters, the first number being the coefficient, and the second number being the exponent.


def deriver(coefficient, exponent)
    prod = coefficient * exponent
    newEx = exponent - 1

    result = prod.to_s + 'x^' + newEx.to_s
    result 
end


p deriver(7, 8) #, "56x^7"