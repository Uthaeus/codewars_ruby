

def reverse_fizzbuzz(s) 
    check_str = []
    result = []
    len = s.split(' ').length

    x = 1
    loop do 
        if x % 3 == 0 && x % 5 == 0
            check_str << 'FizzBuzz'
        elsif x % 5 == 0
            check_str << 'Buzz'
        elsif x % 3 == 0
            check_str << 'Fizz'
        else
            check_str << x
        end

        result << x

        if check_str.length >= len 

            temp  = check_str.slice(check_str.length - len, check_str.length)

            if temp.join(' ') == s 
                return result.slice(result.length - len, result.length)
            end
        end
        x += 1
    end
end


p reverse_fizzbuzz("1 2 Fizz 4 Buzz") #, [1, 2, 3, 4, 5]
p reverse_fizzbuzz("Fizz 688 689 FizzBuzz") #, [687, 688, 689, 690]