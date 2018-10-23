# Write a function that takes the total number of chicken pieces Harry can eat (n) and returns an array of the possible numbers of chicken pieces he can buy, that are less than or equal to n


def chicken_options(n)
    result = [0]
    return result if !n.is_a? Integer || n < 3
    x = 3
    while x <= n do 
        result << x if x % 3 == 0 || x % 10 == 0 || (x % 10) % 3 == 0 
        x += 1
    end
    result 
end



p chicken_options(21) #, [0, 3, 6, 9, 10, 12, 13, 15, 16, 18, 19, 20, 21]