# A digital root is the recursive sum of all the digits in a number. Given n, take the sum of the digits of n. If that value has two digits, continue reducing in this way until a single-digit number is produced. This is only applicable to the natural numbers.


def digital_root(n)
    str = n.to_s
    while str.length > 1 do 
        str = str.split('').map { |i| i.to_i }.reduce(:+).to_s 
    end
    str.to_i 
end



p digital_root(456) #, 6 
p digital_root(16) #, 7 