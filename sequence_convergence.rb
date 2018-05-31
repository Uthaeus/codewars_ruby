


def converge num
  num_str = num.to_s.split('')
  base = [1]
  instance = [num]

  while base[-1] != instance[-1] do 
    if base[-1] > instance[-1]
      i_temp = get_next(instance[-1].to_s.split(''))
      instance.push(i_temp)

    else
      b_temp = get_next(base[-1].to_s.split(''))
      base.push(b_temp)
    end
  end
  return instance.length - 1
end

def get_next arr
  num = arr.join('').to_i
  no_zero_arr = []
  arr.each do |i|
    if i != '0'
      no_zero_arr << i.to_i
    end
  end
  prod = no_zero_arr.inject(:*)
  next_num = num + prod
  return next_num
end

p converge(10)
p converge(15)
p converge(5000)

# console.log(convergence(10)) //, 5);)
# console.log(convergence(15)) //, 2);
# console.log(convergence(5000)) //, 283))