# Kata Task
# stations is a list/array of distances (miles) from one station to the next along the Pony Express route.

# Implement the riders method/function, to return how many riders are necessary to get the mail from one end to the other.

# NOTE: Each rider travels as far as he can, but never more than 100 miles.



def riders(stations)
  # Your code here  
  rider_count = 1
  distance = 0
  x = 0

  while x < stations.length - 1 do 
    distance += stations[x]
    if distance + stations[x + 1] > 100
      rider_count += 1
      distance = 0
    end
    x += 1
  end
  rider_count 
end



p riders([33, 8, 16, 47, 30, 30, 46]) #, 3
p riders([6, 24, 6, 8, 28, 8, 23, 47, 17, 29, 37, 18, 40, 49]) #, 4
p riders([43, 23, 40, 13]) #, 2
