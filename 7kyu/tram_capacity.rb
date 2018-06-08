# Linear Kingdom has exactly one tram line. It has n stops, numbered from 1 to n in the order of tram's movement. At the i-th stop ai passengers exit the tram, while bi passengers enter it. The tram is empty before it arrives at the first stop.

# Your task
# Calculate the tram's minimum capacity such that the number of people inside the tram never exceeds this capacity at any time. Note that at each stop all exiting passengers exit before any entering passenger enters the tram.

# Note: 1 ≤ stops ≤ a.length() and a.length() == b.length(). stops doesn't need to be the last stop



def tram(stops, descending, onboarding)
  #your code here
  max = 0
  temp = 0
  x = 0
  stops.times do 
    temp -= descending[x]
    temp += onboarding[x]
    if temp > max 
      max = temp
    end
    x += 1
  end
  max
end



p tram(2, [0, 2, 4, 4], [3, 5, 2, 0]) #, 6
p tram(1, [0, 2, 4, 4], [3, 5, 2, 0]) #, 3