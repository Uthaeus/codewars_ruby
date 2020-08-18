# Given a month as an integer from 1 to 12, return to which quarter of the year it belongs as an integer number.


def quarter_of(month)
    num = month / 12.00 

    p num 
    if num <= 0.25
        result = 1
    elsif num > 0.25 && num <= 0.5
        result = 2
    elsif num > 0.5 && num <= 0.75
        result = 3
    else
        result = 4
    end
    result 
end


p quarter_of(3) #, 1