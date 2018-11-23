# Write a function, persistence, that takes in a positive parameter num and returns its multiplicative persistence, which is the number of times you must multiply the digits in num until you reach a single digit.


def persistence(n)
    count = 0
    while n > 9 do 
        n = n.to_s.split('').map { |i| i.to_i }.reduce(:*)
        count += 1
    end
    count 
end



p persistence(999) #,4