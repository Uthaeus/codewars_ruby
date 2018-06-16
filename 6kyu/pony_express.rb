# Kata Task
# stations is a list/array of distances (miles) from one station to the next along the Pony Express route.

# Implement the riders method/function, to return how many riders are necessary to get the mail from one end to the other.

# Missing rider
# In this version of the Kata a rider may go missing. In practice, this could be for a number of reasons - a lame horse, an accidental fall, foul play...

# After some time, the rider's absence would be noticed at the next station, so the next designated rider from there would have to back-track the mail route to look for his missing colleague. The missing rider is then safely escorted back to the station where he came from, and the mail bags are handed to his rescuer (or another substitute rider if necessary).

# stationX is the number (2..N) of the station where the rider's absence was noticed.

# Notes
# Each rider travels as far as he can, but never more than 100 miles.



def riders(stations, station_x)
  # your code here
  first_leg = stations[0...station_x]
  second_leg = stations[station_x - 1..-1]
  y = 0
  first_distance = 0
  second_distance = 0
  rider_count = 2
  x = 0
  distance = 0
  

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



p riders([43, 23, 40, 13], 4) #, 3