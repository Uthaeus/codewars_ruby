
def product_array(numbers)
  #your code here
  result = []
  
  x = 0
  while x < numbers.length do 
    temp = numbers
    ind = temp.index(temp[x])
    val = temp.delete_at(temp.index(temp[x]))
    
    result << temp.reduce(:*)
    
    temp.insert(ind, val)
    x += 1
  end
  result
end


t1 = [5, 8, 15, 76, 34, 76, 9, 2, 9]

p product_array(t1)

# => [3817704960, 2386065600, 1272568320, 3304800, 561427200, 3304800, 235660800, 9544262400, 235660800]


# It should work for random inputs too -  Expected: [3817704960, 2386065600, 1272568320, 251164800, 561427200, 251164800, 2120947200, 9544262400, 2120947200], instead got: [3817704960, 2386065600, 1272568320, 3304800, 561427200, 3304800, 235660800, 9544262400, 235660800]