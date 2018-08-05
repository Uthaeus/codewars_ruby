# Format any integer provided into a string with (commas) in the correct places.


def number_format(n)
  #your code here
  flag = false
  if n < 0
    flag = true
  end
  neg = nil
  num = n.to_s.reverse.split('')
  x = 0
  result = ''

  if flag
    neg = num.pop
  end

  while x < num.length do 
    if x % 3 == 0 && x != 0
      result += ','
      result += num[x]
    else
      result += num[x]
    end
    x += 1
  end

  if flag
    result += neg
  end

  result.reverse 
end



p number_format(5678545) #, "5,678,545"
p number_format(-420902) #, "-420,902"