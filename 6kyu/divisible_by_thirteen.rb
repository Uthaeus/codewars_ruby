# When you divide the successive powers of 10 by 13 you get the following remainders of the integer divisions:

# 1, 10, 9, 12, 3, 4.

# Then the whole pattern repeats.

# Hence the following method: Multiply the right most digit of the number with the left most number in the sequence shown above, the second right most digit to the second left most digit of the number in the sequence. The cycle goes on and you sum all these products. Repeat this process until the sequence of sums is stationary.




def thirt(n)
    # your code
  remainders = [1, 10, 9, 12, 3, 4]
  rlen = 6
  num = n
  result = 0
  result_arr = []
  loop do 
    num_arr = num.to_s.split('').map { |i| i.to_i}
    while remainders.length <= num_arr.length do 
      remainders << (10 ** rlen) % 13
      rlen += 1
    end
    x = 0
    y = num_arr.length - 1
    temp = []
    while x < remainders.length && y >= 0 do 
      temp_num = remainders[x] * num_arr[y]
      temp << temp_num
      x += 1
      y -= 1
    end
    num = temp.reduce(:+)
    if num == result_arr[-1]
      result = num 
      break
    end
    result_arr << num
  end
  result 
end



p thirt(85299258) #, 31
p thirt(1111111111) #, 71
