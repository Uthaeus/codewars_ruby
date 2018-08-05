# The Floyd's triangle is a right-angled triangular array of natural numbers listing them in order, in lines of increasing length, so a Floyds triangle of size 6 looks like:


def nth_floyd n 
  #..
  x = 1
  y = 1

  while x <= n do 
    x += y
    y += 1
  end

  y - 1  
end



p nth_floyd(15) #, 5
p nth_floyd(26) #, 7)