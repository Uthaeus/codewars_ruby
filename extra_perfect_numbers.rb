# Extra perfect number is the number that first and last bits are set bits.

def trans num
  result = [] 
  remain = num % 2
  temp = num / 2  
  while temp > 0 do 
    if remain == 0
      result << 0
    else
      result << 1
    end
    temp /= 2
    remain = temp % 2
  end
  if result[0] == 1 && result[-1] == 1
    return true
  else 
    return false
  end
end

def extra_perfect(n)
  #your code here
  result = [1]
  arr = (1..n).to_a

  arr.each do |i|
    if trans(i)
      result << i 
    end
  end
  result
end


# 46 (base10) -> 101110 (base2)

p extra_perfect(39) #, [1,3,5,7,9,11,13,15,17,19,21,23,25,27,29,31,33,35,37,39]


#p trans(46)