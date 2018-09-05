# Given an integer n, find the maximal number you can obtain by deleting exactly one digit of the given number.


def delete_digit(n)
    #coding and coding..
  num_arr = n.to_s.split('').map { |i| i.to_i }
  x = 0
  while x < num_arr.length do 
    if num_arr[x + 1] == nil || num_arr[x] < num_arr[x + 1]
      num_arr.delete_at x 
      return num_arr.join('').to_i
    end
    x += 1
  end

  
end



p delete_digit(152) #,52
p delete_digit(10) #,1

p delete_digit(470462) #70462