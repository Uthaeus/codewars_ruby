# Consider a series that has the following property:

# 0,1,2,3,4,5,6,7,8,9,10,22,11,20..There is nothing special between numbers 0 and 10. For all other numbers, the next element in the series is the lowest number that doesn't contain any digits of the previous one, and is not already in the series.

# For instance, the number 10 has digits 1 and 0. The smallest number before or after 10 that does not have 1 or 0 and is not already in the series is 22. Similarly, the smallest number before or after 22 that has not yet appeared in the series and that has no 2 is 11. Once a number appers in the series, it cannot appear again.

# You will be given an index number and your task will be return the element at that position. See test cases for more examples.


def find_num(n)
  #..
  resultArr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  if n < 10
    return n 
  end

  x = 10
  
  until x == n do 
    numArr = resultArr[-1].to_s.split('')
    tester = 9
    result = nil
    while result == nil do 
      temp = tester.to_s.split('')
      y = 0
      flag = true
      while y < temp.length do 
        if numArr.include?(temp[y])
          flag = false
        end
        y += 1
      end
      if flag
        result = tester
        
      end
      
      if resultArr.include?(result)
        flag = false
        result = nil
        tester += 1
      else
        resultArr.push(result)
      end
    end
    x += 1
  end
  return resultArr[n + 1]
end




p find_num(5) #,5
p find_num(11) #,22
p find_num(100) #,103
p find_num(500) #,476