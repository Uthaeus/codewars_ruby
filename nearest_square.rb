# Your task is to find the nearest square number, nearest_sq(n), of a positive integer n.


def nearest_sq(n)
  # your code here
  lower = n - ((Math.sqrt(n).floor) ** 2)
  upper = ((Math.sqrt(n).ceil) ** 2) - n

  return lower < upper ? (Math.sqrt(n).floor) ** 2 : (Math.sqrt(n).ceil) ** 2
end



p nearest_sq(111) #, 121)