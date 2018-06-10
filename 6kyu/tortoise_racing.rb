# Two tortoises named A and B must run a race. A starts with an average speed of 720 feet per hour. Young B knows she runs faster than A, and furthermore has not finished her cabbage.

# When she starts, at last, she can see that A has a 70 feet lead but B's speed is 850 feet per hour. How long will it take B to catch A?

# More generally: given two speeds v1 (A's speed, integer > 0) and v2 (B's speed, integer > 0) and a lead g (integer > 0) how long will it take B to catch A?

# The result will be an array [hour, min, sec] which is the time needed in hours, minutes and seconds (round down to the nearest second) or a string in some languages.



def race(v1, v2, g)
    # your code
    h = 0
    m = 0
    s = 0
    v1ps = v1.to_f / 3600
    v2ps = v2.to_f / 3600
    total_time = g / (v2ps - v1ps)

    hour = total_time / 3600
    if hour >= 1
      h = hour.floor 
      total_time -= hour.floor * 3600
    end

    mins = total_time / 60
    if mins >= 1
      m = mins.floor 
      total_time = (total_time - (mins.floor * 60))
    end

    s = (total_time % 60).floor
    result = [h, m, s]

    result
    
end



p race(720, 850, 70) #, [0, 32, 18]
p race(80, 91, 37) #, [3, 21, 49]
p race(80, 100, 40) #, [2, 0, 0]


