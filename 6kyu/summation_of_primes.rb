# The sum of the primes below or equal to 10 is 2 + 3 + 5 + 7 = 17. Find the sum of all the primes below or equal to the number passed in.


def sum_of_primes(n)
  result = [2]
  x = 3

  while x <= n do 
    flag = true
    result.each do |num|
      if x % num == 0
        flag = false
        break
      end
    end

    if flag
      result << x 
    end

    x += 2

  end

  result.reduce(:+)
end



#p sum_of_primes(355) #, 11240
p sum_of_primes(2000) #, 277050