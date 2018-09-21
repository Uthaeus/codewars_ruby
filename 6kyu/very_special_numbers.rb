# We define a range with two positive integers n1 and n2 and an integer factor k, [n1, n1 + k*n2], the bounds of the defined range are included.


def find_us(n1, n2, k, prime_factors, digits)
    limit = n1 + k * n2 
    range = (n1..limit).to_a
    result = []

    range.each do |i|
        fact_flag = true 
        digit_flag = true 

        prime_factors.each do |fact|
            fact_flag = false if i % fact != 0
        end

        if fact_flag 
            temp = i.to_s.split('').map { |s| s.to_i }
            digits.each do |digit|
                digit_flag = false if !temp.include? digit 
            end

            result << i if digit_flag 
        end

    end
    result 
end



n1 = 30
n2 = 90
k = 4
prime_factors = [2, 3]
digits = [6, 2]
p find_us(n1, n2, k, prime_factors, digits)
#[126, 162, 216, 246, 264, 276])