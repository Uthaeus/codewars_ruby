# Complete the function that is given the rolled dice as a string of length 5 and return the points scored in that roll. You can safely assume that provided parameters will be valid:


def points(dice)
    five = 0
    four = 0
    three = 0
    two = 0
    one = 0
    result = 0

    num_hash = {}
    num_arr = dice.split('')

    num_arr.each do |x|
        if num_hash[x]
            num_hash[x] += 1
        else
            num_hash[x] = 1
        end
    end

    num_hash.each do |k, v|
        case v 
        when 5
            five += 1
        when 4
            four += 1
        when 3
            three += 1
        when 2
            two += 1
        when 1
            one += 1
        end
    end
    
    if five == 1
        return 50
    elsif four == 1
        return 40
    elsif three == 1 && two == 1
        return 30
    elsif one >= 5
        sorted = num_arr.map { |x| x.to_i }.sort
        m = 0
        while m < sorted.length - 1 do 
            if sorted[m] + 1 != sorted[m + 1]
                return 0
            end
            m += 1
        end
        return 20
    else
        return 0
    end
end


p points("22222") #, 50
p points("23456") #, 20