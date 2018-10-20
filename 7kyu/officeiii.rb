# The bloody photocopier is broken... Just as you were sneaking around the office to print off your favourite binary code!


def broken(x)
    output = ''
    z = 0

    while z < x.length do 
        if x[z] == '1'
            output += '0'
        elsif x[z] == '0'
            output += '1'
        else
            output += x[z]
        end
        z += 1
    end
    output 
end



p broken("100010") #, "011101"