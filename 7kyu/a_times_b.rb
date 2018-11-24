# Find out a pair of numbers(we called them number a and number b) from the array numbers, let a*b=c, result format is an array [a,b]


def find_a_b(numbers,c)
    result = []

    numbers.each_with_index do |n, ind|
        x = ind + 1
        while x < numbers.length do 
            if n * numbers[x] == c  
                result << n << numbers[x]
                return result 
            end
            x += 1
        end
    end
    nil
end



p find_a_b([1,2,3,4,5,6],15) #, [3,5])
p find_a_b([-3,-2,-2,-1,0,1,2,3,4],4) #, [-2,-2]