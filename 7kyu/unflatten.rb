# You get an array of integers and have to unflatten it by these rules:

# - You start at the first number.
# - If this number x is smaller than 3, take this number x direct 
#   for the new array and continue with the next number.
# - If this number x is greater than 2, take the next x numbers (inclusive this number) as a 
#   sub-array in the new array. Continue with the next number AFTER this taken numbers.
# - If there are too few numbers to take by number, take the last available numbers.


def unflatten(flat_array)
    result = []
    x = 0

    while x < flat_array.length do 
        if flat_array[x] < 3 
            result.push flat_array[x]
            x += 1
        else
            temp = [*flat_array[x...x + flat_array[x]]]
            result.push temp 
            x += flat_array[x]
        end
    end
    result 
end



p unflatten([ 3, 5, 2, 1 ]) #, [[ 3,5,2 ], 1 ]
p unflatten([ 1, 4, 5, 2, 1, 2, 4, 5, 2, 6, 2, 3, 3 ]) #, [1, [4,5,2,1], 2, [4,5,2,6], 2, [3, 3] ]