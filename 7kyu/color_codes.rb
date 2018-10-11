# Resistors are electrical components marked with colorful stripes/bands to indicate both their resistance value in ohms and how tight a tolerance that value has. While you could always get a tattoo like Jimmie Rodgers to help you remember the resistor color codes, in the meantime, you can write a function that will take a string containing a resistor's band colors and return a string identifying the resistor's ohms and tolerance values.


def decode_resistor_colors(bands)
    bands = bands.split(' ')
    basic = ['black', 'brown', 'red', 'orange', 'yellow', 'green', 'blue', 'violet', 'gray', 'white']
    tol = {'gold' => '5%', 'silver' => '10%', 'default' => '20%'}
    tolerance = 'default'

    first = [basic.index(bands[0]), basic.index(bands[1])].join('').to_i
    exp = basic.index(bands[2])
    ohms = first * (10 ** exp)
    
    if ohms >= 1000000
        ohms = (format('%g', ohms.to_f / 1000000)).to_s + 'M'
    elsif ohms >= 1000
        ohms = (format('%g', ohms.to_f / 1000)).to_s + 'k'
    end

    if bands.length > 3
        tolerance = bands[3]
    end
    result = "#{ohms} ohms, #{tol[tolerance]}"
    result 
end



p decode_resistor_colors("yellow violet red gold") #, "4.7k ohms, 5%"
p decode_resistor_colors("yellow violet black") #, "47 ohms, 20%"
p decode_resistor_colors("brown black green silver") #, "1M ohms, 10%"