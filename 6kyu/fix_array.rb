# You will be given a jumbled sequence of integers and your task is to reorder them so that they conform to the above sequence. There will always be an answer.


def solve arr
  #..
  result = []
  my_arr = [*arr]

  heads = arr.select { |i| i % 3 == 0 && arr.include?(i / 3)}
  heads_count = 0

  loop do  
    flag = false

    if result.length === 0
      result << heads[heads_count]
      my_arr.delete_at(my_arr.index(heads[heads_count]))
    end

    div = result[-1] / 3

    if my_arr.include?(div)
      ind = my_arr.index(div)
      result << my_arr[ind]
      my_arr.delete_at(ind)
    else
      flag = true
    end 

    break if result.length === arr.length

    mult = result[-1] * 2

    if my_arr.include?(mult)
      ind = my_arr.index(mult)
      result << my_arr[ind]
      my_arr.delete_at(ind)
    else
      flag = true
    end

    break if result.length === arr.length

    mult = result[-1] * 2

    if my_arr.include?(mult)
      ind = my_arr.index(mult)
      result << my_arr[ind]
      my_arr.delete_at(ind)
    else
      flag = true
    end

    break if result.length === arr.length

    if flag
      result = []
      my_arr = [*arr]
      heads_count += 1
    elsif result.length === arr.length
      break
    end 
  end

  result
end



p solve([12,3,9,4,6,8]) #,[9,3,6,12,4,8]
p solve([558,744,1488,279,2232,1116]) #,[279,558,1116,2232,744,1488]