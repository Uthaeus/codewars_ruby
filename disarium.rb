# Disarium number is the number that The sum of its digits powered with their respective positions is equal to the number itself.



def disarium_number(n)
  #your code here
  arr = n.to_s.split('')
  num_arr = arr.map {|i| i.to_i}
  result = []

  x = 0
  while x < num_arr.length do 
    result << num_arr[x] ** (x + 1)
    x += 1
  end

  if result.reduce(:+) == n 
    return "Disarium !!"
  else
    return "Not !!"
  end
end


p disarium_number(89)