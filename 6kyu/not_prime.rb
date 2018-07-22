# You are given two positive integers a and b (a < b <= 20000). Complete the function which returns a list of all those numbers in the interval [a, b) whose digits are made up of prime numbers (2, 3, 5, 7) but which are not primes themselves.



def not_primes(a,b)
  nums = (a...b).to_a
  
  result = nums.select { |n| !is_prime?(n) && consist_of?(n) }

  result
end

def is_prime? n 
  return false if n < 2

  ((2..(Math.sqrt(n)))).each do |i|
    return false if n % i == 0
  end
  return true
end

def consist_of? n
  primes = [2, 3, 5, 7]

  num = n.to_s.split('').map { |i| i.to_i }
  result = num - primes 

  result.length == 0 ? true : false
end



p not_primes(2, 222) #, [22, 25, 27, 32, 33, 35, 52, 55, 57, 72, 75, 77]
p not_primes(2700, 3000) #, [2722, 2723, 2725, 2727, 2732, 2733, 2735, 2737, 2752, 2755, 2757, 2772, 2773, 2775]
