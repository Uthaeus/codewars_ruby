#A number m of the form 10x + y is divisible by 7 if and only if x − 2y is divisible by 7

def seven(m)
    count = 1
    arr = m.to_s.split('')
    pre = arr[0..-2].join('').to_i
    post = arr[-1].to_i

    result = pre - 2 * post

    if result < 100
      return [result, count]
    else
      seven(result)
      count += 1
    end

end



p seven(1021) #, [10, 2]
#p seven(371) #, [35, 1]
#p seven(1603), [7, 2]