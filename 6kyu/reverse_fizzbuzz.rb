# Write a function that accepts a string, which will always be a valid section of FizzBuzz. Your function must return an array that contains the numbers in order to generate the given section of FizzBuzz.


def reverse_fizzbuzz(s)
    check_str = []
    result = []
    len = s.split(' ').length

    x = 1
    loop do
        if x % 3 == 0 && x % 5 == 0
            check_str << "FizzBuzz"
        elsif x % 5 == 0
            check_str << "Buzz"
        elsif x % 3 == 0
            check_str << "Fizz"
        else
            check_str << x
        end

        result << x 
        temp = check_str.slice(-len)

        p check_str
        p temp
        p check_str.slice(-3)

        if temp == s 
            return result.slice(-len, len)
        end

        x += 1
    end

end


p reverse_fizzbuzz("1 2 Fizz 4 Buzz") #, [1, 2, 3, 4, 5]