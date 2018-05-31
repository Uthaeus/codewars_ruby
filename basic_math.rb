# Your task is to create a function that does four basic mathematical operations.

# The function should take three arguments - operation(string/char), value1(number), value2(number).
# The function should return result of numbers after applying the chosen operation.



def basic_op(operator, value1, value2)
  #your code here
  case operator
  when '+'
    return value1 + value2
  when '-'
    return value1 - value2
  when '*'
    return value1 * value2
  when '/' 
    return value1 / value2
  end
end



p basic_op('-', 15, 18) #, -3