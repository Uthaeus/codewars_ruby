# For "x", determine how many positive integers less than or equal to "x" are odd but not prime. Assume "x" is an integer between 1 and 10000.

# Example: 5 has three odd numbers (1,3,5) and only the number 1 is not prime, so the answer is 1

# Example: 10 has five odd numbers (1,3,5,7,9) and only 1 and 9 are not prime, so the answer is 2



def odd_not_prime(num)
  # code here
  (1..num).step(2).to_a.select { |i| !is_prime?(i) }.count

end

def is_prime? n 
  return false if n < 2

  ((2..(Math.sqrt(n)))).each do |i|
    return false if n % i == 0
  end
  return true
end



p odd_not_prime(15) #, 3