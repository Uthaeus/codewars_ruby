# Write a function that returns the total surface area and volume of a box as an array: [area, volume].



def get_size(w,h,d)
  #your code here
  area = 2 * (h * w) + 2 * (h * d) + 2 * (d * w)
  volume = w * h * d 
  result = [area, volume]
  result
end



p get_size(4, 2, 6) #, [88,48]
p get_size(1, 2, 1) #, [10,2]