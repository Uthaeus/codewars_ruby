# Given Positive integer, N , Return true if it could be expressed as a sum of two or more consecutive positive numbers , OtherWise return false 


def consecutive_ducks(n)
  arr = (1..n).to_a
  x = 0

  while x < n 
    y = x + 1
    tempSum = (arr[x..y]).sum 
    if tempSum > n 
      break
    end
    while y < n 
      #tempSum = (arr[x..y]).sum 
      if tempSum == n 
        return true 
        break
      elsif tempSum >= n 
        break
      end
      y += 1
    end
    x += 1
  end
  false
end



p consecutive_ducks(6) #, true