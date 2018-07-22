# Task
# Given two positive integers start and limit, the function buddy(start, limit) should return the first pair (n m) of buddy pairs such that n (positive integer) is between start (inclusive) and limit (inclusive); m can be greater than limit and has to be greater than n



def buddy(start, nd)
  # your code
  x = start
  key_arr = []
  val_arr = []
  result = []

  loop do 
    
    
    temp_sum = calc(x)

    if key_arr.include?(temp_sum + 1)
      ind = key_arr.index(temp_sum + 1)

      if val_arr[ind] + 1 == x 
        result = [key_arr[ind], x]
        return result
      end
    end 

    key_arr << x 
    val_arr << temp_sum
    
    x += 1
  end

end

def calc num
  temp_divisors = []
  y = 1

  while y <= (num / 2).ceil do 
    temp_divisors << y if num % y == 0
    y += 1
  end
  result = temp_divisors.reduce(:+)
  result
end




# p buddy(1071625, 1103735) #, "(1081184 1331967)")
p buddy(10, 50) # [48, 75]