# You will get a numbern (>= 0) and your task is to find the next prime number.
def isPrime?(num)
    (2..Math.sqrt(num)).each { |i| return false if num % i == 0}
    true
end

def next_prime(n)
  # your code here
  # nums = [nil, nil, *2..n + 1]
  # (2..Math.sqrt(n)).each do |i|
  #   (i**2..n).step(i){|m| nums[m] = nil}  if nums[i]
  # end
  # p_arr = nums.compact
  # p_arr
  n_prime = nil
  x = 1
  result = false
  while result == false do 

    if isPrime?(n + x)
      n_prime = n + x 
      result = true
    end
    x += 1
  end

  n_prime

end



p next_prime(13) #, 17)
p next_prime(911) # , 919)