# Implement a function named generateRange(min, max, step), which takes three arguments and generates a range of integers from min to max, with the step. The first integer is the minimum value, the second is the maximum of the range and the third is the step. (min < max)


def generate_range(min, max, step)
    result = []
    while min <= max do 
        result << min
        min += step 
    end
    result 
end


p generate_range(1,10,1) #, [1,2,3,4,5,6,7,8,9,10]
p generate_range(1,10,2) #, [1,3,5,7,9]