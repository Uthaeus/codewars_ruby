# Complete the function that calculates the area of the red square, when the length of the circular arc A is given as the input. Return the result rounded to two decimals.


def square_area(arc)
  if arc <= 0
    return 0
  end
  c = arc * 4
  pi = Math::PI 

  r = (c / pi) / 2
  (r * r).round(2) 
end


p square_area(1) #, 1.62