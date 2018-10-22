# Numbers ending with zeros are boring.

# They might be fun in your world, but not here.

# Get rid of them. Only the ending ones


def no_boring_zeros(num)
    num_str = num.to_s
    x = -1

    while x > 0 do 
        if num_str[x] != '0'
            break
        end
        x -= 1
    end
    num_str[0...x].to_i
end



p no_boring_zeros(-1050) #, -105