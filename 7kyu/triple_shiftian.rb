# You are asked to create a function which accept a base with the first 3 numbers and then returns the nth element.


def triple_shiftian(base,n)
    return base[n] if n < base.length
    result = [*base]
    x = 2
    while x < n do 
        temp = (4 * result[x]) - (5 * result[x - 1]) + (3 * result[x - 2])
        result << temp 
        x += 1
    end
    result[-1]
end



p triple_shiftian([1,1,1],25) #, 1219856746
p triple_shiftian([3,2,1],0) #, 3